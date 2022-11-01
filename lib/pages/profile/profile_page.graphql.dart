import '../../graphql/ent.graphql.dart';
import '../../graphql/schema.graphql.dart';
import '../common/common.graphql.dart';
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

class Variables$Query$PostedWorks {
  factory Variables$Query$PostedWorks({Input$WorkWhereInput? where}) =>
      Variables$Query$PostedWorks._({
        if (where != null) r'where': where,
      });

  Variables$Query$PostedWorks._(this._$data);

  factory Variables$Query$PostedWorks.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$WorkWhereInput.fromJson((l$where as Map<String, dynamic>));
    }
    return Variables$Query$PostedWorks._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$WorkWhereInput? get where => (_$data['where'] as Input$WorkWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$PostedWorks<Variables$Query$PostedWorks>
      get copyWith => CopyWith$Variables$Query$PostedWorks(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PostedWorks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([_$data.containsKey('where') ? l$where : const {}]);
  }
}

abstract class CopyWith$Variables$Query$PostedWorks<TRes> {
  factory CopyWith$Variables$Query$PostedWorks(
          Variables$Query$PostedWorks instance,
          TRes Function(Variables$Query$PostedWorks) then) =
      _CopyWithImpl$Variables$Query$PostedWorks;

  factory CopyWith$Variables$Query$PostedWorks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PostedWorks;

  TRes call({Input$WorkWhereInput? where});
}

