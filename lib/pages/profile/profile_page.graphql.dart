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
