import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'post_page.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$SearchWorks {
  Variables$Query$SearchWorks({this.searchText});

  @override
  factory Variables$Query$SearchWorks.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$SearchWorksFromJson(json);

  final String? searchText;

  Map<String, dynamic> toJson() => _$Variables$Query$SearchWorksToJson(this);
  int get hashCode {
    final l$searchText = searchText;
    return Object.hashAll([l$searchText]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$SearchWorks) ||
        runtimeType != other.runtimeType) return false;
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) return false;
    return true;
  }

  CopyWith$Variables$Query$SearchWorks<Variables$Query$SearchWorks>
      get copyWith => CopyWith$Variables$Query$SearchWorks(this, (i) => i);
}

abstract class CopyWith$Variables$Query$SearchWorks<TRes> {
  factory CopyWith$Variables$Query$SearchWorks(
          Variables$Query$SearchWorks instance,
          TRes Function(Variables$Query$SearchWorks) then) =
      _CopyWithImpl$Variables$Query$SearchWorks;

  factory CopyWith$Variables$Query$SearchWorks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchWorks;

  TRes call({String? searchText});
}

class _CopyWithImpl$Variables$Query$SearchWorks<TRes>
    implements CopyWith$Variables$Query$SearchWorks<TRes> {
  _CopyWithImpl$Variables$Query$SearchWorks(this._instance, this._then);

  final Variables$Query$SearchWorks _instance;

  final TRes Function(Variables$Query$SearchWorks) _then;

  static const _undefined = {};

  TRes call({Object? searchText = _undefined}) => _then(
      Variables$Query$SearchWorks(
          searchText: searchText == _undefined
              ? _instance.searchText
              : (searchText as String?)));
}

