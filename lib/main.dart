import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:hokkori/index.dart';
import 'package:hokkori/login.dart';
import 'package:hokkori/pages/tutorial/tutorial_navigator.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hokkori/utils/user.dart';
import 'package:http/http.dart' as http;

final FlutterAppAuth appAuth = FlutterAppAuth();
const FlutterSecureStorage secureStorage = FlutterSecureStorage();

const auth0Domain =
    isProduction ? 'hokkori-stg.jp.auth0.com' : 'hokkori-dev.jp.auth0.com';
const auth0ClientID = isProduction
    ? 'mC95yrKdVubSfrJjNBUvnMcqHrpLvGIQ'
    : 'P5erAWsGpNGkVo6BhaX2qumufxcO5bwt';
const auth0Audience =
    isProduction ? 'https://hokkori-stg/api' : 'https://hokkori-dev/api';

const auth0RedirectURI = 'com.hokkori.hokkori://login-callback';
const auth0Issuer = 'https://$auth0Domain';

const String getUser = r'''
query User(
  $userID: ID!
) {
  node(id: $userID) {
    ... on User {
      id
      name
      username
      profile
      avatarURL
    }
  }
}
''';

const String updateUser = r'''
mutation updateUser(
  $userID: ID!
  $input: UpdateUserInput!
) {
  updateUser(id: $userID, input: $input) {
    id
    name
    username
    profile
    avatarURL  
  }
}
''';

void main() async {
  // We're using HiveStore for persistence,
  // so we need to initialize Hive.
  await initHiveForFlutter();

  runApp(const ProviderScope(child: MyApp()));
}

const bool isProduction = bool.fromEnvironment('dart.vm.product');
const apiQueryURL = isProduction
    ? 'http://13.231.110.200:8080/query'
    : 'https://fa6d-240f-7a-db47-1-d469-5e2e-180b-5789.ngrok.io/query';
