import '../../graphql/ent.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'profile_page.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$MyInfo {
  Variables$Query$MyInfo({this.userID});

  @override
  factory Variables$Query$MyInfo.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$MyInfoFromJson(json);

  final String? userID;

  Map<String, dynamic> toJson() => _$Variables$Query$MyInfoToJson(this);
  int get hashCode {
    final l$userID = userID;
    return Object.hashAll([l$userID]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$MyInfo) || runtimeType != other.runtimeType)
      return false;
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) return false;
    return true;
  }

  CopyWith$Variables$Query$MyInfo<Variables$Query$MyInfo> get copyWith =>
      CopyWith$Variables$Query$MyInfo(this, (i) => i);
}

abstract class CopyWith$Variables$Query$MyInfo<TRes> {
  factory CopyWith$Variables$Query$MyInfo(Variables$Query$MyInfo instance,
          TRes Function(Variables$Query$MyInfo) then) =
      _CopyWithImpl$Variables$Query$MyInfo;

  factory CopyWith$Variables$Query$MyInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MyInfo;

  TRes call({String? userID});
}

class _CopyWithImpl$Variables$Query$MyInfo<TRes>
    implements CopyWith$Variables$Query$MyInfo<TRes> {
  _CopyWithImpl$Variables$Query$MyInfo(this._instance, this._then);

  final Variables$Query$MyInfo _instance;

  final TRes Function(Variables$Query$MyInfo) _then;

  static const _undefined = {};

  TRes call({Object? userID = _undefined}) => _then(Variables$Query$MyInfo(
      userID: userID == _undefined ? _instance.userID : (userID as String?)));
}