class _CopyWithStubImpl$Variables$Query$SearchWorks<TRes>
    implements CopyWith$Variables$Query$SearchWorks<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchWorks(this._res);

  TRes _res;

  call({String? searchText}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchWorks {
  Query$SearchWorks({required this.works, required this.$__typename});

  @override
  factory Query$SearchWorks.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchWorksFromJson(json);

  final Query$SearchWorks$works works;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchWorksToJson(this);
  int get hashCode {
    final l$works = works;
    final l$$__typename = $__typename;
    return Object.hashAll([l$works, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchWorks) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$SearchWorks on Query$SearchWorks {
  CopyWith$Query$SearchWorks<Query$SearchWorks> get copyWith =>
      CopyWith$Query$SearchWorks(this, (i) => i);
}

abstract class CopyWith$Query$SearchWorks<TRes> {
  factory CopyWith$Query$SearchWorks(
          Query$SearchWorks instance, TRes Function(Query$SearchWorks) then) =
      _CopyWithImpl$Query$SearchWorks;

  factory CopyWith$Query$SearchWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWorks;

  TRes call({Query$SearchWorks$works? works, String? $__typename});
  CopyWith$Query$SearchWorks$works<TRes> get works;
}

class _CopyWithImpl$Query$SearchWorks<TRes>
    implements CopyWith$Query$SearchWorks<TRes> {
  _CopyWithImpl$Query$SearchWorks(this._instance, this._then);

  final Query$SearchWorks _instance;

  final TRes Function(Query$SearchWorks) _then;

  static const _undefined = {};

  TRes call({Object? works = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchWorks(
          works: works == _undefined || works == null
              ? _instance.works
              : (works as Query$SearchWorks$works),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchWorks$works<TRes> get works {
    final local$works = _instance.works;
    return CopyWith$Query$SearchWorks$works(local$works, (e) => call(works: e));
  }
}

class _CopyWithStubImpl$Query$SearchWorks<TRes>
    implements CopyWith$Query$SearchWorks<TRes> {
  _CopyWithStubImpl$Query$SearchWorks(this._res);

  TRes _res;

  call({Query$SearchWorks$works? works, String? $__typename}) => _res;
  CopyWith$Query$SearchWorks$works<TRes> get works =>
      CopyWith$Query$SearchWorks$works.stub(_res);
}

const documentNodeQuerySearchWorks = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchWorks'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'searchText')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
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
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'titleContainsFold'),
                        value:
                            VariableNode(name: NameNode(value: 'searchText')))
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
Query$SearchWorks _parserFn$Query$SearchWorks(Map<String, dynamic> data) =>
    Query$SearchWorks.fromJson(data);

class Options$Query$SearchWorks
    extends graphql.QueryOptions<Query$SearchWorks> {
  Options$Query$SearchWorks(
      {String? operationName,
      Variables$Query$SearchWorks? variables,
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
            document: documentNodeQuerySearchWorks,
            parserFn: _parserFn$Query$SearchWorks);
}

class WatchOptions$Query$SearchWorks
    extends graphql.WatchQueryOptions<Query$SearchWorks> {
  WatchOptions$Query$SearchWorks(
      {String? operationName,
      Variables$Query$SearchWorks? variables,
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
            document: documentNodeQuerySearchWorks,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$SearchWorks);
}

class FetchMoreOptions$Query$SearchWorks extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchWorks(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$SearchWorks? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerySearchWorks);
}

extension ClientExtension$Query$SearchWorks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchWorks>> query$SearchWorks(
          [Options$Query$SearchWorks? options]) async =>
      await this.query(options ?? Options$Query$SearchWorks());
  graphql.ObservableQuery<Query$SearchWorks> watchQuery$SearchWorks(
          [WatchOptions$Query$SearchWorks? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchWorks());
  void writeQuery$SearchWorks(
          {required Query$SearchWorks data,
          Variables$Query$SearchWorks? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQuerySearchWorks),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$SearchWorks? readQuery$SearchWorks(
      {Variables$Query$SearchWorks? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerySearchWorks),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$SearchWorks.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchWorks> useQuery$SearchWorks(
        [Options$Query$SearchWorks? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$SearchWorks());
graphql.ObservableQuery<Query$SearchWorks> useWatchQuery$SearchWorks(
        [WatchOptions$Query$SearchWorks? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$SearchWorks());

class Query$SearchWorks$Widget
    extends graphql_flutter.Query<Query$SearchWorks> {
  Query$SearchWorks$Widget(
      {widgets.Key? key,
      Options$Query$SearchWorks? options,
      required graphql_flutter.QueryBuilder<Query$SearchWorks> builder})
      : super(
            key: key,
            options: options ?? Options$Query$SearchWorks(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchWorks$works {
  Query$SearchWorks$works({this.edges, required this.$__typename});

  @override
  factory Query$SearchWorks$works.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchWorks$worksFromJson(json);

  final List<Query$SearchWorks$works$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchWorks$worksToJson(this);
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
    if (!(other is Query$SearchWorks$works) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$SearchWorks$works on Query$SearchWorks$works {
  CopyWith$Query$SearchWorks$works<Query$SearchWorks$works> get copyWith =>
      CopyWith$Query$SearchWorks$works(this, (i) => i);
}

abstract class CopyWith$Query$SearchWorks$works<TRes> {
  factory CopyWith$Query$SearchWorks$works(Query$SearchWorks$works instance,
          TRes Function(Query$SearchWorks$works) then) =
      _CopyWithImpl$Query$SearchWorks$works;

  factory CopyWith$Query$SearchWorks$works.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWorks$works;

  TRes call({List<Query$SearchWorks$works$edges?>? edges, String? $__typename});
  TRes edges(
      Iterable<Query$SearchWorks$works$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchWorks$works$edges<
                      Query$SearchWorks$works$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchWorks$works<TRes>
    implements CopyWith$Query$SearchWorks$works<TRes> {
  _CopyWithImpl$Query$SearchWorks$works(this._instance, this._then);

  final Query$SearchWorks$works _instance;

  final TRes Function(Query$SearchWorks$works) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchWorks$works(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$SearchWorks$works$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$SearchWorks$works$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchWorks$works$edges<
                          Query$SearchWorks$works$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
                  ? null
                  : CopyWith$Query$SearchWorks$works$edges(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Query$SearchWorks$works<TRes>
    implements CopyWith$Query$SearchWorks$works<TRes> {
  _CopyWithStubImpl$Query$SearchWorks$works(this._res);

  TRes _res;

  call({List<Query$SearchWorks$works$edges?>? edges, String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchWorks$works$edges {
  Query$SearchWorks$works$edges({this.node, required this.$__typename});

  @override
  factory Query$SearchWorks$works$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchWorks$works$edgesFromJson(json);

  final Query$SearchWorks$works$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchWorks$works$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchWorks$works$edges) ||
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

extension UtilityExtension$Query$SearchWorks$works$edges
    on Query$SearchWorks$works$edges {
  CopyWith$Query$SearchWorks$works$edges<Query$SearchWorks$works$edges>
      get copyWith => CopyWith$Query$SearchWorks$works$edges(this, (i) => i);
}

abstract class CopyWith$Query$SearchWorks$works$edges<TRes> {
  factory CopyWith$Query$SearchWorks$works$edges(
          Query$SearchWorks$works$edges instance,
          TRes Function(Query$SearchWorks$works$edges) then) =
      _CopyWithImpl$Query$SearchWorks$works$edges;

  factory CopyWith$Query$SearchWorks$works$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWorks$works$edges;

  TRes call({Query$SearchWorks$works$edges$node? node, String? $__typename});
  CopyWith$Query$SearchWorks$works$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchWorks$works$edges<TRes>
    implements CopyWith$Query$SearchWorks$works$edges<TRes> {
  _CopyWithImpl$Query$SearchWorks$works$edges(this._instance, this._then);

  final Query$SearchWorks$works$edges _instance;

  final TRes Function(Query$SearchWorks$works$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchWorks$works$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$SearchWorks$works$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchWorks$works$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$SearchWorks$works$edges$node.stub(_then(_instance))
        : CopyWith$Query$SearchWorks$works$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SearchWorks$works$edges<TRes>
    implements CopyWith$Query$SearchWorks$works$edges<TRes> {
  _CopyWithStubImpl$Query$SearchWorks$works$edges(this._res);

  TRes _res;

  call({Query$SearchWorks$works$edges$node? node, String? $__typename}) => _res;
  CopyWith$Query$SearchWorks$works$edges$node<TRes> get node =>
      CopyWith$Query$SearchWorks$works$edges$node.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchWorks$works$edges$node {
  Query$SearchWorks$works$edges$node(
      {required this.id, required this.title, required this.$__typename});

  @override
  factory Query$SearchWorks$works$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchWorks$works$edges$nodeFromJson(json);

  final String id;

  final String title;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchWorks$works$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchWorks$works$edges$node) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchWorks$works$edges$node
    on Query$SearchWorks$works$edges$node {
  CopyWith$Query$SearchWorks$works$edges$node<
          Query$SearchWorks$works$edges$node>
      get copyWith =>
          CopyWith$Query$SearchWorks$works$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$SearchWorks$works$edges$node<TRes> {
  factory CopyWith$Query$SearchWorks$works$edges$node(
          Query$SearchWorks$works$edges$node instance,
          TRes Function(Query$SearchWorks$works$edges$node) then) =
      _CopyWithImpl$Query$SearchWorks$works$edges$node;

  factory CopyWith$Query$SearchWorks$works$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWorks$works$edges$node;

  TRes call({String? id, String? title, String? $__typename});
}

class _CopyWithImpl$Query$SearchWorks$works$edges$node<TRes>
    implements CopyWith$Query$SearchWorks$works$edges$node<TRes> {
  _CopyWithImpl$Query$SearchWorks$works$edges$node(this._instance, this._then);

  final Query$SearchWorks$works$edges$node _instance;

  final TRes Function(Query$SearchWorks$works$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchWorks$works$edges$node(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchWorks$works$edges$node<TRes>
    implements CopyWith$Query$SearchWorks$works$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchWorks$works$edges$node(this._res);

  TRes _res;

  call({String? id, String? title, String? $__typename}) => _res;
}