final HttpLink httpLink = HttpLink(
  apiQueryURL,
);

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  String errorMessage = "";
  bool doneTutorial = false;
  late ValueNotifier<GraphQLClient> client;
  late Box box;

  @override
  void initState() {
    initAction();
    super.initState();
  }

  void initAction() async {
    final authLink =
        AuthLink(getToken: () => "Bearer " + ref.watch(accessTokenProvider));
    client = ValueNotifier(
      GraphQLClient(
        link: authLink.concat(httpLink),
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(store: HiveStore()),
      ),
    );

    box = await Hive.openBox('tutorialBox');
    if (box.get('doneTutorial') != true) return;
    setState(() {
      doneTutorial = true;
    });

    final storedRefreshToken = await secureStorage.read(key: 'refresh_token');
    if (storedRefreshToken == null) return;

    ref.watch(isBusyProvider.notifier).state = true;

    try {
      final response = await appAuth.token(TokenRequest(
        auth0ClientID,
        auth0RedirectURI,
        issuer: auth0Issuer,
        refreshToken: storedRefreshToken,
        additionalParameters: {'audience': auth0Audience},
      ));

      secureStorage.write(key: 'refresh_token', value: response!.refreshToken);

      ref.watch(isBusyProvider.notifier).state = false;
      ref.watch(isLoggedInProvider.notifier).state = true;
      ref.watch(accessTokenProvider.notifier).state = response.accessToken!;

      final idToken = parseIdToken(response.idToken!);

      final QueryResult queryResult = await client.value.query(
        QueryOptions(
            fetchPolicy: FetchPolicy.networkOnly,
            document: gql(getUser),
            variables: {
              'userID': idToken["https://hokkori.com/app_metadata"]["hokkoriID"]
            }),
      );

      ref.watch(userProvider.notifier).state = User(
        queryResult.data?['node']['id'],
        queryResult.data?['node']['name'],
        queryResult.data?['node']['username'],
        queryResult.data?['node']['profile'],
        queryResult.data?['node']['avatarURL'],
      );
    } catch (e, s) {
      log('error on refresh token: $e - stack: $s');
      logoutAction();
    }
  }

  Future<void> loginAction() async {
    ref.watch(isBusyProvider.notifier).state = true;

    setState(() {
      errorMessage = '';
    });

    try {
      final AuthorizationTokenResponse? result =
          await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          auth0ClientID,
          auth0RedirectURI,
          issuer: 'https://$auth0Domain',
          scopes: ['openid', 'profile', 'offline_access'],
          promptValues: ['login'],
          additionalParameters: {'audience': auth0Audience},
        ),
      );

      await secureStorage.write(
          key: 'refresh_token', value: result!.refreshToken);

      ref.watch(isBusyProvider.notifier).state = false;
      ref.watch(isLoggedInProvider.notifier).state = true;
      ref.watch(accessTokenProvider.notifier).state = result.accessToken!;

      final idToken = parseIdToken(result.idToken!);

      if (!doneTutorial) {
        final QueryResult mutationResult = await client.value
            .mutate(MutationOptions(document: gql(updateUser), variables: {
          'userID': idToken["https://hokkori.com/app_metadata"]["hokkoriID"],
          'input': {
            'name': ref.watch(tutorialNameProvider),
            'username': ref.watch(tutorialUsernameProvider),
          }
        }));

        ref.watch(userProvider.notifier).state = User(
          mutationResult.data?['updateUser']['id'],
          mutationResult.data?['updateUser']['name'],
          mutationResult.data?['updateUser']['username'],
          mutationResult.data?['updateUser']['profile'],
          mutationResult.data?['updateUser']['avatarURL'],
        );
        box.put('doneTutorial', true);
        return;
      }

      final QueryResult queryResult = await client.value.query(
        QueryOptions(
            fetchPolicy: FetchPolicy.networkOnly,
            document: gql(getUser),
            variables: {
              'userID': idToken["https://hokkori.com/app_metadata"]["hokkoriID"]
            }),
      );

      ref.watch(userProvider.notifier).state = User(
        queryResult.data?['node']['id'],
        queryResult.data?['node']['name'],
        queryResult.data?['node']['username'],
        queryResult.data?['node']['profile'],
        queryResult.data?['node']['avatarURL'],
      );
    } catch (e, s) {
      log('login error: $e - stack: $s');

      ref.watch(isBusyProvider.notifier).state = false;
      ref.watch(isLoggedInProvider.notifier).state = false;

      setState(() {
        errorMessage = s.toString();
      });
    }
  }

  void logoutAction() async {
    await secureStorage.delete(key: 'refresh_token');
    ref.watch(isLoggedInProvider.notifier).state = false;
    ref.watch(isBusyProvider.notifier).state = false;
  }

  Map<String, dynamic> parseIdToken(String idToken) {
    final parts = idToken.split(r'.');
    assert(parts.length == 3);

    return jsonDecode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
  }

  Future<Map<String, dynamic>> getUserDetails(String accessToken) async {
    final response = await http.get(
      Uri.https(auth0Domain, "/userinfo"),
      headers: {'Authorization': 'Bearer $accessToken'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to get user details');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
        client: client,
        child: MaterialApp(
            title: 'Hokkori',
            theme: ThemeData(
                // This is the theme of your application.
                //
                // Try running your application with "flutter run". You'll see the
                // application has a blue toolbar. Then, without quitting the app, try
                // changing the primarySwatch below to Colors.green and then invoke
                // "hot reload" (press "r" in the console where you ran "flutter run",
                // or simply save your changes to "hot reload" in a Flutter IDE).
                // Notice that the counter didn't reset back to zero; the application
                // is not restarted.
                primarySwatch: Colors.blue,
                fontFamily: 'Zen Kaku Gothic New'),
            home: ref.watch(isBusyProvider)
                ? const Center(child: CircularProgressIndicator())
                : ref.watch(isLoggedInProvider)
                    ? const Index(title: 'ほっこり')
                    : doneTutorial
                        ? Login(
                            loginAction: loginAction,
                            loginError: errorMessage,
                          )
                        : TutorialNavigator(loginAction: loginAction)));
  }
}
