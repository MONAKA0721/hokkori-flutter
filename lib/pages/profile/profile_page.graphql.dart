import '../../graphql/ent.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Profile {
  factory Variables$Query$Profile({required String userID}) =>
      Variables$Query$Profile._({
        r'userID': userID,
      });

  Variables$Query$Profile._(this._$data);

  factory Variables$Query$Profile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    return Variables$Query$Profile._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userID => (_$data['userID'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userID = userID;
    result$data['userID'] = l$userID;
    return result$data;
  }

  CopyWith$Variables$Query$Profile<Variables$Query$Profile> get copyWith =>
      CopyWith$Variables$Query$Profile(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userID = userID;
    return Object.hashAll([l$userID]);
  }
}

abstract class CopyWith$Variables$Query$Profile<TRes> {
  factory CopyWith$Variables$Query$Profile(Variables$Query$Profile instance,
          TRes Function(Variables$Query$Profile) then) =
      _CopyWithImpl$Variables$Query$Profile;

  factory CopyWith$Variables$Query$Profile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Profile;

  TRes call({String? userID});
}

class _CopyWithImpl$Variables$Query$Profile<TRes>
    implements CopyWith$Variables$Query$Profile<TRes> {
  _CopyWithImpl$Variables$Query$Profile(this._instance, this._then);

  final Variables$Query$Profile _instance;

  final TRes Function(Variables$Query$Profile) _then;

  static const _undefined = {};

  TRes call({Object? userID = _undefined}) => _then(Variables$Query$Profile._({
        ..._instance._$data,
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Profile<TRes>
    implements CopyWith$Variables$Query$Profile<TRes> {
  _CopyWithStubImpl$Variables$Query$Profile(this._res);

  TRes _res;

  call({String? userID}) => _res;
}

class Query$Profile {
  Query$Profile({this.user, required this.$__typename});

  factory Query$Profile.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Profile(
        user: l$user == null
            ? null
            : Query$Profile$user.fromJson((l$user as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Query$Profile$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile on Query$Profile {
  CopyWith$Query$Profile<Query$Profile> get copyWith =>
      CopyWith$Query$Profile(this, (i) => i);
}

abstract class CopyWith$Query$Profile<TRes> {
  factory CopyWith$Query$Profile(
          Query$Profile instance, TRes Function(Query$Profile) then) =
      _CopyWithImpl$Query$Profile;

  factory CopyWith$Query$Profile.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile;

  TRes call({Query$Profile$user? user, String? $__typename});
  CopyWith$Query$Profile$user<TRes> get user;
}

class _CopyWithImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithImpl$Query$Profile(this._instance, this._then);

  final Query$Profile _instance;

  final TRes Function(Query$Profile) _then;

  static const _undefined = {};

  TRes call({Object? user = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Profile(
          user: user == _undefined
              ? _instance.user
              : (user as Query$Profile$user?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$Profile$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$Profile$user.stub(_then(_instance))
        : CopyWith$Query$Profile$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithStubImpl$Query$Profile(this._res);

  TRes _res;

  call({Query$Profile$user? user, String? $__typename}) => _res;
  CopyWith$Query$Profile$user<TRes> get user =>
      CopyWith$Query$Profile$user.stub(_res);
}

const documentNodeQueryProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Profile'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userID')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'node'),
            alias: NameNode(value: 'user'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'userID')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'User'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'profile'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'avatarURL'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'posts'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'followers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'following'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$Profile _parserFn$Query$Profile(Map<String, dynamic> data) =>
    Query$Profile.fromJson(data);

class Options$Query$Profile extends graphql.QueryOptions<Query$Profile> {
  Options$Query$Profile(
      {String? operationName,
      required Variables$Query$Profile variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryProfile,
            parserFn: _parserFn$Query$Profile);
}

class WatchOptions$Query$Profile
    extends graphql.WatchQueryOptions<Query$Profile> {
  WatchOptions$Query$Profile(
      {String? operationName,
      required Variables$Query$Profile variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryProfile,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$Profile);
}

class FetchMoreOptions$Query$Profile extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Profile(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$Profile variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryProfile);
}

extension ClientExtension$Query$Profile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Profile>> query$Profile(
          Options$Query$Profile options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Profile> watchQuery$Profile(
          WatchOptions$Query$Profile options) =>
      this.watchQuery(options);
  void writeQuery$Profile(
          {required Query$Profile data,
          required Variables$Query$Profile variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryProfile),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$Profile? readQuery$Profile(
      {required Variables$Query$Profile variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryProfile),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$Profile.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Profile> useQuery$Profile(
        Options$Query$Profile options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Profile> useWatchQuery$Profile(
        WatchOptions$Query$Profile options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Profile$Widget extends graphql_flutter.Query<Query$Profile> {
  Query$Profile$Widget(
      {widgets.Key? key,
      required Options$Query$Profile options,
      required graphql_flutter.QueryBuilder<Query$Profile> builder})
      : super(key: key, options: options, builder: builder);
}

class Query$Profile$user {
  Query$Profile$user({required this.$__typename});

  factory Query$Profile$user.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "User":
        return Query$Profile$user$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Profile$user($__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile$user) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$user on Query$Profile$user {
  CopyWith$Query$Profile$user<Query$Profile$user> get copyWith =>
      CopyWith$Query$Profile$user(this, (i) => i);
}

abstract class CopyWith$Query$Profile$user<TRes> {
  factory CopyWith$Query$Profile$user(
          Query$Profile$user instance, TRes Function(Query$Profile$user) then) =
      _CopyWithImpl$Query$Profile$user;

  factory CopyWith$Query$Profile$user.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$user;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Profile$user<TRes>
    implements CopyWith$Query$Profile$user<TRes> {
  _CopyWithImpl$Query$Profile$user(this._instance, this._then);

  final Query$Profile$user _instance;

  final TRes Function(Query$Profile$user) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) => _then(Query$Profile$user(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Profile$user<TRes>
    implements CopyWith$Query$Profile$user<TRes> {
  _CopyWithStubImpl$Query$Profile$user(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Profile$user$$User implements Query$Profile$user {
  Query$Profile$user$$User(
      {required this.$__typename,
      required this.id,
      required this.name,
      this.username,
      this.profile,
      this.avatarURL,
      this.posts,
      this.followers,
      this.following});

  factory Query$Profile$user$$User.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$username = json['username'];
    final l$profile = json['profile'];
    final l$avatarURL = json['avatarURL'];
    final l$posts = json['posts'];
    final l$followers = json['followers'];
    final l$following = json['following'];
    return Query$Profile$user$$User(
        $__typename: (l$$__typename as String),
        id: (l$id as String),
        name: (l$name as String),
        username: (l$username as String?),
        profile: (l$profile as String?),
        avatarURL: (l$avatarURL as String?),
        posts: (l$posts as List<dynamic>?)
            ?.map((e) => Query$Profile$user$$User$posts.fromJson(
                (e as Map<String, dynamic>)))
            .toList(),
        followers: (l$followers as List<dynamic>?)
            ?.map((e) => Query$Profile$user$$User$followers.fromJson(
                (e as Map<String, dynamic>)))
            .toList(),
        following: (l$following as List<dynamic>?)
            ?.map((e) => Query$Profile$user$$User$following.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final String $__typename;

  final String id;

  final String name;

  final String? username;

  final String? profile;

  final String? avatarURL;

  final List<Query$Profile$user$$User$posts>? posts;

  final List<Query$Profile$user$$User$followers>? followers;

  final List<Query$Profile$user$$User$following>? following;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$profile = profile;
    _resultData['profile'] = l$profile;
    final l$avatarURL = avatarURL;
    _resultData['avatarURL'] = l$avatarURL;
    final l$posts = posts;
    _resultData['posts'] = l$posts?.map((e) => e.toJson()).toList();
    final l$followers = followers;
    _resultData['followers'] = l$followers?.map((e) => e.toJson()).toList();
    final l$following = following;
    _resultData['following'] = l$following?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$name = name;
    final l$username = username;
    final l$profile = profile;
    final l$avatarURL = avatarURL;
    final l$posts = posts;
    final l$followers = followers;
    final l$following = following;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$name,
      l$username,
      l$profile,
      l$avatarURL,
      l$posts == null ? null : Object.hashAll(l$posts.map((v) => v)),
      l$followers == null ? null : Object.hashAll(l$followers.map((v) => v)),
      l$following == null ? null : Object.hashAll(l$following.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile$user$$User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) {
      return false;
    }
    final l$avatarURL = avatarURL;
    final lOther$avatarURL = other.avatarURL;
    if (l$avatarURL != lOther$avatarURL) {
      return false;
    }
    final l$posts = posts;
    final lOther$posts = other.posts;
    if (l$posts != null && lOther$posts != null) {
      if (l$posts.length != lOther$posts.length) {
        return false;
      }
      for (int i = 0; i < l$posts.length; i++) {
        final l$posts$entry = l$posts[i];
        final lOther$posts$entry = lOther$posts[i];
        if (l$posts$entry != lOther$posts$entry) {
          return false;
        }
      }
    } else if (l$posts != lOther$posts) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != null && lOther$followers != null) {
      if (l$followers.length != lOther$followers.length) {
        return false;
      }
      for (int i = 0; i < l$followers.length; i++) {
        final l$followers$entry = l$followers[i];
        final lOther$followers$entry = lOther$followers[i];
        if (l$followers$entry != lOther$followers$entry) {
          return false;
        }
      }
    } else if (l$followers != lOther$followers) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != null && lOther$following != null) {
      if (l$following.length != lOther$following.length) {
        return false;
      }
      for (int i = 0; i < l$following.length; i++) {
        final l$following$entry = l$following[i];
        final lOther$following$entry = lOther$following[i];
        if (l$following$entry != lOther$following$entry) {
          return false;
        }
      }
    } else if (l$following != lOther$following) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$user$$User
    on Query$Profile$user$$User {
  CopyWith$Query$Profile$user$$User<Query$Profile$user$$User> get copyWith =>
      CopyWith$Query$Profile$user$$User(this, (i) => i);
}

abstract class CopyWith$Query$Profile$user$$User<TRes> {
  factory CopyWith$Query$Profile$user$$User(Query$Profile$user$$User instance,
          TRes Function(Query$Profile$user$$User) then) =
      _CopyWithImpl$Query$Profile$user$$User;

  factory CopyWith$Query$Profile$user$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$user$$User;

  TRes call(
      {String? $__typename,
      String? id,
      String? name,
      String? username,
      String? profile,
      String? avatarURL,
      List<Query$Profile$user$$User$posts>? posts,
      List<Query$Profile$user$$User$followers>? followers,
      List<Query$Profile$user$$User$following>? following});
  TRes posts(
      Iterable<Query$Profile$user$$User$posts>? Function(
              Iterable<
                  CopyWith$Query$Profile$user$$User$posts<
                      Query$Profile$user$$User$posts>>?)
          _fn);
  TRes followers(
      Iterable<Query$Profile$user$$User$followers>? Function(
              Iterable<
                  CopyWith$Query$Profile$user$$User$followers<
                      Query$Profile$user$$User$followers>>?)
          _fn);
  TRes following(
      Iterable<Query$Profile$user$$User$following>? Function(
              Iterable<
                  CopyWith$Query$Profile$user$$User$following<
                      Query$Profile$user$$User$following>>?)
          _fn);
}

class _CopyWithImpl$Query$Profile$user$$User<TRes>
    implements CopyWith$Query$Profile$user$$User<TRes> {
  _CopyWithImpl$Query$Profile$user$$User(this._instance, this._then);

  final Query$Profile$user$$User _instance;

  final TRes Function(Query$Profile$user$$User) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? name = _undefined,
          Object? username = _undefined,
          Object? profile = _undefined,
          Object? avatarURL = _undefined,
          Object? posts = _undefined,
          Object? followers = _undefined,
          Object? following = _undefined}) =>
      _then(Query$Profile$user$$User(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          username: username == _undefined
              ? _instance.username
              : (username as String?),
          profile:
              profile == _undefined ? _instance.profile : (profile as String?),
          avatarURL: avatarURL == _undefined
              ? _instance.avatarURL
              : (avatarURL as String?),
          posts: posts == _undefined
              ? _instance.posts
              : (posts as List<Query$Profile$user$$User$posts>?),
          followers: followers == _undefined
              ? _instance.followers
              : (followers as List<Query$Profile$user$$User$followers>?),
          following: following == _undefined
              ? _instance.following
              : (following as List<Query$Profile$user$$User$following>?)));
  TRes posts(
          Iterable<Query$Profile$user$$User$posts>? Function(
                  Iterable<
                      CopyWith$Query$Profile$user$$User$posts<
                          Query$Profile$user$$User$posts>>?)
              _fn) =>
      call(
          posts: _fn(_instance.posts?.map(
                  (e) => CopyWith$Query$Profile$user$$User$posts(e, (i) => i)))
              ?.toList());
  TRes followers(
          Iterable<Query$Profile$user$$User$followers>? Function(
                  Iterable<
                      CopyWith$Query$Profile$user$$User$followers<
                          Query$Profile$user$$User$followers>>?)
              _fn) =>
      call(
          followers: _fn(_instance.followers?.map((e) =>
                  CopyWith$Query$Profile$user$$User$followers(e, (i) => i)))
              ?.toList());
  TRes following(
          Iterable<Query$Profile$user$$User$following>? Function(
                  Iterable<
                      CopyWith$Query$Profile$user$$User$following<
                          Query$Profile$user$$User$following>>?)
              _fn) =>
      call(
          following: _fn(_instance.following?.map((e) =>
                  CopyWith$Query$Profile$user$$User$following(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Query$Profile$user$$User<TRes>
    implements CopyWith$Query$Profile$user$$User<TRes> {
  _CopyWithStubImpl$Query$Profile$user$$User(this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? name,
          String? username,
          String? profile,
          String? avatarURL,
          List<Query$Profile$user$$User$posts>? posts,
          List<Query$Profile$user$$User$followers>? followers,
          List<Query$Profile$user$$User$following>? following}) =>
      _res;
  posts(_fn) => _res;
  followers(_fn) => _res;
  following(_fn) => _res;
}

class Query$Profile$user$$User$posts {
  Query$Profile$user$$User$posts({required this.id, required this.$__typename});

  factory Query$Profile$user$$User$posts.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Profile$user$$User$posts(
        id: (l$id as String), $__typename: (l$$__typename as String));
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile$user$$User$posts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$user$$User$posts
    on Query$Profile$user$$User$posts {
  CopyWith$Query$Profile$user$$User$posts<Query$Profile$user$$User$posts>
      get copyWith => CopyWith$Query$Profile$user$$User$posts(this, (i) => i);
}

abstract class CopyWith$Query$Profile$user$$User$posts<TRes> {
  factory CopyWith$Query$Profile$user$$User$posts(
          Query$Profile$user$$User$posts instance,
          TRes Function(Query$Profile$user$$User$posts) then) =
      _CopyWithImpl$Query$Profile$user$$User$posts;

  factory CopyWith$Query$Profile$user$$User$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$user$$User$posts;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Query$Profile$user$$User$posts<TRes>
    implements CopyWith$Query$Profile$user$$User$posts<TRes> {
  _CopyWithImpl$Query$Profile$user$$User$posts(this._instance, this._then);

  final Query$Profile$user$$User$posts _instance;

  final TRes Function(Query$Profile$user$$User$posts) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Profile$user$$User$posts(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Profile$user$$User$posts<TRes>
    implements CopyWith$Query$Profile$user$$User$posts<TRes> {
  _CopyWithStubImpl$Query$Profile$user$$User$posts(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

class Query$Profile$user$$User$followers {
  Query$Profile$user$$User$followers(
      {required this.id, required this.$__typename});

  factory Query$Profile$user$$User$followers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Profile$user$$User$followers(
        id: (l$id as String), $__typename: (l$$__typename as String));
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile$user$$User$followers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$user$$User$followers
    on Query$Profile$user$$User$followers {
  CopyWith$Query$Profile$user$$User$followers<
          Query$Profile$user$$User$followers>
      get copyWith =>
          CopyWith$Query$Profile$user$$User$followers(this, (i) => i);
}

abstract class CopyWith$Query$Profile$user$$User$followers<TRes> {
  factory CopyWith$Query$Profile$user$$User$followers(
          Query$Profile$user$$User$followers instance,
          TRes Function(Query$Profile$user$$User$followers) then) =
      _CopyWithImpl$Query$Profile$user$$User$followers;

  factory CopyWith$Query$Profile$user$$User$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$user$$User$followers;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Query$Profile$user$$User$followers<TRes>
    implements CopyWith$Query$Profile$user$$User$followers<TRes> {
  _CopyWithImpl$Query$Profile$user$$User$followers(this._instance, this._then);

  final Query$Profile$user$$User$followers _instance;

  final TRes Function(Query$Profile$user$$User$followers) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Profile$user$$User$followers(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Profile$user$$User$followers<TRes>
    implements CopyWith$Query$Profile$user$$User$followers<TRes> {
  _CopyWithStubImpl$Query$Profile$user$$User$followers(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

class Query$Profile$user$$User$following {
  Query$Profile$user$$User$following(
      {required this.id, required this.$__typename});

  factory Query$Profile$user$$User$following.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Profile$user$$User$following(
        id: (l$id as String), $__typename: (l$$__typename as String));
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile$user$$User$following) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$user$$User$following
    on Query$Profile$user$$User$following {
  CopyWith$Query$Profile$user$$User$following<
          Query$Profile$user$$User$following>
      get copyWith =>
          CopyWith$Query$Profile$user$$User$following(this, (i) => i);
}

abstract class CopyWith$Query$Profile$user$$User$following<TRes> {
  factory CopyWith$Query$Profile$user$$User$following(
          Query$Profile$user$$User$following instance,
          TRes Function(Query$Profile$user$$User$following) then) =
      _CopyWithImpl$Query$Profile$user$$User$following;

  factory CopyWith$Query$Profile$user$$User$following.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$user$$User$following;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Query$Profile$user$$User$following<TRes>
    implements CopyWith$Query$Profile$user$$User$following<TRes> {
  _CopyWithImpl$Query$Profile$user$$User$following(this._instance, this._then);

  final Query$Profile$user$$User$following _instance;

  final TRes Function(Query$Profile$user$$User$following) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Profile$user$$User$following(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Profile$user$$User$following<TRes>
    implements CopyWith$Query$Profile$user$$User$following<TRes> {
  _CopyWithStubImpl$Query$Profile$user$$User$following(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

class Variables$Mutation$UpdateUser {
  factory Variables$Mutation$UpdateUser(
          {required String userID, required Input$UpdateUserInput input}) =>
      Variables$Mutation$UpdateUser._({
        r'userID': userID,
        r'input': input,
      });

  Variables$Mutation$UpdateUser._(this._$data);

  factory Variables$Mutation$UpdateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    final l$input = data['input'];
    result$data['input'] =
        Input$UpdateUserInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userID => (_$data['userID'] as String);
  Input$UpdateUserInput get input => (_$data['input'] as Input$UpdateUserInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userID = userID;
    result$data['userID'] = l$userID;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUser<Variables$Mutation$UpdateUser>
      get copyWith => CopyWith$Variables$Mutation$UpdateUser(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userID = userID;
    final l$input = input;
    return Object.hashAll([l$userID, l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateUser<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUser(
          Variables$Mutation$UpdateUser instance,
          TRes Function(Variables$Mutation$UpdateUser) then) =
      _CopyWithImpl$Variables$Mutation$UpdateUser;

  factory CopyWith$Variables$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUser;

  TRes call({String? userID, Input$UpdateUserInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUser(this._instance, this._then);

  final Variables$Mutation$UpdateUser _instance;

  final TRes Function(Variables$Mutation$UpdateUser) _then;

  static const _undefined = {};

  TRes call({Object? userID = _undefined, Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateUser._({
        ..._instance._$data,
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateUserInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  TRes _res;

  call({String? userID, Input$UpdateUserInput? input}) => _res;
}

class Mutation$UpdateUser {
  Mutation$UpdateUser({required this.updateUser, required this.$__typename});

  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser(
        updateUser: Mutation$UpdateUser$updateUser.fromJson(
            (l$updateUser as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Mutation$UpdateUser$updateUser updateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    _resultData['updateUser'] = l$updateUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateUser on Mutation$UpdateUser {
  CopyWith$Mutation$UpdateUser<Mutation$UpdateUser> get copyWith =>
      CopyWith$Mutation$UpdateUser(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser(Mutation$UpdateUser instance,
          TRes Function(Mutation$UpdateUser) then) =
      _CopyWithImpl$Mutation$UpdateUser;

  factory CopyWith$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser;

  TRes call({Mutation$UpdateUser$updateUser? updateUser, String? $__typename});
  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser;
}

class _CopyWithImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser(this._instance, this._then);

  final Mutation$UpdateUser _instance;

  final TRes Function(Mutation$UpdateUser) _then;

  static const _undefined = {};

  TRes call(
          {Object? updateUser = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateUser(
          updateUser: updateUser == _undefined || updateUser == null
              ? _instance.updateUser
              : (updateUser as Mutation$UpdateUser$updateUser),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser {
    final local$updateUser = _instance.updateUser;
    return CopyWith$Mutation$UpdateUser$updateUser(
        local$updateUser, (e) => call(updateUser: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser(this._res);

  TRes _res;

  call({Mutation$UpdateUser$updateUser? updateUser, String? $__typename}) =>
      _res;
  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser =>
      CopyWith$Mutation$UpdateUser$updateUser.stub(_res);
}

const documentNodeMutationUpdateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userID')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'UpdateUserInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'userID'))),
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'username'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'profile'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'avatarURL'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Mutation$UpdateUser _parserFn$Mutation$UpdateUser(Map<String, dynamic> data) =>
    Mutation$UpdateUser.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateUser = FutureOr<void> Function(
    dynamic, Mutation$UpdateUser?);

class Options$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  Options$Mutation$UpdateUser(
      {String? operationName,
      required Variables$Mutation$UpdateUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdateUser? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$UpdateUser(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUpdateUser,
            parserFn: _parserFn$Mutation$UpdateUser);

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UpdateUser
    extends graphql.WatchQueryOptions<Mutation$UpdateUser> {
  WatchOptions$Mutation$UpdateUser(
      {String? operationName,
      required Variables$Mutation$UpdateUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeMutationUpdateUser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UpdateUser);
}

extension ClientExtension$Mutation$UpdateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateUser>> mutate$UpdateUser(
          Options$Mutation$UpdateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateUser> watchMutation$UpdateUser(
          WatchOptions$Mutation$UpdateUser options) =>
      this.watchMutation(options);
}

class Mutation$UpdateUser$HookResult {
  Mutation$UpdateUser$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UpdateUser runMutation;

  final graphql.QueryResult<Mutation$UpdateUser> result;
}

Mutation$UpdateUser$HookResult useMutation$UpdateUser(
    [WidgetOptions$Mutation$UpdateUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateUser());
  return Mutation$UpdateUser$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateUser> useWatchMutation$UpdateUser(
        WatchOptions$Mutation$UpdateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  WidgetOptions$Mutation$UpdateUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdateUser? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$UpdateUser(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUpdateUser,
            parserFn: _parserFn$Mutation$UpdateUser);

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$UpdateUser
    = graphql.MultiSourceResult<Mutation$UpdateUser>
        Function(Variables$Mutation$UpdateUser, {Object? optimisticResult});
typedef Builder$Mutation$UpdateUser = widgets.Widget Function(
    RunMutation$Mutation$UpdateUser, graphql.QueryResult<Mutation$UpdateUser>?);

class Mutation$UpdateUser$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateUser> {
  Mutation$UpdateUser$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$UpdateUser? options,
      required Builder$Mutation$UpdateUser builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$UpdateUser(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

class Mutation$UpdateUser$updateUser {
  Mutation$UpdateUser$updateUser(
      {required this.id,
      required this.name,
      this.username,
      this.profile,
      this.avatarURL,
      required this.$__typename});

  factory Mutation$UpdateUser$updateUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$username = json['username'];
    final l$profile = json['profile'];
    final l$avatarURL = json['avatarURL'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser(
        id: (l$id as String),
        name: (l$name as String),
        username: (l$username as String?),
        profile: (l$profile as String?),
        avatarURL: (l$avatarURL as String?),
        $__typename: (l$$__typename as String));
  }

  final String id;

  final String name;

  final String? username;

  final String? profile;

  final String? avatarURL;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$profile = profile;
    _resultData['profile'] = l$profile;
    final l$avatarURL = avatarURL;
    _resultData['avatarURL'] = l$avatarURL;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$username = username;
    final l$profile = profile;
    final l$avatarURL = avatarURL;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$name, l$username, l$profile, l$avatarURL, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUser$updateUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) {
      return false;
    }
    final l$avatarURL = avatarURL;
    final lOther$avatarURL = other.avatarURL;
    if (l$avatarURL != lOther$avatarURL) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateUser$updateUser
    on Mutation$UpdateUser$updateUser {
  CopyWith$Mutation$UpdateUser$updateUser<Mutation$UpdateUser$updateUser>
      get copyWith => CopyWith$Mutation$UpdateUser$updateUser(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser(
          Mutation$UpdateUser$updateUser instance,
          TRes Function(Mutation$UpdateUser$updateUser) then) =
      _CopyWithImpl$Mutation$UpdateUser$updateUser;

  factory CopyWith$Mutation$UpdateUser$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser$updateUser;

  TRes call(
      {String? id,
      String? name,
      String? username,
      String? profile,
      String? avatarURL,
      String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser(this._instance, this._then);

  final Mutation$UpdateUser$updateUser _instance;

  final TRes Function(Mutation$UpdateUser$updateUser) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? username = _undefined,
          Object? profile = _undefined,
          Object? avatarURL = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateUser$updateUser(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          username: username == _undefined
              ? _instance.username
              : (username as String?),
          profile:
              profile == _undefined ? _instance.profile : (profile as String?),
          avatarURL: avatarURL == _undefined
              ? _instance.avatarURL
              : (avatarURL as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser(this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          String? username,
          String? profile,
          String? avatarURL,
          String? $__typename}) =>
      _res;
}

class Variables$Mutation$FollowUser {
  factory Variables$Mutation$FollowUser(
          {required Input$FollowUserInput input}) =>
      Variables$Mutation$FollowUser._({
        r'input': input,
      });

  Variables$Mutation$FollowUser._(this._$data);

  factory Variables$Mutation$FollowUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$FollowUserInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$FollowUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FollowUserInput get input => (_$data['input'] as Input$FollowUserInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$FollowUser<Variables$Mutation$FollowUser>
      get copyWith => CopyWith$Variables$Mutation$FollowUser(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$FollowUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$FollowUser<TRes> {
  factory CopyWith$Variables$Mutation$FollowUser(
          Variables$Mutation$FollowUser instance,
          TRes Function(Variables$Mutation$FollowUser) then) =
      _CopyWithImpl$Variables$Mutation$FollowUser;

  factory CopyWith$Variables$Mutation$FollowUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FollowUser;

  TRes call({Input$FollowUserInput? input});
}

class _CopyWithImpl$Variables$Mutation$FollowUser<TRes>
    implements CopyWith$Variables$Mutation$FollowUser<TRes> {
  _CopyWithImpl$Variables$Mutation$FollowUser(this._instance, this._then);

  final Variables$Mutation$FollowUser _instance;

  final TRes Function(Variables$Mutation$FollowUser) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$FollowUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$FollowUserInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FollowUser<TRes>
    implements CopyWith$Variables$Mutation$FollowUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FollowUser(this._res);

  TRes _res;

  call({Input$FollowUserInput? input}) => _res;
}

class Mutation$FollowUser {
  Mutation$FollowUser({required this.action, required this.$__typename});

  factory Mutation$FollowUser.fromJson(Map<String, dynamic> json) {
    final l$action = json['action'];
    final l$$__typename = json['__typename'];
    return Mutation$FollowUser(
        action: Mutation$FollowUser$action.fromJson(
            (l$action as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Mutation$FollowUser$action action;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$action = action;
    _resultData['action'] = l$action.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$action = action;
    final l$$__typename = $__typename;
    return Object.hashAll([l$action, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FollowUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FollowUser on Mutation$FollowUser {
  CopyWith$Mutation$FollowUser<Mutation$FollowUser> get copyWith =>
      CopyWith$Mutation$FollowUser(this, (i) => i);
}

abstract class CopyWith$Mutation$FollowUser<TRes> {
  factory CopyWith$Mutation$FollowUser(Mutation$FollowUser instance,
          TRes Function(Mutation$FollowUser) then) =
      _CopyWithImpl$Mutation$FollowUser;

  factory CopyWith$Mutation$FollowUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FollowUser;

  TRes call({Mutation$FollowUser$action? action, String? $__typename});
  CopyWith$Mutation$FollowUser$action<TRes> get action;
}

class _CopyWithImpl$Mutation$FollowUser<TRes>
    implements CopyWith$Mutation$FollowUser<TRes> {
  _CopyWithImpl$Mutation$FollowUser(this._instance, this._then);

  final Mutation$FollowUser _instance;

  final TRes Function(Mutation$FollowUser) _then;

  static const _undefined = {};

  TRes call({Object? action = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$FollowUser(
          action: action == _undefined || action == null
              ? _instance.action
              : (action as Mutation$FollowUser$action),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$FollowUser$action<TRes> get action {
    final local$action = _instance.action;
    return CopyWith$Mutation$FollowUser$action(
        local$action, (e) => call(action: e));
  }
}

class _CopyWithStubImpl$Mutation$FollowUser<TRes>
    implements CopyWith$Mutation$FollowUser<TRes> {
  _CopyWithStubImpl$Mutation$FollowUser(this._res);

  TRes _res;

  call({Mutation$FollowUser$action? action, String? $__typename}) => _res;
  CopyWith$Mutation$FollowUser$action<TRes> get action =>
      CopyWith$Mutation$FollowUser$action.stub(_res);
}

const documentNodeMutationFollowUser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'FollowUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'FollowUserInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'followUser'),
            alias: NameNode(value: 'action'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'clientMutationId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Mutation$FollowUser _parserFn$Mutation$FollowUser(Map<String, dynamic> data) =>
    Mutation$FollowUser.fromJson(data);
typedef OnMutationCompleted$Mutation$FollowUser = FutureOr<void> Function(
    dynamic, Mutation$FollowUser?);

class Options$Mutation$FollowUser
    extends graphql.MutationOptions<Mutation$FollowUser> {
  Options$Mutation$FollowUser(
      {String? operationName,
      required Variables$Mutation$FollowUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$FollowUser? onCompleted,
      graphql.OnMutationUpdate<Mutation$FollowUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$FollowUser(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationFollowUser,
            parserFn: _parserFn$Mutation$FollowUser);

  final OnMutationCompleted$Mutation$FollowUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$FollowUser
    extends graphql.WatchQueryOptions<Mutation$FollowUser> {
  WatchOptions$Mutation$FollowUser(
      {String? operationName,
      required Variables$Mutation$FollowUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeMutationFollowUser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$FollowUser);
}

extension ClientExtension$Mutation$FollowUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FollowUser>> mutate$FollowUser(
          Options$Mutation$FollowUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$FollowUser> watchMutation$FollowUser(
          WatchOptions$Mutation$FollowUser options) =>
      this.watchMutation(options);
}

class Mutation$FollowUser$HookResult {
  Mutation$FollowUser$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$FollowUser runMutation;

  final graphql.QueryResult<Mutation$FollowUser> result;
}

Mutation$FollowUser$HookResult useMutation$FollowUser(
    [WidgetOptions$Mutation$FollowUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$FollowUser());
  return Mutation$FollowUser$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$FollowUser> useWatchMutation$FollowUser(
        WatchOptions$Mutation$FollowUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$FollowUser
    extends graphql.MutationOptions<Mutation$FollowUser> {
  WidgetOptions$Mutation$FollowUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$FollowUser? onCompleted,
      graphql.OnMutationUpdate<Mutation$FollowUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$FollowUser(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationFollowUser,
            parserFn: _parserFn$Mutation$FollowUser);

  final OnMutationCompleted$Mutation$FollowUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$FollowUser
    = graphql.MultiSourceResult<Mutation$FollowUser>
        Function(Variables$Mutation$FollowUser, {Object? optimisticResult});
typedef Builder$Mutation$FollowUser = widgets.Widget Function(
    RunMutation$Mutation$FollowUser, graphql.QueryResult<Mutation$FollowUser>?);

class Mutation$FollowUser$Widget
    extends graphql_flutter.Mutation<Mutation$FollowUser> {
  Mutation$FollowUser$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$FollowUser? options,
      required Builder$Mutation$FollowUser builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$FollowUser(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

class Mutation$FollowUser$action {
  Mutation$FollowUser$action(
      {this.clientMutationId, this.user, required this.$__typename});

  factory Mutation$FollowUser$action.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$FollowUser$action(
        clientMutationId: (l$clientMutationId as String?),
        user: l$user == null
            ? null
            : Mutation$FollowUser$action$user.fromJson(
                (l$user as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final String? clientMutationId;

  final Mutation$FollowUser$action$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientMutationId = clientMutationId;
    _resultData['clientMutationId'] = l$clientMutationId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$clientMutationId, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FollowUser$action) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FollowUser$action
    on Mutation$FollowUser$action {
  CopyWith$Mutation$FollowUser$action<Mutation$FollowUser$action>
      get copyWith => CopyWith$Mutation$FollowUser$action(this, (i) => i);
}

abstract class CopyWith$Mutation$FollowUser$action<TRes> {
  factory CopyWith$Mutation$FollowUser$action(
          Mutation$FollowUser$action instance,
          TRes Function(Mutation$FollowUser$action) then) =
      _CopyWithImpl$Mutation$FollowUser$action;

  factory CopyWith$Mutation$FollowUser$action.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FollowUser$action;

  TRes call(
      {String? clientMutationId,
      Mutation$FollowUser$action$user? user,
      String? $__typename});
  CopyWith$Mutation$FollowUser$action$user<TRes> get user;
}

class _CopyWithImpl$Mutation$FollowUser$action<TRes>
    implements CopyWith$Mutation$FollowUser$action<TRes> {
  _CopyWithImpl$Mutation$FollowUser$action(this._instance, this._then);

  final Mutation$FollowUser$action _instance;

  final TRes Function(Mutation$FollowUser$action) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? user = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$FollowUser$action(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          user: user == _undefined
              ? _instance.user
              : (user as Mutation$FollowUser$action$user?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$FollowUser$action$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$FollowUser$action$user.stub(_then(_instance))
        : CopyWith$Mutation$FollowUser$action$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$FollowUser$action<TRes>
    implements CopyWith$Mutation$FollowUser$action<TRes> {
  _CopyWithStubImpl$Mutation$FollowUser$action(this._res);

  TRes _res;

  call(
          {String? clientMutationId,
          Mutation$FollowUser$action$user? user,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$FollowUser$action$user<TRes> get user =>
      CopyWith$Mutation$FollowUser$action$user.stub(_res);
}

class Mutation$FollowUser$action$user {
  Mutation$FollowUser$action$user(
      {required this.id, required this.$__typename});

  factory Mutation$FollowUser$action$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$FollowUser$action$user(
        id: (l$id as String), $__typename: (l$$__typename as String));
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FollowUser$action$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FollowUser$action$user
    on Mutation$FollowUser$action$user {
  CopyWith$Mutation$FollowUser$action$user<Mutation$FollowUser$action$user>
      get copyWith => CopyWith$Mutation$FollowUser$action$user(this, (i) => i);
}

abstract class CopyWith$Mutation$FollowUser$action$user<TRes> {
  factory CopyWith$Mutation$FollowUser$action$user(
          Mutation$FollowUser$action$user instance,
          TRes Function(Mutation$FollowUser$action$user) then) =
      _CopyWithImpl$Mutation$FollowUser$action$user;

  factory CopyWith$Mutation$FollowUser$action$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FollowUser$action$user;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$FollowUser$action$user<TRes>
    implements CopyWith$Mutation$FollowUser$action$user<TRes> {
  _CopyWithImpl$Mutation$FollowUser$action$user(this._instance, this._then);

  final Mutation$FollowUser$action$user _instance;

  final TRes Function(Mutation$FollowUser$action$user) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$FollowUser$action$user(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$FollowUser$action$user<TRes>
    implements CopyWith$Mutation$FollowUser$action$user<TRes> {
  _CopyWithStubImpl$Mutation$FollowUser$action$user(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

class Variables$Mutation$UnfollowUser {
  factory Variables$Mutation$UnfollowUser(
          {required Input$UnfollowUserInput input}) =>
      Variables$Mutation$UnfollowUser._({
        r'input': input,
      });

  Variables$Mutation$UnfollowUser._(this._$data);

  factory Variables$Mutation$UnfollowUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UnfollowUserInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UnfollowUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UnfollowUserInput get input =>
      (_$data['input'] as Input$UnfollowUserInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UnfollowUser<Variables$Mutation$UnfollowUser>
      get copyWith => CopyWith$Variables$Mutation$UnfollowUser(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UnfollowUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$UnfollowUser<TRes> {
  factory CopyWith$Variables$Mutation$UnfollowUser(
          Variables$Mutation$UnfollowUser instance,
          TRes Function(Variables$Mutation$UnfollowUser) then) =
      _CopyWithImpl$Variables$Mutation$UnfollowUser;

  factory CopyWith$Variables$Mutation$UnfollowUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnfollowUser;

  TRes call({Input$UnfollowUserInput? input});
}

class _CopyWithImpl$Variables$Mutation$UnfollowUser<TRes>
    implements CopyWith$Variables$Mutation$UnfollowUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UnfollowUser(this._instance, this._then);

  final Variables$Mutation$UnfollowUser _instance;

  final TRes Function(Variables$Mutation$UnfollowUser) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UnfollowUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UnfollowUserInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UnfollowUser<TRes>
    implements CopyWith$Variables$Mutation$UnfollowUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnfollowUser(this._res);

  TRes _res;

  call({Input$UnfollowUserInput? input}) => _res;
}

class Mutation$UnfollowUser {
  Mutation$UnfollowUser({required this.action, required this.$__typename});

  factory Mutation$UnfollowUser.fromJson(Map<String, dynamic> json) {
    final l$action = json['action'];
    final l$$__typename = json['__typename'];
    return Mutation$UnfollowUser(
        action: Mutation$UnfollowUser$action.fromJson(
            (l$action as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Mutation$UnfollowUser$action action;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$action = action;
    _resultData['action'] = l$action.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$action = action;
    final l$$__typename = $__typename;
    return Object.hashAll([l$action, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnfollowUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UnfollowUser on Mutation$UnfollowUser {
  CopyWith$Mutation$UnfollowUser<Mutation$UnfollowUser> get copyWith =>
      CopyWith$Mutation$UnfollowUser(this, (i) => i);
}

abstract class CopyWith$Mutation$UnfollowUser<TRes> {
  factory CopyWith$Mutation$UnfollowUser(Mutation$UnfollowUser instance,
          TRes Function(Mutation$UnfollowUser) then) =
      _CopyWithImpl$Mutation$UnfollowUser;

  factory CopyWith$Mutation$UnfollowUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnfollowUser;

  TRes call({Mutation$UnfollowUser$action? action, String? $__typename});
  CopyWith$Mutation$UnfollowUser$action<TRes> get action;
}

class _CopyWithImpl$Mutation$UnfollowUser<TRes>
    implements CopyWith$Mutation$UnfollowUser<TRes> {
  _CopyWithImpl$Mutation$UnfollowUser(this._instance, this._then);

  final Mutation$UnfollowUser _instance;

  final TRes Function(Mutation$UnfollowUser) _then;

  static const _undefined = {};

  TRes call({Object? action = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$UnfollowUser(
          action: action == _undefined || action == null
              ? _instance.action
              : (action as Mutation$UnfollowUser$action),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UnfollowUser$action<TRes> get action {
    final local$action = _instance.action;
    return CopyWith$Mutation$UnfollowUser$action(
        local$action, (e) => call(action: e));
  }
}

class _CopyWithStubImpl$Mutation$UnfollowUser<TRes>
    implements CopyWith$Mutation$UnfollowUser<TRes> {
  _CopyWithStubImpl$Mutation$UnfollowUser(this._res);

  TRes _res;

  call({Mutation$UnfollowUser$action? action, String? $__typename}) => _res;
  CopyWith$Mutation$UnfollowUser$action<TRes> get action =>
      CopyWith$Mutation$UnfollowUser$action.stub(_res);
}

const documentNodeMutationUnfollowUser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UnfollowUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'UnfollowUserInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'unfollowUser'),
            alias: NameNode(value: 'action'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'clientMutationId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Mutation$UnfollowUser _parserFn$Mutation$UnfollowUser(
        Map<String, dynamic> data) =>
    Mutation$UnfollowUser.fromJson(data);
typedef OnMutationCompleted$Mutation$UnfollowUser = FutureOr<void> Function(
    dynamic, Mutation$UnfollowUser?);

class Options$Mutation$UnfollowUser
    extends graphql.MutationOptions<Mutation$UnfollowUser> {
  Options$Mutation$UnfollowUser(
      {String? operationName,
      required Variables$Mutation$UnfollowUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UnfollowUser? onCompleted,
      graphql.OnMutationUpdate<Mutation$UnfollowUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UnfollowUser(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUnfollowUser,
            parserFn: _parserFn$Mutation$UnfollowUser);

  final OnMutationCompleted$Mutation$UnfollowUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UnfollowUser
    extends graphql.WatchQueryOptions<Mutation$UnfollowUser> {
  WatchOptions$Mutation$UnfollowUser(
      {String? operationName,
      required Variables$Mutation$UnfollowUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeMutationUnfollowUser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UnfollowUser);
}

extension ClientExtension$Mutation$UnfollowUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UnfollowUser>> mutate$UnfollowUser(
          Options$Mutation$UnfollowUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UnfollowUser> watchMutation$UnfollowUser(
          WatchOptions$Mutation$UnfollowUser options) =>
      this.watchMutation(options);
}

class Mutation$UnfollowUser$HookResult {
  Mutation$UnfollowUser$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UnfollowUser runMutation;

  final graphql.QueryResult<Mutation$UnfollowUser> result;
}

Mutation$UnfollowUser$HookResult useMutation$UnfollowUser(
    [WidgetOptions$Mutation$UnfollowUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UnfollowUser());
  return Mutation$UnfollowUser$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UnfollowUser> useWatchMutation$UnfollowUser(
        WatchOptions$Mutation$UnfollowUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UnfollowUser
    extends graphql.MutationOptions<Mutation$UnfollowUser> {
  WidgetOptions$Mutation$UnfollowUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UnfollowUser? onCompleted,
      graphql.OnMutationUpdate<Mutation$UnfollowUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UnfollowUser(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUnfollowUser,
            parserFn: _parserFn$Mutation$UnfollowUser);

  final OnMutationCompleted$Mutation$UnfollowUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$UnfollowUser
    = graphql.MultiSourceResult<Mutation$UnfollowUser>
        Function(Variables$Mutation$UnfollowUser, {Object? optimisticResult});
typedef Builder$Mutation$UnfollowUser = widgets.Widget Function(
    RunMutation$Mutation$UnfollowUser,
    graphql.QueryResult<Mutation$UnfollowUser>?);

class Mutation$UnfollowUser$Widget
    extends graphql_flutter.Mutation<Mutation$UnfollowUser> {
  Mutation$UnfollowUser$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$UnfollowUser? options,
      required Builder$Mutation$UnfollowUser builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$UnfollowUser(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

class Mutation$UnfollowUser$action {
  Mutation$UnfollowUser$action(
      {this.clientMutationId, this.user, required this.$__typename});

  factory Mutation$UnfollowUser$action.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$UnfollowUser$action(
        clientMutationId: (l$clientMutationId as String?),
        user: l$user == null
            ? null
            : Mutation$UnfollowUser$action$user.fromJson(
                (l$user as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final String? clientMutationId;

  final Mutation$UnfollowUser$action$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientMutationId = clientMutationId;
    _resultData['clientMutationId'] = l$clientMutationId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$clientMutationId, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnfollowUser$action) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UnfollowUser$action
    on Mutation$UnfollowUser$action {
  CopyWith$Mutation$UnfollowUser$action<Mutation$UnfollowUser$action>
      get copyWith => CopyWith$Mutation$UnfollowUser$action(this, (i) => i);
}

abstract class CopyWith$Mutation$UnfollowUser$action<TRes> {
  factory CopyWith$Mutation$UnfollowUser$action(
          Mutation$UnfollowUser$action instance,
          TRes Function(Mutation$UnfollowUser$action) then) =
      _CopyWithImpl$Mutation$UnfollowUser$action;

  factory CopyWith$Mutation$UnfollowUser$action.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnfollowUser$action;

  TRes call(
      {String? clientMutationId,
      Mutation$UnfollowUser$action$user? user,
      String? $__typename});
  CopyWith$Mutation$UnfollowUser$action$user<TRes> get user;
}

class _CopyWithImpl$Mutation$UnfollowUser$action<TRes>
    implements CopyWith$Mutation$UnfollowUser$action<TRes> {
  _CopyWithImpl$Mutation$UnfollowUser$action(this._instance, this._then);

  final Mutation$UnfollowUser$action _instance;

  final TRes Function(Mutation$UnfollowUser$action) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? user = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UnfollowUser$action(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          user: user == _undefined
              ? _instance.user
              : (user as Mutation$UnfollowUser$action$user?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UnfollowUser$action$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$UnfollowUser$action$user.stub(_then(_instance))
        : CopyWith$Mutation$UnfollowUser$action$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$UnfollowUser$action<TRes>
    implements CopyWith$Mutation$UnfollowUser$action<TRes> {
  _CopyWithStubImpl$Mutation$UnfollowUser$action(this._res);

  TRes _res;

  call(
          {String? clientMutationId,
          Mutation$UnfollowUser$action$user? user,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$UnfollowUser$action$user<TRes> get user =>
      CopyWith$Mutation$UnfollowUser$action$user.stub(_res);
}

class Mutation$UnfollowUser$action$user {
  Mutation$UnfollowUser$action$user(
      {required this.id, required this.$__typename});

  factory Mutation$UnfollowUser$action$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UnfollowUser$action$user(
        id: (l$id as String), $__typename: (l$$__typename as String));
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnfollowUser$action$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UnfollowUser$action$user
    on Mutation$UnfollowUser$action$user {
  CopyWith$Mutation$UnfollowUser$action$user<Mutation$UnfollowUser$action$user>
      get copyWith =>
          CopyWith$Mutation$UnfollowUser$action$user(this, (i) => i);
}

abstract class CopyWith$Mutation$UnfollowUser$action$user<TRes> {
  factory CopyWith$Mutation$UnfollowUser$action$user(
          Mutation$UnfollowUser$action$user instance,
          TRes Function(Mutation$UnfollowUser$action$user) then) =
      _CopyWithImpl$Mutation$UnfollowUser$action$user;

  factory CopyWith$Mutation$UnfollowUser$action$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnfollowUser$action$user;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$UnfollowUser$action$user<TRes>
    implements CopyWith$Mutation$UnfollowUser$action$user<TRes> {
  _CopyWithImpl$Mutation$UnfollowUser$action$user(this._instance, this._then);

  final Mutation$UnfollowUser$action$user _instance;

  final TRes Function(Mutation$UnfollowUser$action$user) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$UnfollowUser$action$user(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$UnfollowUser$action$user<TRes>
    implements CopyWith$Mutation$UnfollowUser$action$user<TRes> {
  _CopyWithStubImpl$Mutation$UnfollowUser$action$user(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
