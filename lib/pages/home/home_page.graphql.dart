import '../common/common.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'home_page.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$HomePraises {
  Variables$Query$HomePraises({this.first, this.after});

  @override
  factory Variables$Query$HomePraises.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$HomePraisesFromJson(json);

  final int? first;

  final String? after;

  Map<String, dynamic> toJson() => _$Variables$Query$HomePraisesToJson(this);
  int get hashCode {
    final l$first = first;
    final l$after = after;
    return Object.hashAll([l$first, l$after]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$HomePraises) ||
        runtimeType != other.runtimeType) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
    return true;
  }

  CopyWith$Variables$Query$HomePraises<Variables$Query$HomePraises>
      get copyWith => CopyWith$Variables$Query$HomePraises(this, (i) => i);
}

abstract class CopyWith$Variables$Query$HomePraises<TRes> {
  factory CopyWith$Variables$Query$HomePraises(
          Variables$Query$HomePraises instance,
          TRes Function(Variables$Query$HomePraises) then) =
      _CopyWithImpl$Variables$Query$HomePraises;

  factory CopyWith$Variables$Query$HomePraises.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$HomePraises;

  TRes call({int? first, String? after});
}

class _CopyWithImpl$Variables$Query$HomePraises<TRes>
    implements CopyWith$Variables$Query$HomePraises<TRes> {
  _CopyWithImpl$Variables$Query$HomePraises(this._instance, this._then);

  final Variables$Query$HomePraises _instance;

  final TRes Function(Variables$Query$HomePraises) _then;

  static const _undefined = {};

  TRes call({Object? first = _undefined, Object? after = _undefined}) =>
      _then(Variables$Query$HomePraises(
          first: first == _undefined ? _instance.first : (first as int?),
          after: after == _undefined ? _instance.after : (after as String?)));
}

class _CopyWithStubImpl$Variables$Query$HomePraises<TRes>
    implements CopyWith$Variables$Query$HomePraises<TRes> {
  _CopyWithStubImpl$Variables$Query$HomePraises(this._res);

  TRes _res;

  call({int? first, String? after}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$HomePraises {
  Query$HomePraises({required this.posts, required this.$__typename});

  @override
  factory Query$HomePraises.fromJson(Map<String, dynamic> json) =>
      _$Query$HomePraisesFromJson(json);

  final Query$HomePraises$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HomePraisesToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HomePraises) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$HomePraises on Query$HomePraises {
  CopyWith$Query$HomePraises<Query$HomePraises> get copyWith =>
      CopyWith$Query$HomePraises(this, (i) => i);
}

abstract class CopyWith$Query$HomePraises<TRes> {
  factory CopyWith$Query$HomePraises(
          Query$HomePraises instance, TRes Function(Query$HomePraises) then) =
      _CopyWithImpl$Query$HomePraises;

  factory CopyWith$Query$HomePraises.stub(TRes res) =
      _CopyWithStubImpl$Query$HomePraises;

  TRes call({Query$HomePraises$posts? posts, String? $__typename});
  CopyWith$Query$HomePraises$posts<TRes> get posts;
}

class _CopyWithImpl$Query$HomePraises<TRes>
    implements CopyWith$Query$HomePraises<TRes> {
  _CopyWithImpl$Query$HomePraises(this._instance, this._then);

  final Query$HomePraises _instance;

  final TRes Function(Query$HomePraises) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$HomePraises(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$HomePraises$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$HomePraises$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$HomePraises$posts(local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$HomePraises<TRes>
    implements CopyWith$Query$HomePraises<TRes> {
  _CopyWithStubImpl$Query$HomePraises(this._res);

  TRes _res;

  call({Query$HomePraises$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$HomePraises$posts<TRes> get posts =>
      CopyWith$Query$HomePraises$posts.stub(_res);
}

const documentNodeQueryHomePraises = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'HomePraises'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'Cursor'), isNonNull: false),
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
                  name: NameNode(value: 'after'),
                  value: VariableNode(name: NameNode(value: 'after'))),
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first'))),
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
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'praise')))
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
                          FragmentSpreadNode(
                              name: NameNode(value: 'PraiseSummary'),
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
]);
Query$HomePraises _parserFn$Query$HomePraises(Map<String, dynamic> data) =>
    Query$HomePraises.fromJson(data);

