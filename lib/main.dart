import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/home_page.dart';
import 'package:hokkori/login.dart';
import 'package:hokkori/mail_page.dart';
import 'package:hokkori/notification_page.dart';
import 'package:hokkori/post_page.dart';
import 'package:hokkori/search_page.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:http/http.dart' as http;

final FlutterAppAuth appAuth = FlutterAppAuth();
const FlutterSecureStorage secureStorage = FlutterSecureStorage();

const auth0Domain = 'hokkori-dev.jp.auth0.com';
const auth0ClientID = 'P5erAWsGpNGkVo6BhaX2qumufxcO5bwt';

const auth0RedirectURI = 'com.hokkori.hokkori://login-callback';
const auth0Issuer = 'https://$auth0Domain';

final isLoggedInProvider = StateProvider<bool>((ref) => false);
final isBusyProvider = StateProvider<bool>((ref) => false);

void main() async {
  // We're using HiveStore for persistence,
  // so we need to initialize Hive.
  await initHiveForFlutter();

  runApp(const ProviderScope(child: MyApp()));
}

const apiQueryURL = 'http://152.70.81.218:30818/query';
final HttpLink httpLink = HttpLink(
  apiQueryURL,
);

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  String errorMessage = "";

  @override
  void initState() {
    initAction();
    super.initState();
  }

  void initAction() async {
    final storedRefreshToken = await secureStorage.read(key: 'refresh_token');
    if (storedRefreshToken == null) return;

    ref.watch(isBusyProvider.notifier).state = true;

    try {
      final response = await appAuth.token(TokenRequest(
        auth0ClientID,
        auth0RedirectURI,
        issuer: auth0Issuer,
        refreshToken: storedRefreshToken,
        additionalParameters: {'audience': "https://hokkori-dev/api"},
      ));

      // final idToken = parseIdToken(response!.idToken!);
      // final profile = await getUserDetails(response.accessToken!);

      secureStorage.write(key: 'refresh_token', value: response!.refreshToken);

      ref.watch(isBusyProvider.notifier).state = false;
      ref.watch(isLoggedInProvider.notifier).state = true;
    } catch (e, s) {
      log('error on refresh token: $e - stack: $s');
      logoutAction();
    }
  }

  final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

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
          additionalParameters: {'audience': "https://hokkori-dev/api"},
        ),
      );

      // final idToken = parseIdToken(result!.idToken!);
      // final profile = await getUserDetails(result.accessToken!);

      await secureStorage.write(
          key: 'refresh_token', value: result!.refreshToken);

      ref.watch(isBusyProvider.notifier).state = false;
      ref.watch(isLoggedInProvider.notifier).state = true;
    } catch (e, s) {
      log('login error: $e - stack: $s');

      ref.watch(isBusyProvider.notifier).state = false;
      ref.watch(isLoggedInProvider.notifier).state = false;

      setState(() {
        errorMessage = e.toString();
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
            ),
            home: SafeArea(
                child: ref.watch(isBusyProvider)
                    ? const Center(child: CircularProgressIndicator())
                    : ref.watch(isLoggedInProvider)
                        ? const MyHomePage(title: 'ほっこり')
                        : Login(
                            loginAction: loginAction,
                            loginError: errorMessage,
                          ))));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      const HomePageNavigator(),
      const SearchPageNavigator(),
      PostPage(
        navigate: () {
          setState(() {
            _selectedIndex = 0;
          });
        },
      ),
      const MailPage(),
      const NotificationPage(),
    ];

    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: primaryColor.withOpacity(0.3),
        iconSize: 30,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home.svg',
              color: _selectedIndex == 0
                  ? primaryColor
                  : primaryColor.withOpacity(0.3),
            ),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/search.svg',
              color: _selectedIndex == 1
                  ? primaryColor
                  : primaryColor.withOpacity(0.3),
            ),
            label: 'さがす',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/tell.svg',
              color: _selectedIndex == 2
                  ? primaryColor
                  : primaryColor.withOpacity(0.3),
            ),
            label: 'つたえる',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/mail.svg',
              color: _selectedIndex == 3
                  ? primaryColor
                  : primaryColor.withOpacity(0.3),
            ),
            label: 'メール',
          ),
        ],
      ),
    );
  }
}
