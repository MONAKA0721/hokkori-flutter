import '../common/common.graphql.dart';
import '../home/home_page.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'search_page.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$TopLetters {
  Variables$Query$TopLetters({this.first});

  @override
  factory Variables$Query$TopLetters.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$TopLettersFromJson(json);

  final int? first;

  Map<String, dynamic> toJson() => _$Variables$Query$TopLettersToJson(this);
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$TopLetters) ||
        runtimeType != other.runtimeType) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    return true;
  }

  CopyWith$Variables$Query$TopLetters<Variables$Query$TopLetters>
      get copyWith => CopyWith$Variables$Query$TopLetters(this, (i) => i);
}

abstract class CopyWith$Variables$Query$TopLetters<TRes> {
  factory CopyWith$Variables$Query$TopLetters(
          Variables$Query$TopLetters instance,
          TRes Function(Variables$Query$TopLetters) then) =
      _CopyWithImpl$Variables$Query$TopLetters;

  factory CopyWith$Variables$Query$TopLetters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TopLetters;

  TRes call({int? first});
}

class _CopyWithImpl$Variables$Query$TopLetters<TRes>
    implements CopyWith$Variables$Query$TopLetters<TRes> {
  _CopyWithImpl$Variables$Query$TopLetters(this._instance, this._then);

  final Variables$Query$TopLetters _instance;

  final TRes Function(Variables$Query$TopLetters) _then;

  static const _undefined = {};

  TRes call({Object? first = _undefined}) => _then(Variables$Query$TopLetters(
      first: first == _undefined ? _instance.first : (first as int?)));
}