class Options$Query$HomePraises
    extends graphql.QueryOptions<Query$HomePraises> {
  Options$Query$HomePraises(
      {String? operationName,
      Variables$Query$HomePraises? variables,
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
            document: documentNodeQueryHomePraises,
            parserFn: _parserFn$Query$HomePraises);
}

class WatchOptions$Query$HomePraises
    extends graphql.WatchQueryOptions<Query$HomePraises> {
  WatchOptions$Query$HomePraises(
      {String? operationName,
      Variables$Query$HomePraises? variables,
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
            document: documentNodeQueryHomePraises,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$HomePraises);
}

class FetchMoreOptions$Query$HomePraises extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$HomePraises(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$HomePraises? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryHomePraises);
}

extension ClientExtension$Query$HomePraises on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$HomePraises>> query$HomePraises(
          [Options$Query$HomePraises? options]) async =>
      await this.query(options ?? Options$Query$HomePraises());
  graphql.ObservableQuery<Query$HomePraises> watchQuery$HomePraises(
          [WatchOptions$Query$HomePraises? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$HomePraises());
  void writeQuery$HomePraises(
          {required Query$HomePraises data,
          Variables$Query$HomePraises? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryHomePraises),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$HomePraises? readQuery$HomePraises(
      {Variables$Query$HomePraises? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryHomePraises),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$HomePraises.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$HomePraises> useQuery$HomePraises(
        [Options$Query$HomePraises? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$HomePraises());
graphql.ObservableQuery<Query$HomePraises> useWatchQuery$HomePraises(
        [WatchOptions$Query$HomePraises? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$HomePraises());

class Query$HomePraises$Widget
    extends graphql_flutter.Query<Query$HomePraises> {
  Query$HomePraises$Widget(
      {widgets.Key? key,
      Options$Query$HomePraises? options,
      required graphql_flutter.QueryBuilder<Query$HomePraises> builder})
      : super(
            key: key,
            options: options ?? Options$Query$HomePraises(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$HomePraises$posts {
  Query$HomePraises$posts(
      {this.edges, required this.pageInfo, required this.$__typename});

  @override
  factory Query$HomePraises$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$HomePraises$postsFromJson(json);

  final List<Query$HomePraises$posts$edges?>? edges;

  final Query$HomePraises$posts$pageInfo pageInfo;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HomePraises$postsToJson(this);
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
    if (identical(this, other)) return true;
    if (!(other is Query$HomePraises$posts) || runtimeType != other.runtimeType)
      return false;
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) return false;
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) return false;
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }

    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$HomePraises$posts on Query$HomePraises$posts {
  CopyWith$Query$HomePraises$posts<Query$HomePraises$posts> get copyWith =>
      CopyWith$Query$HomePraises$posts(this, (i) => i);
}

abstract class CopyWith$Query$HomePraises$posts<TRes> {
  factory CopyWith$Query$HomePraises$posts(Query$HomePraises$posts instance,
          TRes Function(Query$HomePraises$posts) then) =
      _CopyWithImpl$Query$HomePraises$posts;

  factory CopyWith$Query$HomePraises$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$HomePraises$posts;

  TRes call(
      {List<Query$HomePraises$posts$edges?>? edges,
      Query$HomePraises$posts$pageInfo? pageInfo,
      String? $__typename});
  TRes edges(
      Iterable<Query$HomePraises$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$HomePraises$posts$edges<
                      Query$HomePraises$posts$edges>?>?)
          _fn);
  CopyWith$Query$HomePraises$posts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$HomePraises$posts<TRes>
    implements CopyWith$Query$HomePraises$posts<TRes> {
  _CopyWithImpl$Query$HomePraises$posts(this._instance, this._then);

  final Query$HomePraises$posts _instance;

  final TRes Function(Query$HomePraises$posts) _then;

  static const _undefined = {};

  TRes call(
          {Object? edges = _undefined,
          Object? pageInfo = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$HomePraises$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$HomePraises$posts$edges?>?),
          pageInfo: pageInfo == _undefined || pageInfo == null
              ? _instance.pageInfo
              : (pageInfo as Query$HomePraises$posts$pageInfo),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$HomePraises$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$HomePraises$posts$edges<
                          Query$HomePraises$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
                  ? null
                  : CopyWith$Query$HomePraises$posts$edges(e, (i) => i)))
              ?.toList());
  CopyWith$Query$HomePraises$posts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$HomePraises$posts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$HomePraises$posts<TRes>
    implements CopyWith$Query$HomePraises$posts<TRes> {
  _CopyWithStubImpl$Query$HomePraises$posts(this._res);

  TRes _res;

  call(
          {List<Query$HomePraises$posts$edges?>? edges,
          Query$HomePraises$posts$pageInfo? pageInfo,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$HomePraises$posts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$HomePraises$posts$pageInfo.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$HomePraises$posts$edges {
  Query$HomePraises$posts$edges({this.node, required this.$__typename});

  @override
  factory Query$HomePraises$posts$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$HomePraises$posts$edgesFromJson(json);

  final Fragment$PraiseSummary? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HomePraises$posts$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HomePraises$posts$edges) ||
        runtimeType != other.runtimeType) return false;
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$HomePraises$posts$edges
    on Query$HomePraises$posts$edges {
  CopyWith$Query$HomePraises$posts$edges<Query$HomePraises$posts$edges>
      get copyWith => CopyWith$Query$HomePraises$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$HomePraises$posts$edges<TRes> {
  factory CopyWith$Query$HomePraises$posts$edges(
          Query$HomePraises$posts$edges instance,
          TRes Function(Query$HomePraises$posts$edges) then) =
      _CopyWithImpl$Query$HomePraises$posts$edges;

  factory CopyWith$Query$HomePraises$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$HomePraises$posts$edges;

  TRes call({Fragment$PraiseSummary? node, String? $__typename});
  CopyWith$Fragment$PraiseSummary<TRes> get node;
}

class _CopyWithImpl$Query$HomePraises$posts$edges<TRes>
    implements CopyWith$Query$HomePraises$posts$edges<TRes> {
  _CopyWithImpl$Query$HomePraises$posts$edges(this._instance, this._then);

  final Query$HomePraises$posts$edges _instance;

  final TRes Function(Query$HomePraises$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$HomePraises$posts$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Fragment$PraiseSummary?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$PraiseSummary<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$PraiseSummary.stub(_then(_instance))
        : CopyWith$Fragment$PraiseSummary(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$HomePraises$posts$edges<TRes>
    implements CopyWith$Query$HomePraises$posts$edges<TRes> {
  _CopyWithStubImpl$Query$HomePraises$posts$edges(this._res);

  TRes _res;

  call({Fragment$PraiseSummary? node, String? $__typename}) => _res;
  CopyWith$Fragment$PraiseSummary<TRes> get node =>
      CopyWith$Fragment$PraiseSummary.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$HomePraises$posts$pageInfo {
  Query$HomePraises$posts$pageInfo(
      {this.endCursor, required this.hasNextPage, required this.$__typename});

  @override
  factory Query$HomePraises$posts$pageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Query$HomePraises$posts$pageInfoFromJson(json);

  final String? endCursor;

  final bool hasNextPage;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$HomePraises$posts$pageInfoToJson(this);
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$endCursor, l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HomePraises$posts$pageInfo) ||
        runtimeType != other.runtimeType) return false;
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) return false;
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$HomePraises$posts$pageInfo
    on Query$HomePraises$posts$pageInfo {
  CopyWith$Query$HomePraises$posts$pageInfo<Query$HomePraises$posts$pageInfo>
      get copyWith => CopyWith$Query$HomePraises$posts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$HomePraises$posts$pageInfo<TRes> {
  factory CopyWith$Query$HomePraises$posts$pageInfo(
          Query$HomePraises$posts$pageInfo instance,
          TRes Function(Query$HomePraises$posts$pageInfo) then) =
      _CopyWithImpl$Query$HomePraises$posts$pageInfo;

  factory CopyWith$Query$HomePraises$posts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$HomePraises$posts$pageInfo;

  TRes call({String? endCursor, bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$HomePraises$posts$pageInfo<TRes>
    implements CopyWith$Query$HomePraises$posts$pageInfo<TRes> {
  _CopyWithImpl$Query$HomePraises$posts$pageInfo(this._instance, this._then);

  final Query$HomePraises$posts$pageInfo _instance;

  final TRes Function(Query$HomePraises$posts$pageInfo) _then;

  static const _undefined = {};

  TRes call(
          {Object? endCursor = _undefined,
          Object? hasNextPage = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$HomePraises$posts$pageInfo(
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

class _CopyWithStubImpl$Query$HomePraises$posts$pageInfo<TRes>
    implements CopyWith$Query$HomePraises$posts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$HomePraises$posts$pageInfo(this._res);

  TRes _res;

  call({String? endCursor, bool? hasNextPage, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$TopWorks {
  Variables$Query$TopWorks({this.first});

  @override
  factory Variables$Query$TopWorks.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$TopWorksFromJson(json);

  final int? first;

  Map<String, dynamic> toJson() => _$Variables$Query$TopWorksToJson(this);
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$TopWorks) ||
        runtimeType != other.runtimeType) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    return true;
  }

  CopyWith$Variables$Query$TopWorks<Variables$Query$TopWorks> get copyWith =>
      CopyWith$Variables$Query$TopWorks(this, (i) => i);
}

abstract class CopyWith$Variables$Query$TopWorks<TRes> {
  factory CopyWith$Variables$Query$TopWorks(Variables$Query$TopWorks instance,
          TRes Function(Variables$Query$TopWorks) then) =
      _CopyWithImpl$Variables$Query$TopWorks;

  factory CopyWith$Variables$Query$TopWorks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TopWorks;

  TRes call({int? first});
}

class _CopyWithImpl$Variables$Query$TopWorks<TRes>
    implements CopyWith$Variables$Query$TopWorks<TRes> {
  _CopyWithImpl$Variables$Query$TopWorks(this._instance, this._then);

  final Variables$Query$TopWorks _instance;

  final TRes Function(Variables$Query$TopWorks) _then;

  static const _undefined = {};

  TRes call({Object? first = _undefined}) => _then(Variables$Query$TopWorks(
      first: first == _undefined ? _instance.first : (first as int?)));
}

class _CopyWithStubImpl$Variables$Query$TopWorks<TRes>
    implements CopyWith$Variables$Query$TopWorks<TRes> {
  _CopyWithStubImpl$Variables$Query$TopWorks(this._res);

  TRes _res;

  call({int? first}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$TopWorks {
  Query$TopWorks({required this.works, required this.$__typename});

  @override
  factory Query$TopWorks.fromJson(Map<String, dynamic> json) =>
      _$Query$TopWorksFromJson(json);

  final Query$TopWorks$works works;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopWorksToJson(this);
  int get hashCode {
    final l$works = works;
    final l$$__typename = $__typename;
    return Object.hashAll([l$works, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopWorks) || runtimeType != other.runtimeType)
      return false;
    final l$works = works;
    final lOther$works = other.works;
    if (l$works != lOther$works) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$TopWorks on Query$TopWorks {
  CopyWith$Query$TopWorks<Query$TopWorks> get copyWith =>
      CopyWith$Query$TopWorks(this, (i) => i);
}

abstract class CopyWith$Query$TopWorks<TRes> {
  factory CopyWith$Query$TopWorks(
          Query$TopWorks instance, TRes Function(Query$TopWorks) then) =
      _CopyWithImpl$Query$TopWorks;

  factory CopyWith$Query$TopWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$TopWorks;

  TRes call({Query$TopWorks$works? works, String? $__typename});
  CopyWith$Query$TopWorks$works<TRes> get works;
}

class _CopyWithImpl$Query$TopWorks<TRes>
    implements CopyWith$Query$TopWorks<TRes> {
  _CopyWithImpl$Query$TopWorks(this._instance, this._then);

  final Query$TopWorks _instance;

  final TRes Function(Query$TopWorks) _then;

  static const _undefined = {};

  TRes call({Object? works = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$TopWorks(
          works: works == _undefined || works == null
              ? _instance.works
              : (works as Query$TopWorks$works),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$TopWorks$works<TRes> get works {
    final local$works = _instance.works;
    return CopyWith$Query$TopWorks$works(local$works, (e) => call(works: e));
  }
}

class _CopyWithStubImpl$Query$TopWorks<TRes>
    implements CopyWith$Query$TopWorks<TRes> {
  _CopyWithStubImpl$Query$TopWorks(this._res);

  TRes _res;

  call({Query$TopWorks$works? works, String? $__typename}) => _res;
  CopyWith$Query$TopWorks$works<TRes> get works =>
      CopyWith$Query$TopWorks$works.stub(_res);
}

const documentNodeQueryTopWorks = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TopWorks'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first')))
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
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'title'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'thumbnail'),
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
Query$TopWorks _parserFn$Query$TopWorks(Map<String, dynamic> data) =>
    Query$TopWorks.fromJson(data);

class Options$Query$TopWorks extends graphql.QueryOptions<Query$TopWorks> {
  Options$Query$TopWorks(
      {String? operationName,
      Variables$Query$TopWorks? variables,
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
            document: documentNodeQueryTopWorks,
            parserFn: _parserFn$Query$TopWorks);
}

class WatchOptions$Query$TopWorks
    extends graphql.WatchQueryOptions<Query$TopWorks> {
  WatchOptions$Query$TopWorks(
      {String? operationName,
      Variables$Query$TopWorks? variables,
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
            document: documentNodeQueryTopWorks,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$TopWorks);
}

class FetchMoreOptions$Query$TopWorks extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TopWorks(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$TopWorks? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryTopWorks);
}

extension ClientExtension$Query$TopWorks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TopWorks>> query$TopWorks(
          [Options$Query$TopWorks? options]) async =>
      await this.query(options ?? Options$Query$TopWorks());
  graphql.ObservableQuery<Query$TopWorks> watchQuery$TopWorks(
          [WatchOptions$Query$TopWorks? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$TopWorks());
  void writeQuery$TopWorks(
          {required Query$TopWorks data,
          Variables$Query$TopWorks? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryTopWorks),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$TopWorks? readQuery$TopWorks(
      {Variables$Query$TopWorks? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryTopWorks),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$TopWorks.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TopWorks> useQuery$TopWorks(
        [Options$Query$TopWorks? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$TopWorks());
graphql.ObservableQuery<Query$TopWorks> useWatchQuery$TopWorks(
        [WatchOptions$Query$TopWorks? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$TopWorks());

class Query$TopWorks$Widget extends graphql_flutter.Query<Query$TopWorks> {
  Query$TopWorks$Widget(
      {widgets.Key? key,
      Options$Query$TopWorks? options,
      required graphql_flutter.QueryBuilder<Query$TopWorks> builder})
      : super(
            key: key,
            options: options ?? Options$Query$TopWorks(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$TopWorks$works {
  Query$TopWorks$works({this.edges, required this.$__typename});

  @override
  factory Query$TopWorks$works.fromJson(Map<String, dynamic> json) =>
      _$Query$TopWorks$worksFromJson(json);

  final List<Query$TopWorks$works$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopWorks$worksToJson(this);
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
    if (identical(this, other)) return true;
    if (!(other is Query$TopWorks$works) || runtimeType != other.runtimeType)
      return false;
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) return false;
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) return false;
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$TopWorks$works on Query$TopWorks$works {
  CopyWith$Query$TopWorks$works<Query$TopWorks$works> get copyWith =>
      CopyWith$Query$TopWorks$works(this, (i) => i);
}

abstract class CopyWith$Query$TopWorks$works<TRes> {
  factory CopyWith$Query$TopWorks$works(Query$TopWorks$works instance,
          TRes Function(Query$TopWorks$works) then) =
      _CopyWithImpl$Query$TopWorks$works;

  factory CopyWith$Query$TopWorks$works.stub(TRes res) =
      _CopyWithStubImpl$Query$TopWorks$works;

  TRes call({List<Query$TopWorks$works$edges?>? edges, String? $__typename});
  TRes edges(
      Iterable<Query$TopWorks$works$edges?>? Function(
              Iterable<
                  CopyWith$Query$TopWorks$works$edges<
                      Query$TopWorks$works$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$TopWorks$works<TRes>
    implements CopyWith$Query$TopWorks$works<TRes> {
  _CopyWithImpl$Query$TopWorks$works(this._instance, this._then);

  final Query$TopWorks$works _instance;

  final TRes Function(Query$TopWorks$works) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$TopWorks$works(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$TopWorks$works$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$TopWorks$works$edges?>? Function(
                  Iterable<
                      CopyWith$Query$TopWorks$works$edges<
                          Query$TopWorks$works$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$TopWorks$works$edges(e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$TopWorks$works<TRes>
    implements CopyWith$Query$TopWorks$works<TRes> {
  _CopyWithStubImpl$Query$TopWorks$works(this._res);

  TRes _res;

  call({List<Query$TopWorks$works$edges?>? edges, String? $__typename}) => _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$TopWorks$works$edges {
  Query$TopWorks$works$edges({this.node, required this.$__typename});

  @override
  factory Query$TopWorks$works$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$TopWorks$works$edgesFromJson(json);

  final Query$TopWorks$works$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopWorks$works$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopWorks$works$edges) ||
        runtimeType != other.runtimeType) return false;
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$TopWorks$works$edges
    on Query$TopWorks$works$edges {
  CopyWith$Query$TopWorks$works$edges<Query$TopWorks$works$edges>
      get copyWith => CopyWith$Query$TopWorks$works$edges(this, (i) => i);
}

abstract class CopyWith$Query$TopWorks$works$edges<TRes> {
  factory CopyWith$Query$TopWorks$works$edges(
          Query$TopWorks$works$edges instance,
          TRes Function(Query$TopWorks$works$edges) then) =
      _CopyWithImpl$Query$TopWorks$works$edges;

  factory CopyWith$Query$TopWorks$works$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$TopWorks$works$edges;

  TRes call({Query$TopWorks$works$edges$node? node, String? $__typename});
  CopyWith$Query$TopWorks$works$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$TopWorks$works$edges<TRes>
    implements CopyWith$Query$TopWorks$works$edges<TRes> {
  _CopyWithImpl$Query$TopWorks$works$edges(this._instance, this._then);

  final Query$TopWorks$works$edges _instance;

  final TRes Function(Query$TopWorks$works$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$TopWorks$works$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$TopWorks$works$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$TopWorks$works$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$TopWorks$works$edges$node.stub(_then(_instance))
        : CopyWith$Query$TopWorks$works$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$TopWorks$works$edges<TRes>
    implements CopyWith$Query$TopWorks$works$edges<TRes> {
  _CopyWithStubImpl$Query$TopWorks$works$edges(this._res);

  TRes _res;

  call({Query$TopWorks$works$edges$node? node, String? $__typename}) => _res;
  CopyWith$Query$TopWorks$works$edges$node<TRes> get node =>
      CopyWith$Query$TopWorks$works$edges$node.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$TopWorks$works$edges$node {
  Query$TopWorks$works$edges$node(
      {required this.id,
      required this.title,
      this.thumbnail,
      required this.$__typename});

  @override
  factory Query$TopWorks$works$edges$node.fromJson(Map<String, dynamic> json) =>
      _$Query$TopWorks$works$edges$nodeFromJson(json);

  final String id;

  final String title;

  final String? thumbnail;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$TopWorks$works$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$thumbnail = thumbnail;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$title, l$thumbnail, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopWorks$works$edges$node) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$TopWorks$works$edges$node
    on Query$TopWorks$works$edges$node {
  CopyWith$Query$TopWorks$works$edges$node<Query$TopWorks$works$edges$node>
      get copyWith => CopyWith$Query$TopWorks$works$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$TopWorks$works$edges$node<TRes> {
  factory CopyWith$Query$TopWorks$works$edges$node(
          Query$TopWorks$works$edges$node instance,
          TRes Function(Query$TopWorks$works$edges$node) then) =
      _CopyWithImpl$Query$TopWorks$works$edges$node;

  factory CopyWith$Query$TopWorks$works$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$TopWorks$works$edges$node;

  TRes call(
      {String? id, String? title, String? thumbnail, String? $__typename});
}

class _CopyWithImpl$Query$TopWorks$works$edges$node<TRes>
    implements CopyWith$Query$TopWorks$works$edges$node<TRes> {
  _CopyWithImpl$Query$TopWorks$works$edges$node(this._instance, this._then);

  final Query$TopWorks$works$edges$node _instance;

  final TRes Function(Query$TopWorks$works$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? thumbnail = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopWorks$works$edges$node(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          thumbnail: thumbnail == _undefined
              ? _instance.thumbnail
              : (thumbnail as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$TopWorks$works$edges$node<TRes>
    implements CopyWith$Query$TopWorks$works$edges$node<TRes> {
  _CopyWithStubImpl$Query$TopWorks$works$edges$node(this._res);

  TRes _res;

  call({String? id, String? title, String? thumbnail, String? $__typename}) =>
      _res;
}