class _CopyWithStubImpl$Variables$Query$MyInfo<TRes>
    implements CopyWith$Variables$Query$MyInfo<TRes> {
  _CopyWithStubImpl$Variables$Query$MyInfo(this._res);

  TRes _res;

  call({String? userID}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$MyInfo {
  Query$MyInfo({required this.posts, required this.$__typename});

  @override
  factory Query$MyInfo.fromJson(Map<String, dynamic> json) =>
      _$Query$MyInfoFromJson(json);

  final Query$MyInfo$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$MyInfoToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$MyInfo) || runtimeType != other.runtimeType)
      return false;
    final l$posts = posts;
    final lOther$posts = other.posts;
    if (l$posts != lOther$posts) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$MyInfo on Query$MyInfo {
  CopyWith$Query$MyInfo<Query$MyInfo> get copyWith =>
      CopyWith$Query$MyInfo(this, (i) => i);
}

abstract class CopyWith$Query$MyInfo<TRes> {
  factory CopyWith$Query$MyInfo(
          Query$MyInfo instance, TRes Function(Query$MyInfo) then) =
      _CopyWithImpl$Query$MyInfo;

  factory CopyWith$Query$MyInfo.stub(TRes res) = _CopyWithStubImpl$Query$MyInfo;

  TRes call({Query$MyInfo$posts? posts, String? $__typename});
  CopyWith$Query$MyInfo$posts<TRes> get posts;
}

class _CopyWithImpl$Query$MyInfo<TRes> implements CopyWith$Query$MyInfo<TRes> {
  _CopyWithImpl$Query$MyInfo(this._instance, this._then);

  final Query$MyInfo _instance;

  final TRes Function(Query$MyInfo) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$MyInfo(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$MyInfo$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$MyInfo$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$MyInfo$posts(local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$MyInfo<TRes>
    implements CopyWith$Query$MyInfo<TRes> {
  _CopyWithStubImpl$Query$MyInfo(this._res);

  TRes _res;

  call({Query$MyInfo$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$MyInfo$posts<TRes> get posts =>
      CopyWith$Query$MyInfo$posts.stub(_res);
}

const documentNodeQueryMyInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'MyInfo'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userID')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
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
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'hasOwnerWith'),
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
                  name: NameNode(value: 'totalCount'),
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
Query$MyInfo _parserFn$Query$MyInfo(Map<String, dynamic> data) =>
    Query$MyInfo.fromJson(data);

class Options$Query$MyInfo extends graphql.QueryOptions<Query$MyInfo> {
  Options$Query$MyInfo(
      {String? operationName,
      Variables$Query$MyInfo? variables,
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
            document: documentNodeQueryMyInfo,
            parserFn: _parserFn$Query$MyInfo);
}

class WatchOptions$Query$MyInfo
    extends graphql.WatchQueryOptions<Query$MyInfo> {
  WatchOptions$Query$MyInfo(
      {String? operationName,
      Variables$Query$MyInfo? variables,
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
            document: documentNodeQueryMyInfo,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$MyInfo);
}

class FetchMoreOptions$Query$MyInfo extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MyInfo(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$MyInfo? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryMyInfo);
}

extension ClientExtension$Query$MyInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MyInfo>> query$MyInfo(
          [Options$Query$MyInfo? options]) async =>
      await this.query(options ?? Options$Query$MyInfo());
  graphql.ObservableQuery<Query$MyInfo> watchQuery$MyInfo(
          [WatchOptions$Query$MyInfo? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MyInfo());
  void writeQuery$MyInfo(
          {required Query$MyInfo data,
          Variables$Query$MyInfo? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryMyInfo),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$MyInfo? readQuery$MyInfo(
      {Variables$Query$MyInfo? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryMyInfo),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$MyInfo.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MyInfo> useQuery$MyInfo(
        [Options$Query$MyInfo? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$MyInfo());
graphql.ObservableQuery<Query$MyInfo> useWatchQuery$MyInfo(
        [WatchOptions$Query$MyInfo? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$MyInfo());

class Query$MyInfo$Widget extends graphql_flutter.Query<Query$MyInfo> {
  Query$MyInfo$Widget(
      {widgets.Key? key,
      Options$Query$MyInfo? options,
      required graphql_flutter.QueryBuilder<Query$MyInfo> builder})
      : super(
            key: key,
            options: options ?? Options$Query$MyInfo(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$MyInfo$posts {
  Query$MyInfo$posts({required this.totalCount, required this.$__typename});

  @override
  factory Query$MyInfo$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$MyInfo$postsFromJson(json);

  final int totalCount;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$MyInfo$postsToJson(this);
  int get hashCode {
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$totalCount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$MyInfo$posts) || runtimeType != other.runtimeType)
      return false;
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$MyInfo$posts on Query$MyInfo$posts {
  CopyWith$Query$MyInfo$posts<Query$MyInfo$posts> get copyWith =>
      CopyWith$Query$MyInfo$posts(this, (i) => i);
}

abstract class CopyWith$Query$MyInfo$posts<TRes> {
  factory CopyWith$Query$MyInfo$posts(
          Query$MyInfo$posts instance, TRes Function(Query$MyInfo$posts) then) =
      _CopyWithImpl$Query$MyInfo$posts;

  factory CopyWith$Query$MyInfo$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$MyInfo$posts;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$MyInfo$posts<TRes>
    implements CopyWith$Query$MyInfo$posts<TRes> {
  _CopyWithImpl$Query$MyInfo$posts(this._instance, this._then);

  final Query$MyInfo$posts _instance;

  final TRes Function(Query$MyInfo$posts) _then;

  static const _undefined = {};

  TRes call(
          {Object? totalCount = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$MyInfo$posts(
          totalCount: totalCount == _undefined || totalCount == null
              ? _instance.totalCount
              : (totalCount as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$MyInfo$posts<TRes>
    implements CopyWith$Query$MyInfo$posts<TRes> {
  _CopyWithStubImpl$Query$MyInfo$posts(this._res);

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$UpdateUser {
  Variables$Mutation$UpdateUser({required this.userID, required this.input});

  @override
  factory Variables$Mutation$UpdateUser.fromJson(Map<String, dynamic> json) =>
      _$Variables$Mutation$UpdateUserFromJson(json);

  final String userID;

  final Input$UpdateUserInput input;

  Map<String, dynamic> toJson() => _$Variables$Mutation$UpdateUserToJson(this);
  int get hashCode {
    final l$userID = userID;
    final l$input = input;
    return Object.hashAll([l$userID, l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$UpdateUser) ||
        runtimeType != other.runtimeType) return false;
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$Mutation$UpdateUser<Variables$Mutation$UpdateUser>
      get copyWith => CopyWith$Variables$Mutation$UpdateUser(this, (i) => i);
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
      _then(Variables$Mutation$UpdateUser(
          userID: userID == _undefined || userID == null
              ? _instance.userID
              : (userID as String),
          input: input == _undefined || input == null
              ? _instance.input
              : (input as Input$UpdateUserInput)));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  TRes _res;

  call({String? userID, Input$UpdateUserInput? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateUser {
  Mutation$UpdateUser({required this.updateUser, required this.$__typename});

  @override
  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) =>
      _$Mutation$UpdateUserFromJson(json);

  final Mutation$UpdateUser$updateUser updateUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$UpdateUserToJson(this);
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateUser) || runtimeType != other.runtimeType)
      return false;
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
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

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateUser$updateUser {
  Mutation$UpdateUser$updateUser(
      {required this.id,
      required this.name,
      this.username,
      this.profile,
      this.avatarURL,
      required this.$__typename});

  @override
  factory Mutation$UpdateUser$updateUser.fromJson(Map<String, dynamic> json) =>
      _$Mutation$UpdateUser$updateUserFromJson(json);

  final String id;

  final String name;

  final String? username;

  final String? profile;

  final String? avatarURL;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$UpdateUser$updateUserToJson(this);
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
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateUser$updateUser) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) return false;
    final l$avatarURL = avatarURL;
    final lOther$avatarURL = other.avatarURL;
    if (l$avatarURL != lOther$avatarURL) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
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