class _CopyWithStubImpl$Variables$Query$TopLetters<TRes>
    implements CopyWith$Variables$Query$TopLetters<TRes> {
  _CopyWithStubImpl$Variables$Query$TopLetters(this._res);

  TRes _res;

  call({int? first}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$TopLetters {
  Query$TopLetters({required this.posts, required this.$__typename});

  @override
  factory Query$TopLetters.fromJson(Map<String, dynamic> json) =>
      _$Query$TopLettersFromJson(json);

  final Query$TopLetters$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopLettersToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopLetters) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$TopLetters on Query$TopLetters {
  CopyWith$Query$TopLetters<Query$TopLetters> get copyWith =>
      CopyWith$Query$TopLetters(this, (i) => i);
}

abstract class CopyWith$Query$TopLetters<TRes> {
  factory CopyWith$Query$TopLetters(
          Query$TopLetters instance, TRes Function(Query$TopLetters) then) =
      _CopyWithImpl$Query$TopLetters;

  factory CopyWith$Query$TopLetters.stub(TRes res) =
      _CopyWithStubImpl$Query$TopLetters;

  TRes call({Query$TopLetters$posts? posts, String? $__typename});
  CopyWith$Query$TopLetters$posts<TRes> get posts;
}

class _CopyWithImpl$Query$TopLetters<TRes>
    implements CopyWith$Query$TopLetters<TRes> {
  _CopyWithImpl$Query$TopLetters(this._instance, this._then);

  final Query$TopLetters _instance;

  final TRes Function(Query$TopLetters) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$TopLetters(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$TopLetters$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$TopLetters$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$TopLetters$posts(local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$TopLetters<TRes>
    implements CopyWith$Query$TopLetters<TRes> {
  _CopyWithStubImpl$Query$TopLetters(this._res);

  TRes _res;

  call({Query$TopLetters$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$TopLetters$posts<TRes> get posts =>
      CopyWith$Query$TopLetters$posts.stub(_res);
}

const documentNodeQueryTopLetters = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TopLetters'),
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
            name: NameNode(value: 'posts'),
            alias: null,
            arguments: [
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
                        value: EnumValueNode(name: NameNode(value: 'letter')))
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
  fragmentDefinitionLetterSummary,
]);
Query$TopLetters _parserFn$Query$TopLetters(Map<String, dynamic> data) =>
    Query$TopLetters.fromJson(data);

class Options$Query$TopLetters extends graphql.QueryOptions<Query$TopLetters> {
  Options$Query$TopLetters(
      {String? operationName,
      Variables$Query$TopLetters? variables,
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
            document: documentNodeQueryTopLetters,
            parserFn: _parserFn$Query$TopLetters);
}

class WatchOptions$Query$TopLetters
    extends graphql.WatchQueryOptions<Query$TopLetters> {
  WatchOptions$Query$TopLetters(
      {String? operationName,
      Variables$Query$TopLetters? variables,
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
            document: documentNodeQueryTopLetters,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$TopLetters);
}

class FetchMoreOptions$Query$TopLetters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TopLetters(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$TopLetters? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryTopLetters);
}

extension ClientExtension$Query$TopLetters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TopLetters>> query$TopLetters(
          [Options$Query$TopLetters? options]) async =>
      await this.query(options ?? Options$Query$TopLetters());
  graphql.ObservableQuery<Query$TopLetters> watchQuery$TopLetters(
          [WatchOptions$Query$TopLetters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$TopLetters());
  void writeQuery$TopLetters(
          {required Query$TopLetters data,
          Variables$Query$TopLetters? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryTopLetters),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$TopLetters? readQuery$TopLetters(
      {Variables$Query$TopLetters? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryTopLetters),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$TopLetters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TopLetters> useQuery$TopLetters(
        [Options$Query$TopLetters? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$TopLetters());
graphql.ObservableQuery<Query$TopLetters> useWatchQuery$TopLetters(
        [WatchOptions$Query$TopLetters? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$TopLetters());

class Query$TopLetters$Widget extends graphql_flutter.Query<Query$TopLetters> {
  Query$TopLetters$Widget(
      {widgets.Key? key,
      Options$Query$TopLetters? options,
      required graphql_flutter.QueryBuilder<Query$TopLetters> builder})
      : super(
            key: key,
            options: options ?? Options$Query$TopLetters(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$TopLetters$posts {
  Query$TopLetters$posts({this.edges, required this.$__typename});

  @override
  factory Query$TopLetters$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$TopLetters$postsFromJson(json);

  final List<Query$TopLetters$posts$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopLetters$postsToJson(this);
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
    if (!(other is Query$TopLetters$posts) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$TopLetters$posts on Query$TopLetters$posts {
  CopyWith$Query$TopLetters$posts<Query$TopLetters$posts> get copyWith =>
      CopyWith$Query$TopLetters$posts(this, (i) => i);
}

abstract class CopyWith$Query$TopLetters$posts<TRes> {
  factory CopyWith$Query$TopLetters$posts(Query$TopLetters$posts instance,
          TRes Function(Query$TopLetters$posts) then) =
      _CopyWithImpl$Query$TopLetters$posts;

  factory CopyWith$Query$TopLetters$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$TopLetters$posts;

  TRes call({List<Query$TopLetters$posts$edges?>? edges, String? $__typename});
  TRes edges(
      Iterable<Query$TopLetters$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$TopLetters$posts$edges<
                      Query$TopLetters$posts$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$TopLetters$posts<TRes>
    implements CopyWith$Query$TopLetters$posts<TRes> {
  _CopyWithImpl$Query$TopLetters$posts(this._instance, this._then);

  final Query$TopLetters$posts _instance;

  final TRes Function(Query$TopLetters$posts) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$TopLetters$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$TopLetters$posts$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$TopLetters$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$TopLetters$posts$edges<
                          Query$TopLetters$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$TopLetters$posts$edges(e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$TopLetters$posts<TRes>
    implements CopyWith$Query$TopLetters$posts<TRes> {
  _CopyWithStubImpl$Query$TopLetters$posts(this._res);

  TRes _res;

  call({List<Query$TopLetters$posts$edges?>? edges, String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$TopLetters$posts$edges {
  Query$TopLetters$posts$edges({this.node, required this.$__typename});

  @override
  factory Query$TopLetters$posts$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$TopLetters$posts$edgesFromJson(json);

  final Fragment$LetterSummary? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopLetters$posts$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopLetters$posts$edges) ||
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

extension UtilityExtension$Query$TopLetters$posts$edges
    on Query$TopLetters$posts$edges {
  CopyWith$Query$TopLetters$posts$edges<Query$TopLetters$posts$edges>
      get copyWith => CopyWith$Query$TopLetters$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$TopLetters$posts$edges<TRes> {
  factory CopyWith$Query$TopLetters$posts$edges(
          Query$TopLetters$posts$edges instance,
          TRes Function(Query$TopLetters$posts$edges) then) =
      _CopyWithImpl$Query$TopLetters$posts$edges;

  factory CopyWith$Query$TopLetters$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$TopLetters$posts$edges;

  TRes call({Fragment$LetterSummary? node, String? $__typename});
  CopyWith$Fragment$LetterSummary<TRes> get node;
}

class _CopyWithImpl$Query$TopLetters$posts$edges<TRes>
    implements CopyWith$Query$TopLetters$posts$edges<TRes> {
  _CopyWithImpl$Query$TopLetters$posts$edges(this._instance, this._then);

  final Query$TopLetters$posts$edges _instance;

  final TRes Function(Query$TopLetters$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$TopLetters$posts$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Fragment$LetterSummary?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$LetterSummary<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$LetterSummary.stub(_then(_instance))
        : CopyWith$Fragment$LetterSummary(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$TopLetters$posts$edges<TRes>
    implements CopyWith$Query$TopLetters$posts$edges<TRes> {
  _CopyWithStubImpl$Query$TopLetters$posts$edges(this._res);

  TRes _res;

  call({Fragment$LetterSummary? node, String? $__typename}) => _res;
  CopyWith$Fragment$LetterSummary<TRes> get node =>
      CopyWith$Fragment$LetterSummary.stub(_res);
}