class _CopyWithImpl$Variables$Query$PostedWorks<TRes>
    implements CopyWith$Variables$Query$PostedWorks<TRes> {
  _CopyWithImpl$Variables$Query$PostedWorks(this._instance, this._then);

  final Variables$Query$PostedWorks _instance;

  final TRes Function(Variables$Query$PostedWorks) _then;

  static const _undefined = {};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$PostedWorks._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$WorkWhereInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$PostedWorks<TRes>
    implements CopyWith$Variables$Query$PostedWorks<TRes> {
  _CopyWithStubImpl$Variables$Query$PostedWorks(this._res);

  TRes _res;

  call({Input$WorkWhereInput? where}) => _res;
}

class Query$PostedWorks {
  Query$PostedWorks({required this.works, required this.$__typename});

  factory Query$PostedWorks.fromJson(Map<String, dynamic> json) {
    final l$works = json['works'];
    final l$$__typename = json['__typename'];
    return Query$PostedWorks(
        works:
            Query$PostedWorks$works.fromJson((l$works as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Query$PostedWorks$works works;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$works = works;
    _resultData['works'] = l$works.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$works = works;
    final l$$__typename = $__typename;
    return Object.hashAll([l$works, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostedWorks) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$works = works;
    final lOther$works = other.works;
    if (l$works != lOther$works) {
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

extension UtilityExtension$Query$PostedWorks on Query$PostedWorks {
  CopyWith$Query$PostedWorks<Query$PostedWorks> get copyWith =>
      CopyWith$Query$PostedWorks(this, (i) => i);
}

abstract class CopyWith$Query$PostedWorks<TRes> {
  factory CopyWith$Query$PostedWorks(
          Query$PostedWorks instance, TRes Function(Query$PostedWorks) then) =
      _CopyWithImpl$Query$PostedWorks;

  factory CopyWith$Query$PostedWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$PostedWorks;

  TRes call({Query$PostedWorks$works? works, String? $__typename});
  CopyWith$Query$PostedWorks$works<TRes> get works;
}

class _CopyWithImpl$Query$PostedWorks<TRes>
    implements CopyWith$Query$PostedWorks<TRes> {
  _CopyWithImpl$Query$PostedWorks(this._instance, this._then);

  final Query$PostedWorks _instance;

  final TRes Function(Query$PostedWorks) _then;

  static const _undefined = {};

  TRes call({Object? works = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$PostedWorks(
          works: works == _undefined || works == null
              ? _instance.works
              : (works as Query$PostedWorks$works),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$PostedWorks$works<TRes> get works {
    final local$works = _instance.works;
    return CopyWith$Query$PostedWorks$works(local$works, (e) => call(works: e));
  }
}

class _CopyWithStubImpl$Query$PostedWorks<TRes>
    implements CopyWith$Query$PostedWorks<TRes> {
  _CopyWithStubImpl$Query$PostedWorks(this._res);

  TRes _res;

  call({Query$PostedWorks$works? works, String? $__typename}) => _res;
  CopyWith$Query$PostedWorks$works<TRes> get works =>
      CopyWith$Query$PostedWorks$works.stub(_res);
}

const documentNodeQueryPostedWorks = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PostedWorks'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'where')),
            type: NamedTypeNode(
                name: NameNode(value: 'WorkWhereInput'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'works'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: VariableNode(name: NameNode(value: 'where')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'WorkSummary'),
                              directives: []),
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
  fragmentDefinitionWorkSummary,
]);
Query$PostedWorks _parserFn$Query$PostedWorks(Map<String, dynamic> data) =>
    Query$PostedWorks.fromJson(data);

class Options$Query$PostedWorks
    extends graphql.QueryOptions<Query$PostedWorks> {
  Options$Query$PostedWorks(
      {String? operationName,
      Variables$Query$PostedWorks? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryPostedWorks,
            parserFn: _parserFn$Query$PostedWorks);
}

class WatchOptions$Query$PostedWorks
    extends graphql.WatchQueryOptions<Query$PostedWorks> {
  WatchOptions$Query$PostedWorks(
      {String? operationName,
      Variables$Query$PostedWorks? variables,
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
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryPostedWorks,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$PostedWorks);
}

class FetchMoreOptions$Query$PostedWorks extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PostedWorks(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$PostedWorks? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryPostedWorks);
}

extension ClientExtension$Query$PostedWorks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PostedWorks>> query$PostedWorks(
          [Options$Query$PostedWorks? options]) async =>
      await this.query(options ?? Options$Query$PostedWorks());
  graphql.ObservableQuery<Query$PostedWorks> watchQuery$PostedWorks(
          [WatchOptions$Query$PostedWorks? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PostedWorks());
  void writeQuery$PostedWorks(
          {required Query$PostedWorks data,
          Variables$Query$PostedWorks? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryPostedWorks),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$PostedWorks? readQuery$PostedWorks(
      {Variables$Query$PostedWorks? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryPostedWorks),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$PostedWorks.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PostedWorks> useQuery$PostedWorks(
        [Options$Query$PostedWorks? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$PostedWorks());
graphql.ObservableQuery<Query$PostedWorks> useWatchQuery$PostedWorks(
        [WatchOptions$Query$PostedWorks? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$PostedWorks());

class Query$PostedWorks$Widget
    extends graphql_flutter.Query<Query$PostedWorks> {
  Query$PostedWorks$Widget(
      {widgets.Key? key,
      Options$Query$PostedWorks? options,
      required graphql_flutter.QueryBuilder<Query$PostedWorks> builder})
      : super(
            key: key,
            options: options ?? Options$Query$PostedWorks(),
            builder: builder);
}

class Query$PostedWorks$works {
  Query$PostedWorks$works({this.edges, required this.$__typename});

  factory Query$PostedWorks$works.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$PostedWorks$works(
        edges: (l$edges as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$PostedWorks$works$edges.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Query$PostedWorks$works$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostedWorks$works) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$PostedWorks$works on Query$PostedWorks$works {
  CopyWith$Query$PostedWorks$works<Query$PostedWorks$works> get copyWith =>
      CopyWith$Query$PostedWorks$works(this, (i) => i);
}

abstract class CopyWith$Query$PostedWorks$works<TRes> {
  factory CopyWith$Query$PostedWorks$works(Query$PostedWorks$works instance,
          TRes Function(Query$PostedWorks$works) then) =
      _CopyWithImpl$Query$PostedWorks$works;

  factory CopyWith$Query$PostedWorks$works.stub(TRes res) =
      _CopyWithStubImpl$Query$PostedWorks$works;

  TRes call({List<Query$PostedWorks$works$edges?>? edges, String? $__typename});
  TRes edges(
      Iterable<Query$PostedWorks$works$edges?>? Function(
              Iterable<
                  CopyWith$Query$PostedWorks$works$edges<
                      Query$PostedWorks$works$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$PostedWorks$works<TRes>
    implements CopyWith$Query$PostedWorks$works<TRes> {
  _CopyWithImpl$Query$PostedWorks$works(this._instance, this._then);

  final Query$PostedWorks$works _instance;

  final TRes Function(Query$PostedWorks$works) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$PostedWorks$works(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$PostedWorks$works$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$PostedWorks$works$edges?>? Function(
                  Iterable<
                      CopyWith$Query$PostedWorks$works$edges<
                          Query$PostedWorks$works$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
                  ? null
                  : CopyWith$Query$PostedWorks$works$edges(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Query$PostedWorks$works<TRes>
    implements CopyWith$Query$PostedWorks$works<TRes> {
  _CopyWithStubImpl$Query$PostedWorks$works(this._res);

  TRes _res;

  call({List<Query$PostedWorks$works$edges?>? edges, String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

class Query$PostedWorks$works$edges {
  Query$PostedWorks$works$edges({this.node, required this.$__typename});

  factory Query$PostedWorks$works$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$PostedWorks$works$edges(
        node: l$node == null
            ? null
            : Fragment$WorkSummary.fromJson((l$node as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Fragment$WorkSummary? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostedWorks$works$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$PostedWorks$works$edges
    on Query$PostedWorks$works$edges {
  CopyWith$Query$PostedWorks$works$edges<Query$PostedWorks$works$edges>
      get copyWith => CopyWith$Query$PostedWorks$works$edges(this, (i) => i);
}

abstract class CopyWith$Query$PostedWorks$works$edges<TRes> {
  factory CopyWith$Query$PostedWorks$works$edges(
          Query$PostedWorks$works$edges instance,
          TRes Function(Query$PostedWorks$works$edges) then) =
      _CopyWithImpl$Query$PostedWorks$works$edges;

  factory CopyWith$Query$PostedWorks$works$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$PostedWorks$works$edges;

  TRes call({Fragment$WorkSummary? node, String? $__typename});
  CopyWith$Fragment$WorkSummary<TRes> get node;
}

class _CopyWithImpl$Query$PostedWorks$works$edges<TRes>
    implements CopyWith$Query$PostedWorks$works$edges<TRes> {
  _CopyWithImpl$Query$PostedWorks$works$edges(this._instance, this._then);

  final Query$PostedWorks$works$edges _instance;

  final TRes Function(Query$PostedWorks$works$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$PostedWorks$works$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Fragment$WorkSummary?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$WorkSummary<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$WorkSummary.stub(_then(_instance))
        : CopyWith$Fragment$WorkSummary(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$PostedWorks$works$edges<TRes>
    implements CopyWith$Query$PostedWorks$works$edges<TRes> {
  _CopyWithStubImpl$Query$PostedWorks$works$edges(this._res);

  TRes _res;

  call({Fragment$WorkSummary? node, String? $__typename}) => _res;
  CopyWith$Fragment$WorkSummary<TRes> get node =>
      CopyWith$Fragment$WorkSummary.stub(_res);
}

class Variables$Query$BookmarkedPosts {
  factory Variables$Query$BookmarkedPosts(
          {required int first, String? after, required String userID}) =>
      Variables$Query$BookmarkedPosts._({
        r'first': first,
        if (after != null) r'after': after,
        r'userID': userID,
      });

  Variables$Query$BookmarkedPosts._(this._$data);

  factory Variables$Query$BookmarkedPosts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    return Variables$Query$BookmarkedPosts._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);
  String? get after => (_$data['after'] as String?);
  String get userID => (_$data['userID'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    final l$userID = userID;
    result$data['userID'] = l$userID;
    return result$data;
  }

  CopyWith$Variables$Query$BookmarkedPosts<Variables$Query$BookmarkedPosts>
      get copyWith => CopyWith$Variables$Query$BookmarkedPosts(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$BookmarkedPosts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$first = first;
    final l$after = after;
    final l$userID = userID;
    return Object.hashAll(
        [l$first, _$data.containsKey('after') ? l$after : const {}, l$userID]);
  }
}

abstract class CopyWith$Variables$Query$BookmarkedPosts<TRes> {
  factory CopyWith$Variables$Query$BookmarkedPosts(
          Variables$Query$BookmarkedPosts instance,
          TRes Function(Variables$Query$BookmarkedPosts) then) =
      _CopyWithImpl$Variables$Query$BookmarkedPosts;

  factory CopyWith$Variables$Query$BookmarkedPosts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$BookmarkedPosts;

  TRes call({int? first, String? after, String? userID});
}

class _CopyWithImpl$Variables$Query$BookmarkedPosts<TRes>
    implements CopyWith$Variables$Query$BookmarkedPosts<TRes> {
  _CopyWithImpl$Variables$Query$BookmarkedPosts(this._instance, this._then);

  final Variables$Query$BookmarkedPosts _instance;

  final TRes Function(Variables$Query$BookmarkedPosts) _then;

  static const _undefined = {};

  TRes call(
          {Object? first = _undefined,
          Object? after = _undefined,
          Object? userID = _undefined}) =>
      _then(Variables$Query$BookmarkedPosts._({
        ..._instance._$data,
        if (first != _undefined && first != null) 'first': (first as int),
        if (after != _undefined) 'after': (after as String?),
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$BookmarkedPosts<TRes>
    implements CopyWith$Variables$Query$BookmarkedPosts<TRes> {
  _CopyWithStubImpl$Variables$Query$BookmarkedPosts(this._res);

  TRes _res;

  call({int? first, String? after, String? userID}) => _res;
}

class Query$BookmarkedPosts {
  Query$BookmarkedPosts({required this.posts, required this.$__typename});

  factory Query$BookmarkedPosts.fromJson(Map<String, dynamic> json) {
    final l$posts = json['posts'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts(
        posts: Query$BookmarkedPosts$posts.fromJson(
            (l$posts as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Query$BookmarkedPosts$posts posts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$posts = posts;
    _resultData['posts'] = l$posts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookmarkedPosts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$posts = posts;
    final lOther$posts = other.posts;
    if (l$posts != lOther$posts) {
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

extension UtilityExtension$Query$BookmarkedPosts on Query$BookmarkedPosts {
  CopyWith$Query$BookmarkedPosts<Query$BookmarkedPosts> get copyWith =>
      CopyWith$Query$BookmarkedPosts(this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts<TRes> {
  factory CopyWith$Query$BookmarkedPosts(Query$BookmarkedPosts instance,
          TRes Function(Query$BookmarkedPosts) then) =
      _CopyWithImpl$Query$BookmarkedPosts;

  factory CopyWith$Query$BookmarkedPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts;

  TRes call({Query$BookmarkedPosts$posts? posts, String? $__typename});
  CopyWith$Query$BookmarkedPosts$posts<TRes> get posts;
}

class _CopyWithImpl$Query$BookmarkedPosts<TRes>
    implements CopyWith$Query$BookmarkedPosts<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts(this._instance, this._then);

  final Query$BookmarkedPosts _instance;

  final TRes Function(Query$BookmarkedPosts) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$BookmarkedPosts$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$BookmarkedPosts$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$BookmarkedPosts$posts(
        local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$BookmarkedPosts<TRes>
    implements CopyWith$Query$BookmarkedPosts<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts(this._res);

  TRes _res;

  call({Query$BookmarkedPosts$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$BookmarkedPosts$posts<TRes> get posts =>
      CopyWith$Query$BookmarkedPosts$posts.stub(_res);
}

const documentNodeQueryBookmarkedPosts = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'BookmarkedPosts'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'Cursor'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userID')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'posts'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first'))),
              ArgumentNode(
                  name: NameNode(value: 'after'),
                  value: VariableNode(name: NameNode(value: 'after'))),
              ArgumentNode(
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'direction'),
                        value: EnumValueNode(name: NameNode(value: 'DESC'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'field'),
                        value:
                            EnumValueNode(name: NameNode(value: 'CREATE_TIME')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'hasBookmarkedUsersWith'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'id'),
                              value:
                                  VariableNode(name: NameNode(value: 'userID')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'type'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FragmentSpreadNode(
                              name: NameNode(value: 'PraiseSummary'),
                              directives: []),
                          FragmentSpreadNode(
                              name: NameNode(value: 'LetterSummary'),
                              directives: []),
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
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'endCursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'hasNextPage'),
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
  fragmentDefinitionPraiseSummary,
  fragmentDefinitionLetterSummary,
]);
Query$BookmarkedPosts _parserFn$Query$BookmarkedPosts(
        Map<String, dynamic> data) =>
    Query$BookmarkedPosts.fromJson(data);

class Options$Query$BookmarkedPosts
    extends graphql.QueryOptions<Query$BookmarkedPosts> {
  Options$Query$BookmarkedPosts(
      {String? operationName,
      required Variables$Query$BookmarkedPosts variables,
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
            document: documentNodeQueryBookmarkedPosts,
            parserFn: _parserFn$Query$BookmarkedPosts);
}

class WatchOptions$Query$BookmarkedPosts
    extends graphql.WatchQueryOptions<Query$BookmarkedPosts> {
  WatchOptions$Query$BookmarkedPosts(
      {String? operationName,
      required Variables$Query$BookmarkedPosts variables,
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
            document: documentNodeQueryBookmarkedPosts,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$BookmarkedPosts);
}

class FetchMoreOptions$Query$BookmarkedPosts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$BookmarkedPosts(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$BookmarkedPosts variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryBookmarkedPosts);
}

extension ClientExtension$Query$BookmarkedPosts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$BookmarkedPosts>> query$BookmarkedPosts(
          Options$Query$BookmarkedPosts options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$BookmarkedPosts> watchQuery$BookmarkedPosts(
          WatchOptions$Query$BookmarkedPosts options) =>
      this.watchQuery(options);
  void writeQuery$BookmarkedPosts(
          {required Query$BookmarkedPosts data,
          required Variables$Query$BookmarkedPosts variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryBookmarkedPosts),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$BookmarkedPosts? readQuery$BookmarkedPosts(
      {required Variables$Query$BookmarkedPosts variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryBookmarkedPosts),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$BookmarkedPosts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$BookmarkedPosts> useQuery$BookmarkedPosts(
        Options$Query$BookmarkedPosts options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$BookmarkedPosts> useWatchQuery$BookmarkedPosts(
        WatchOptions$Query$BookmarkedPosts options) =>
    graphql_flutter.useWatchQuery(options);

class Query$BookmarkedPosts$Widget
    extends graphql_flutter.Query<Query$BookmarkedPosts> {
  Query$BookmarkedPosts$Widget(
      {widgets.Key? key,
      required Options$Query$BookmarkedPosts options,
      required graphql_flutter.QueryBuilder<Query$BookmarkedPosts> builder})
      : super(key: key, options: options, builder: builder);
}

class Query$BookmarkedPosts$posts {
  Query$BookmarkedPosts$posts(
      {this.edges, required this.pageInfo, required this.$__typename});

  factory Query$BookmarkedPosts$posts.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts$posts(
        edges: (l$edges as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$BookmarkedPosts$posts$edges.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        pageInfo: Query$BookmarkedPosts$posts$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final List<Query$BookmarkedPosts$posts$edges?>? edges;

  final Query$BookmarkedPosts$posts$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookmarkedPosts$posts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$BookmarkedPosts$posts
    on Query$BookmarkedPosts$posts {
  CopyWith$Query$BookmarkedPosts$posts<Query$BookmarkedPosts$posts>
      get copyWith => CopyWith$Query$BookmarkedPosts$posts(this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts<TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts(
          Query$BookmarkedPosts$posts instance,
          TRes Function(Query$BookmarkedPosts$posts) then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts;

  factory CopyWith$Query$BookmarkedPosts$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts;

  TRes call(
      {List<Query$BookmarkedPosts$posts$edges?>? edges,
      Query$BookmarkedPosts$posts$pageInfo? pageInfo,
      String? $__typename});
  TRes edges(
      Iterable<Query$BookmarkedPosts$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$BookmarkedPosts$posts$edges<
                      Query$BookmarkedPosts$posts$edges>?>?)
          _fn);
  CopyWith$Query$BookmarkedPosts$posts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$BookmarkedPosts$posts<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts(this._instance, this._then);

  final Query$BookmarkedPosts$posts _instance;

  final TRes Function(Query$BookmarkedPosts$posts) _then;

  static const _undefined = {};

  TRes call(
          {Object? edges = _undefined,
          Object? pageInfo = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$BookmarkedPosts$posts$edges?>?),
          pageInfo: pageInfo == _undefined || pageInfo == null
              ? _instance.pageInfo
              : (pageInfo as Query$BookmarkedPosts$posts$pageInfo),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$BookmarkedPosts$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$BookmarkedPosts$posts$edges<
                          Query$BookmarkedPosts$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
                  ? null
                  : CopyWith$Query$BookmarkedPosts$posts$edges(e, (i) => i)))
              ?.toList());
  CopyWith$Query$BookmarkedPosts$posts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$BookmarkedPosts$posts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts(this._res);

  TRes _res;

  call(
          {List<Query$BookmarkedPosts$posts$edges?>? edges,
          Query$BookmarkedPosts$posts$pageInfo? pageInfo,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$BookmarkedPosts$posts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$BookmarkedPosts$posts$pageInfo.stub(_res);
}

class Query$BookmarkedPosts$posts$edges {
  Query$BookmarkedPosts$posts$edges({this.node, required this.$__typename});

  factory Query$BookmarkedPosts$posts$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts$posts$edges(
        node: l$node == null
            ? null
            : Query$BookmarkedPosts$posts$edges$node.fromJson(
                (l$node as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Query$BookmarkedPosts$posts$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookmarkedPosts$posts$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$BookmarkedPosts$posts$edges
    on Query$BookmarkedPosts$posts$edges {
  CopyWith$Query$BookmarkedPosts$posts$edges<Query$BookmarkedPosts$posts$edges>
      get copyWith =>
          CopyWith$Query$BookmarkedPosts$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts$edges<TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts$edges(
          Query$BookmarkedPosts$posts$edges instance,
          TRes Function(Query$BookmarkedPosts$posts$edges) then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts$edges;

  factory CopyWith$Query$BookmarkedPosts$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges;

  TRes call(
      {Query$BookmarkedPosts$posts$edges$node? node, String? $__typename});
  CopyWith$Query$BookmarkedPosts$posts$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$BookmarkedPosts$posts$edges<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts$edges(this._instance, this._then);

  final Query$BookmarkedPosts$posts$edges _instance;

  final TRes Function(Query$BookmarkedPosts$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts$posts$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$BookmarkedPosts$posts$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$BookmarkedPosts$posts$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$BookmarkedPosts$posts$edges$node.stub(_then(_instance))
        : CopyWith$Query$BookmarkedPosts$posts$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges(this._res);

  TRes _res;

  call({Query$BookmarkedPosts$posts$edges$node? node, String? $__typename}) =>
      _res;
  CopyWith$Query$BookmarkedPosts$posts$edges$node<TRes> get node =>
      CopyWith$Query$BookmarkedPosts$posts$edges$node.stub(_res);
}

class Query$BookmarkedPosts$posts$edges$node
    implements Fragment$PraiseSummary, Fragment$LetterSummary {
  Query$BookmarkedPosts$posts$edges$node(
      {required this.type,
      required this.title,
      required this.id,
      required this.content,
      this.hashtags,
      required this.owner,
      required this.category,
      this.likedUsers,
      this.bookmarkedUsers,
      required this.$__typename,
      required this.createTime,
      this.thumbnail,
      required this.work});

  factory Query$BookmarkedPosts$posts$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$title = json['title'];
    final l$id = json['id'];
    final l$content = json['content'];
    final l$hashtags = json['hashtags'];
    final l$owner = json['owner'];
    final l$category = json['category'];
    final l$likedUsers = json['likedUsers'];
    final l$bookmarkedUsers = json['bookmarkedUsers'];
    final l$$__typename = json['__typename'];
    final l$createTime = json['createTime'];
    final l$thumbnail = json['thumbnail'];
    final l$work = json['work'];
    return Query$BookmarkedPosts$posts$edges$node(
        type: fromJson$Enum$PostPostType((l$type as String)),
        title: (l$title as String),
        id: (l$id as String),
        content: (l$content as String),
        hashtags: (l$hashtags as List<dynamic>?)
            ?.map((e) =>
                Query$BookmarkedPosts$posts$edges$node$hashtags.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        owner: Query$BookmarkedPosts$posts$edges$node$owner.fromJson(
            (l$owner as Map<String, dynamic>)),
        category: Query$BookmarkedPosts$posts$edges$node$category.fromJson(
            (l$category as Map<String, dynamic>)),
        likedUsers: (l$likedUsers as List<dynamic>?)
            ?.map((e) =>
                Query$BookmarkedPosts$posts$edges$node$likedUsers.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        bookmarkedUsers: (l$bookmarkedUsers as List<dynamic>?)
            ?.map((e) =>
                Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers.fromJson((e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String),
        createTime: (l$createTime as String),
        thumbnail: (l$thumbnail as String?),
        work: Query$BookmarkedPosts$posts$edges$node$work.fromJson((l$work as Map<String, dynamic>)));
  }

  final Enum$PostPostType type;

  final String title;

  final String id;

  final String content;

  final List<Query$BookmarkedPosts$posts$edges$node$hashtags>? hashtags;

  final Query$BookmarkedPosts$posts$edges$node$owner owner;

  final Query$BookmarkedPosts$posts$edges$node$category category;

  final List<Query$BookmarkedPosts$posts$edges$node$likedUsers>? likedUsers;

  final List<Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers>?
      bookmarkedUsers;

  final String $__typename;

  final String createTime;

  final String? thumbnail;

  final Query$BookmarkedPosts$posts$edges$node$work work;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = toJson$Enum$PostPostType(l$type);
    final l$title = title;
    _resultData['title'] = l$title;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$hashtags = hashtags;
    _resultData['hashtags'] = l$hashtags?.map((e) => e.toJson()).toList();
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$category = category;
    _resultData['category'] = l$category.toJson();
    final l$likedUsers = likedUsers;
    _resultData['likedUsers'] = l$likedUsers?.map((e) => e.toJson()).toList();
    final l$bookmarkedUsers = bookmarkedUsers;
    _resultData['bookmarkedUsers'] =
        l$bookmarkedUsers?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$createTime = createTime;
    _resultData['createTime'] = l$createTime;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$work = work;
    _resultData['work'] = l$work.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$title = title;
    final l$id = id;
    final l$content = content;
    final l$hashtags = hashtags;
    final l$owner = owner;
    final l$category = category;
    final l$likedUsers = likedUsers;
    final l$bookmarkedUsers = bookmarkedUsers;
    final l$$__typename = $__typename;
    final l$createTime = createTime;
    final l$thumbnail = thumbnail;
    final l$work = work;
    return Object.hashAll([
      l$type,
      l$title,
      l$id,
      l$content,
      l$hashtags == null ? null : Object.hashAll(l$hashtags.map((v) => v)),
      l$owner,
      l$category,
      l$likedUsers == null ? null : Object.hashAll(l$likedUsers.map((v) => v)),
      l$bookmarkedUsers == null
          ? null
          : Object.hashAll(l$bookmarkedUsers.map((v) => v)),
      l$$__typename,
      l$createTime,
      l$thumbnail,
      l$work
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookmarkedPosts$posts$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$hashtags = hashtags;
    final lOther$hashtags = other.hashtags;
    if (l$hashtags != null && lOther$hashtags != null) {
      if (l$hashtags.length != lOther$hashtags.length) {
        return false;
      }
      for (int i = 0; i < l$hashtags.length; i++) {
        final l$hashtags$entry = l$hashtags[i];
        final lOther$hashtags$entry = lOther$hashtags[i];
        if (l$hashtags$entry != lOther$hashtags$entry) {
          return false;
        }
      }
    } else if (l$hashtags != lOther$hashtags) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$likedUsers = likedUsers;
    final lOther$likedUsers = other.likedUsers;
    if (l$likedUsers != null && lOther$likedUsers != null) {
      if (l$likedUsers.length != lOther$likedUsers.length) {
        return false;
      }
      for (int i = 0; i < l$likedUsers.length; i++) {
        final l$likedUsers$entry = l$likedUsers[i];
        final lOther$likedUsers$entry = lOther$likedUsers[i];
        if (l$likedUsers$entry != lOther$likedUsers$entry) {
          return false;
        }
      }
    } else if (l$likedUsers != lOther$likedUsers) {
      return false;
    }
    final l$bookmarkedUsers = bookmarkedUsers;
    final lOther$bookmarkedUsers = other.bookmarkedUsers;
    if (l$bookmarkedUsers != null && lOther$bookmarkedUsers != null) {
      if (l$bookmarkedUsers.length != lOther$bookmarkedUsers.length) {
        return false;
      }
      for (int i = 0; i < l$bookmarkedUsers.length; i++) {
        final l$bookmarkedUsers$entry = l$bookmarkedUsers[i];
        final lOther$bookmarkedUsers$entry = lOther$bookmarkedUsers[i];
        if (l$bookmarkedUsers$entry != lOther$bookmarkedUsers$entry) {
          return false;
        }
      }
    } else if (l$bookmarkedUsers != lOther$bookmarkedUsers) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$createTime = createTime;
    final lOther$createTime = other.createTime;
    if (l$createTime != lOther$createTime) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$work = work;
    final lOther$work = other.work;
    if (l$work != lOther$work) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BookmarkedPosts$posts$edges$node
    on Query$BookmarkedPosts$posts$edges$node {
  CopyWith$Query$BookmarkedPosts$posts$edges$node<
          Query$BookmarkedPosts$posts$edges$node>
      get copyWith =>
          CopyWith$Query$BookmarkedPosts$posts$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts$edges$node<TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts$edges$node(
          Query$BookmarkedPosts$posts$edges$node instance,
          TRes Function(Query$BookmarkedPosts$posts$edges$node) then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node;

  factory CopyWith$Query$BookmarkedPosts$posts$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node;

  TRes call(
      {Enum$PostPostType? type,
      String? title,
      String? id,
      String? content,
      List<Query$BookmarkedPosts$posts$edges$node$hashtags>? hashtags,
      Query$BookmarkedPosts$posts$edges$node$owner? owner,
      Query$BookmarkedPosts$posts$edges$node$category? category,
      List<Query$BookmarkedPosts$posts$edges$node$likedUsers>? likedUsers,
      List<Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers>?
          bookmarkedUsers,
      String? $__typename,
      String? createTime,
      String? thumbnail,
      Query$BookmarkedPosts$posts$edges$node$work? work});
  TRes hashtags(
      Iterable<Query$BookmarkedPosts$posts$edges$node$hashtags>? Function(
              Iterable<
                  CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags<
                      Query$BookmarkedPosts$posts$edges$node$hashtags>>?)
          _fn);
  CopyWith$Query$BookmarkedPosts$posts$edges$node$owner<TRes> get owner;
  CopyWith$Query$BookmarkedPosts$posts$edges$node$category<TRes> get category;
  TRes likedUsers(
      Iterable<Query$BookmarkedPosts$posts$edges$node$likedUsers>? Function(
              Iterable<
                  CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers<
                      Query$BookmarkedPosts$posts$edges$node$likedUsers>>?)
          _fn);
  TRes bookmarkedUsers(
      Iterable<Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers>? Function(
              Iterable<
                  CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers<
                      Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers>>?)
          _fn);
  CopyWith$Query$BookmarkedPosts$posts$edges$node$work<TRes> get work;
}

class _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node(
      this._instance, this._then);

  final Query$BookmarkedPosts$posts$edges$node _instance;

  final TRes Function(Query$BookmarkedPosts$posts$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? type = _undefined,
          Object? title = _undefined,
          Object? id = _undefined,
          Object? content = _undefined,
          Object? hashtags = _undefined,
          Object? owner = _undefined,
          Object? category = _undefined,
          Object? likedUsers = _undefined,
          Object? bookmarkedUsers = _undefined,
          Object? $__typename = _undefined,
          Object? createTime = _undefined,
          Object? thumbnail = _undefined,
          Object? work = _undefined}) =>
      _then(Query$BookmarkedPosts$posts$edges$node(
          type: type == _undefined || type == null
              ? _instance.type
              : (type as Enum$PostPostType),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          hashtags: hashtags == _undefined
              ? _instance.hashtags
              : (hashtags
                  as List<Query$BookmarkedPosts$posts$edges$node$hashtags>?),
          owner: owner == _undefined || owner == null
              ? _instance.owner
              : (owner as Query$BookmarkedPosts$posts$edges$node$owner),
          category: category == _undefined || category == null
              ? _instance.category
              : (category as Query$BookmarkedPosts$posts$edges$node$category),
          likedUsers: likedUsers == _undefined
              ? _instance.likedUsers
              : (likedUsers
                  as List<Query$BookmarkedPosts$posts$edges$node$likedUsers>?),
          bookmarkedUsers: bookmarkedUsers == _undefined
              ? _instance.bookmarkedUsers
              : (bookmarkedUsers as List<
                  Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          createTime: createTime == _undefined || createTime == null ? _instance.createTime : (createTime as String),
          thumbnail: thumbnail == _undefined ? _instance.thumbnail : (thumbnail as String?),
          work: work == _undefined || work == null ? _instance.work : (work as Query$BookmarkedPosts$posts$edges$node$work)));
  TRes hashtags(
          Iterable<Query$BookmarkedPosts$posts$edges$node$hashtags>? Function(
                  Iterable<
                      CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags<
                          Query$BookmarkedPosts$posts$edges$node$hashtags>>?)
              _fn) =>
      call(
          hashtags: _fn(_instance.hashtags?.map((e) =>
              CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags(
                  e, (i) => i)))?.toList());
  CopyWith$Query$BookmarkedPosts$posts$edges$node$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$BookmarkedPosts$posts$edges$node$owner(
        local$owner, (e) => call(owner: e));
  }

  CopyWith$Query$BookmarkedPosts$posts$edges$node$category<TRes> get category {
    final local$category = _instance.category;
    return CopyWith$Query$BookmarkedPosts$posts$edges$node$category(
        local$category, (e) => call(category: e));
  }

  TRes likedUsers(
          Iterable<Query$BookmarkedPosts$posts$edges$node$likedUsers>? Function(
                  Iterable<
                      CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers<
                          Query$BookmarkedPosts$posts$edges$node$likedUsers>>?)
              _fn) =>
      call(
          likedUsers: _fn(_instance.likedUsers?.map((e) =>
              CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers(
                  e, (i) => i)))?.toList());
  TRes bookmarkedUsers(
          Iterable<Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers>? Function(
                  Iterable<
                      CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers<
                          Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers>>?)
              _fn) =>
      call(
          bookmarkedUsers: _fn(_instance.bookmarkedUsers?.map((e) =>
              CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers(
                  e, (i) => i)))?.toList());
  CopyWith$Query$BookmarkedPosts$posts$edges$node$work<TRes> get work {
    final local$work = _instance.work;
    return CopyWith$Query$BookmarkedPosts$posts$edges$node$work(
        local$work, (e) => call(work: e));
  }
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node(this._res);

  TRes _res;

  call(
          {Enum$PostPostType? type,
          String? title,
          String? id,
          String? content,
          List<Query$BookmarkedPosts$posts$edges$node$hashtags>? hashtags,
          Query$BookmarkedPosts$posts$edges$node$owner? owner,
          Query$BookmarkedPosts$posts$edges$node$category? category,
          List<Query$BookmarkedPosts$posts$edges$node$likedUsers>? likedUsers,
          List<Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers>?
              bookmarkedUsers,
          String? $__typename,
          String? createTime,
          String? thumbnail,
          Query$BookmarkedPosts$posts$edges$node$work? work}) =>
      _res;
  hashtags(_fn) => _res;
  CopyWith$Query$BookmarkedPosts$posts$edges$node$owner<TRes> get owner =>
      CopyWith$Query$BookmarkedPosts$posts$edges$node$owner.stub(_res);
  CopyWith$Query$BookmarkedPosts$posts$edges$node$category<TRes> get category =>
      CopyWith$Query$BookmarkedPosts$posts$edges$node$category.stub(_res);
  likedUsers(_fn) => _res;
  bookmarkedUsers(_fn) => _res;
  CopyWith$Query$BookmarkedPosts$posts$edges$node$work<TRes> get work =>
      CopyWith$Query$BookmarkedPosts$posts$edges$node$work.stub(_res);
}

class Query$BookmarkedPosts$posts$edges$node$hashtags
    implements Fragment$PraiseSummary$hashtags {
  Query$BookmarkedPosts$posts$edges$node$hashtags(
      {required this.id, required this.title, required this.$__typename});

  factory Query$BookmarkedPosts$posts$edges$node$hashtags.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts$posts$edges$node$hashtags(
        id: (l$id as String),
        title: (l$title as String),
        $__typename: (l$$__typename as String));
  }

  final String id;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookmarkedPosts$posts$edges$node$hashtags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$BookmarkedPosts$posts$edges$node$hashtags
    on Query$BookmarkedPosts$posts$edges$node$hashtags {
  CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags<
          Query$BookmarkedPosts$posts$edges$node$hashtags>
      get copyWith => CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags(
          this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags<TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags(
          Query$BookmarkedPosts$posts$edges$node$hashtags instance,
          TRes Function(Query$BookmarkedPosts$posts$edges$node$hashtags) then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$hashtags;

  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags.stub(
          TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$hashtags;

  TRes call({String? id, String? title, String? $__typename});
}

class _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$hashtags<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$hashtags(
      this._instance, this._then);

  final Query$BookmarkedPosts$posts$edges$node$hashtags _instance;

  final TRes Function(Query$BookmarkedPosts$posts$edges$node$hashtags) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts$posts$edges$node$hashtags(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$hashtags<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node$hashtags<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$hashtags(this._res);

  TRes _res;

  call({String? id, String? title, String? $__typename}) => _res;
}

class Query$BookmarkedPosts$posts$edges$node$owner
    implements Fragment$PraiseSummary$owner, Fragment$LetterSummary$owner {
  Query$BookmarkedPosts$posts$edges$node$owner(
      {required this.id,
      required this.name,
      this.avatarURL,
      required this.$__typename});

  factory Query$BookmarkedPosts$posts$edges$node$owner.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatarURL = json['avatarURL'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts$posts$edges$node$owner(
        id: (l$id as String),
        name: (l$name as String),
        avatarURL: (l$avatarURL as String?),
        $__typename: (l$$__typename as String));
  }

  final String id;

  final String name;

  final String? avatarURL;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
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
    final l$avatarURL = avatarURL;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$avatarURL, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookmarkedPosts$posts$edges$node$owner) ||
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

extension UtilityExtension$Query$BookmarkedPosts$posts$edges$node$owner
    on Query$BookmarkedPosts$posts$edges$node$owner {
  CopyWith$Query$BookmarkedPosts$posts$edges$node$owner<
          Query$BookmarkedPosts$posts$edges$node$owner>
      get copyWith =>
          CopyWith$Query$BookmarkedPosts$posts$edges$node$owner(this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts$edges$node$owner<TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$owner(
          Query$BookmarkedPosts$posts$edges$node$owner instance,
          TRes Function(Query$BookmarkedPosts$posts$edges$node$owner) then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$owner;

  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$owner.stub(TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$owner;

  TRes call({String? id, String? name, String? avatarURL, String? $__typename});
}

class _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$owner<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node$owner<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$owner(
      this._instance, this._then);

  final Query$BookmarkedPosts$posts$edges$node$owner _instance;

  final TRes Function(Query$BookmarkedPosts$posts$edges$node$owner) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? avatarURL = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts$posts$edges$node$owner(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          avatarURL: avatarURL == _undefined
              ? _instance.avatarURL
              : (avatarURL as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$owner<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node$owner<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$owner(this._res);

  TRes _res;

  call({String? id, String? name, String? avatarURL, String? $__typename}) =>
      _res;
}

class Query$BookmarkedPosts$posts$edges$node$category
    implements
        Fragment$PraiseSummary$category,
        Fragment$LetterSummary$category {
  Query$BookmarkedPosts$posts$edges$node$category(
      {required this.id, required this.name, required this.$__typename});

  factory Query$BookmarkedPosts$posts$edges$node$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts$posts$edges$node$category(
        id: (l$id as String),
        name: (l$name as String),
        $__typename: (l$$__typename as String));
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookmarkedPosts$posts$edges$node$category) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BookmarkedPosts$posts$edges$node$category
    on Query$BookmarkedPosts$posts$edges$node$category {
  CopyWith$Query$BookmarkedPosts$posts$edges$node$category<
          Query$BookmarkedPosts$posts$edges$node$category>
      get copyWith => CopyWith$Query$BookmarkedPosts$posts$edges$node$category(
          this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts$edges$node$category<TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$category(
          Query$BookmarkedPosts$posts$edges$node$category instance,
          TRes Function(Query$BookmarkedPosts$posts$edges$node$category) then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$category;

  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$category;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$category<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node$category<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$category(
      this._instance, this._then);

  final Query$BookmarkedPosts$posts$edges$node$category _instance;

  final TRes Function(Query$BookmarkedPosts$posts$edges$node$category) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts$posts$edges$node$category(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$category<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node$category<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$category(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

class Query$BookmarkedPosts$posts$edges$node$likedUsers
    implements
        Fragment$PraiseSummary$likedUsers,
        Fragment$LetterSummary$likedUsers {
  Query$BookmarkedPosts$posts$edges$node$likedUsers(
      {required this.id, required this.$__typename});

  factory Query$BookmarkedPosts$posts$edges$node$likedUsers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts$posts$edges$node$likedUsers(
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
    if (!(other is Query$BookmarkedPosts$posts$edges$node$likedUsers) ||
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

extension UtilityExtension$Query$BookmarkedPosts$posts$edges$node$likedUsers
    on Query$BookmarkedPosts$posts$edges$node$likedUsers {
  CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers<
          Query$BookmarkedPosts$posts$edges$node$likedUsers>
      get copyWith =>
          CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers(
              this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers<
    TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers(
          Query$BookmarkedPosts$posts$edges$node$likedUsers instance,
          TRes Function(Query$BookmarkedPosts$posts$edges$node$likedUsers)
              then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$likedUsers;

  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers.stub(
          TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$likedUsers;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$likedUsers<TRes>
    implements
        CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$likedUsers(
      this._instance, this._then);

  final Query$BookmarkedPosts$posts$edges$node$likedUsers _instance;

  final TRes Function(Query$BookmarkedPosts$posts$edges$node$likedUsers) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts$posts$edges$node$likedUsers(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$likedUsers<TRes>
    implements
        CopyWith$Query$BookmarkedPosts$posts$edges$node$likedUsers<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$likedUsers(
      this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

class Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers
    implements
        Fragment$PraiseSummary$bookmarkedUsers,
        Fragment$LetterSummary$bookmarkedUsers {
  Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers(
      {required this.id, required this.$__typename});

  factory Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers(
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
    if (!(other is Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers) ||
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

extension UtilityExtension$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers
    on Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers {
  CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers<
          Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers>
      get copyWith =>
          CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers(
              this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers<
    TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers(
          Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers instance,
          TRes Function(Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers)
              then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers;

  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers.stub(
          TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers<TRes>
    implements
        CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers(
      this._instance, this._then);

  final Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers _instance;

  final TRes Function(Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers)
      _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers<
        TRes>
    implements
        CopyWith$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$bookmarkedUsers(
      this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

class Query$BookmarkedPosts$posts$edges$node$work
    implements Fragment$LetterSummary$work {
  Query$BookmarkedPosts$posts$edges$node$work(
      {required this.id, this.thumbnail, required this.$__typename});

  factory Query$BookmarkedPosts$posts$edges$node$work.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts$posts$edges$node$work(
        id: (l$id as String),
        thumbnail: (l$thumbnail as String?),
        $__typename: (l$$__typename as String));
  }

  final String id;

  final String? thumbnail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thumbnail = thumbnail;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$thumbnail, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookmarkedPosts$posts$edges$node$work) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
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

extension UtilityExtension$Query$BookmarkedPosts$posts$edges$node$work
    on Query$BookmarkedPosts$posts$edges$node$work {
  CopyWith$Query$BookmarkedPosts$posts$edges$node$work<
          Query$BookmarkedPosts$posts$edges$node$work>
      get copyWith =>
          CopyWith$Query$BookmarkedPosts$posts$edges$node$work(this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts$edges$node$work<TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$work(
          Query$BookmarkedPosts$posts$edges$node$work instance,
          TRes Function(Query$BookmarkedPosts$posts$edges$node$work) then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$work;

  factory CopyWith$Query$BookmarkedPosts$posts$edges$node$work.stub(TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$work;

  TRes call({String? id, String? thumbnail, String? $__typename});
}

class _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$work<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node$work<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts$edges$node$work(
      this._instance, this._then);

  final Query$BookmarkedPosts$posts$edges$node$work _instance;

  final TRes Function(Query$BookmarkedPosts$posts$edges$node$work) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? thumbnail = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts$posts$edges$node$work(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          thumbnail: thumbnail == _undefined
              ? _instance.thumbnail
              : (thumbnail as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$work<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$edges$node$work<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts$edges$node$work(this._res);

  TRes _res;

  call({String? id, String? thumbnail, String? $__typename}) => _res;
}

class Query$BookmarkedPosts$posts$pageInfo {
  Query$BookmarkedPosts$posts$pageInfo(
      {this.endCursor, required this.hasNextPage, required this.$__typename});

  factory Query$BookmarkedPosts$posts$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$BookmarkedPosts$posts$pageInfo(
        endCursor: (l$endCursor as String?),
        hasNextPage: (l$hasNextPage as bool),
        $__typename: (l$$__typename as String));
  }

  final String? endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$endCursor, l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookmarkedPosts$posts$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$BookmarkedPosts$posts$pageInfo
    on Query$BookmarkedPosts$posts$pageInfo {
  CopyWith$Query$BookmarkedPosts$posts$pageInfo<
          Query$BookmarkedPosts$posts$pageInfo>
      get copyWith =>
          CopyWith$Query$BookmarkedPosts$posts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$BookmarkedPosts$posts$pageInfo<TRes> {
  factory CopyWith$Query$BookmarkedPosts$posts$pageInfo(
          Query$BookmarkedPosts$posts$pageInfo instance,
          TRes Function(Query$BookmarkedPosts$posts$pageInfo) then) =
      _CopyWithImpl$Query$BookmarkedPosts$posts$pageInfo;

  factory CopyWith$Query$BookmarkedPosts$posts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$BookmarkedPosts$posts$pageInfo;

  TRes call({String? endCursor, bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$BookmarkedPosts$posts$pageInfo<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$pageInfo<TRes> {
  _CopyWithImpl$Query$BookmarkedPosts$posts$pageInfo(
      this._instance, this._then);

  final Query$BookmarkedPosts$posts$pageInfo _instance;

  final TRes Function(Query$BookmarkedPosts$posts$pageInfo) _then;

  static const _undefined = {};

  TRes call(
          {Object? endCursor = _undefined,
          Object? hasNextPage = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$BookmarkedPosts$posts$pageInfo(
          endCursor: endCursor == _undefined
              ? _instance.endCursor
              : (endCursor as String?),
          hasNextPage: hasNextPage == _undefined || hasNextPage == null
              ? _instance.hasNextPage
              : (hasNextPage as bool),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$BookmarkedPosts$posts$pageInfo<TRes>
    implements CopyWith$Query$BookmarkedPosts$posts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$BookmarkedPosts$posts$pageInfo(this._res);

  TRes _res;

  call({String? endCursor, bool? hasNextPage, String? $__typename}) => _res;
}
