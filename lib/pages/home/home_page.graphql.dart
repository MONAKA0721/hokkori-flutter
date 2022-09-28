import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'home_page.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$HomeWorks {
  Variables$Query$HomeWorks({this.first});

  @override
  factory Variables$Query$HomeWorks.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$HomeWorksFromJson(json);

  final int? first;

  Map<String, dynamic> toJson() => _$Variables$Query$HomeWorksToJson(this);
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$HomeWorks) ||
        runtimeType != other.runtimeType) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    return true;
  }

  CopyWith$Variables$Query$HomeWorks<Variables$Query$HomeWorks> get copyWith =>
      CopyWith$Variables$Query$HomeWorks(this, (i) => i);
}

abstract class CopyWith$Variables$Query$HomeWorks<TRes> {
  factory CopyWith$Variables$Query$HomeWorks(Variables$Query$HomeWorks instance,
          TRes Function(Variables$Query$HomeWorks) then) =
      _CopyWithImpl$Variables$Query$HomeWorks;

  factory CopyWith$Variables$Query$HomeWorks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$HomeWorks;

  TRes call({int? first});
}

class _CopyWithImpl$Variables$Query$HomeWorks<TRes>
    implements CopyWith$Variables$Query$HomeWorks<TRes> {
  _CopyWithImpl$Variables$Query$HomeWorks(this._instance, this._then);

  final Variables$Query$HomeWorks _instance;

  final TRes Function(Variables$Query$HomeWorks) _then;

  static const _undefined = {};

  TRes call({Object? first = _undefined}) => _then(Variables$Query$HomeWorks(
      first: first == _undefined ? _instance.first : (first as int?)));
}

class _CopyWithStubImpl$Variables$Query$HomeWorks<TRes>
    implements CopyWith$Variables$Query$HomeWorks<TRes> {
  _CopyWithStubImpl$Variables$Query$HomeWorks(this._res);

  TRes _res;

  call({int? first}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$HomeWorks {
  Query$HomeWorks({required this.works, required this.$__typename});

  @override
  factory Query$HomeWorks.fromJson(Map<String, dynamic> json) =>
      _$Query$HomeWorksFromJson(json);

  final Query$HomeWorks$works works;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HomeWorksToJson(this);
  int get hashCode {
    final l$works = works;
    final l$$__typename = $__typename;
    return Object.hashAll([l$works, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HomeWorks) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$HomeWorks on Query$HomeWorks {
  CopyWith$Query$HomeWorks<Query$HomeWorks> get copyWith =>
      CopyWith$Query$HomeWorks(this, (i) => i);
}

abstract class CopyWith$Query$HomeWorks<TRes> {
  factory CopyWith$Query$HomeWorks(
          Query$HomeWorks instance, TRes Function(Query$HomeWorks) then) =
      _CopyWithImpl$Query$HomeWorks;

  factory CopyWith$Query$HomeWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeWorks;

  TRes call({Query$HomeWorks$works? works, String? $__typename});
  CopyWith$Query$HomeWorks$works<TRes> get works;
}

class _CopyWithImpl$Query$HomeWorks<TRes>
    implements CopyWith$Query$HomeWorks<TRes> {
  _CopyWithImpl$Query$HomeWorks(this._instance, this._then);

  final Query$HomeWorks _instance;

  final TRes Function(Query$HomeWorks) _then;

  static const _undefined = {};

  TRes call({Object? works = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$HomeWorks(
          works: works == _undefined || works == null
              ? _instance.works
              : (works as Query$HomeWorks$works),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$HomeWorks$works<TRes> get works {
    final local$works = _instance.works;
    return CopyWith$Query$HomeWorks$works(local$works, (e) => call(works: e));
  }
}

class _CopyWithStubImpl$Query$HomeWorks<TRes>
    implements CopyWith$Query$HomeWorks<TRes> {
  _CopyWithStubImpl$Query$HomeWorks(this._res);

  TRes _res;

  call({Query$HomeWorks$works? works, String? $__typename}) => _res;
  CopyWith$Query$HomeWorks$works<TRes> get works =>
      CopyWith$Query$HomeWorks$works.stub(_res);
}

const documentNodeQueryHomeWorks = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'HomeWorks'),
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
Query$HomeWorks _parserFn$Query$HomeWorks(Map<String, dynamic> data) =>
    Query$HomeWorks.fromJson(data);

class Options$Query$HomeWorks extends graphql.QueryOptions<Query$HomeWorks> {
  Options$Query$HomeWorks(
      {String? operationName,
      Variables$Query$HomeWorks? variables,
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
            document: documentNodeQueryHomeWorks,
            parserFn: _parserFn$Query$HomeWorks);
}

class WatchOptions$Query$HomeWorks
    extends graphql.WatchQueryOptions<Query$HomeWorks> {
  WatchOptions$Query$HomeWorks(
      {String? operationName,
      Variables$Query$HomeWorks? variables,
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
            document: documentNodeQueryHomeWorks,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$HomeWorks);
}

class FetchMoreOptions$Query$HomeWorks extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$HomeWorks(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$HomeWorks? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryHomeWorks);
}

extension ClientExtension$Query$HomeWorks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$HomeWorks>> query$HomeWorks(
          [Options$Query$HomeWorks? options]) async =>
      await this.query(options ?? Options$Query$HomeWorks());
  graphql.ObservableQuery<Query$HomeWorks> watchQuery$HomeWorks(
          [WatchOptions$Query$HomeWorks? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$HomeWorks());
  void writeQuery$HomeWorks(
          {required Query$HomeWorks data,
          Variables$Query$HomeWorks? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryHomeWorks),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$HomeWorks? readQuery$HomeWorks(
      {Variables$Query$HomeWorks? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryHomeWorks),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$HomeWorks.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$HomeWorks> useQuery$HomeWorks(
        [Options$Query$HomeWorks? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$HomeWorks());
graphql.ObservableQuery<Query$HomeWorks> useWatchQuery$HomeWorks(
        [WatchOptions$Query$HomeWorks? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$HomeWorks());

class Query$HomeWorks$Widget extends graphql_flutter.Query<Query$HomeWorks> {
  Query$HomeWorks$Widget(
      {widgets.Key? key,
      Options$Query$HomeWorks? options,
      required graphql_flutter.QueryBuilder<Query$HomeWorks> builder})
      : super(
            key: key,
            options: options ?? Options$Query$HomeWorks(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$HomeWorks$works {
  Query$HomeWorks$works({this.edges, required this.$__typename});

  @override
  factory Query$HomeWorks$works.fromJson(Map<String, dynamic> json) =>
      _$Query$HomeWorks$worksFromJson(json);

  final List<Query$HomeWorks$works$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HomeWorks$worksToJson(this);
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
    if (!(other is Query$HomeWorks$works) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$HomeWorks$works on Query$HomeWorks$works {
  CopyWith$Query$HomeWorks$works<Query$HomeWorks$works> get copyWith =>
      CopyWith$Query$HomeWorks$works(this, (i) => i);
}

abstract class CopyWith$Query$HomeWorks$works<TRes> {
  factory CopyWith$Query$HomeWorks$works(Query$HomeWorks$works instance,
          TRes Function(Query$HomeWorks$works) then) =
      _CopyWithImpl$Query$HomeWorks$works;

  factory CopyWith$Query$HomeWorks$works.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeWorks$works;

  TRes call({List<Query$HomeWorks$works$edges?>? edges, String? $__typename});
  TRes edges(
      Iterable<Query$HomeWorks$works$edges?>? Function(
              Iterable<
                  CopyWith$Query$HomeWorks$works$edges<
                      Query$HomeWorks$works$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$HomeWorks$works<TRes>
    implements CopyWith$Query$HomeWorks$works<TRes> {
  _CopyWithImpl$Query$HomeWorks$works(this._instance, this._then);

  final Query$HomeWorks$works _instance;

  final TRes Function(Query$HomeWorks$works) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$HomeWorks$works(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$HomeWorks$works$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$HomeWorks$works$edges?>? Function(
                  Iterable<
                      CopyWith$Query$HomeWorks$works$edges<
                          Query$HomeWorks$works$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$HomeWorks$works$edges(e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$HomeWorks$works<TRes>
    implements CopyWith$Query$HomeWorks$works<TRes> {
  _CopyWithStubImpl$Query$HomeWorks$works(this._res);

  TRes _res;

  call({List<Query$HomeWorks$works$edges?>? edges, String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$HomeWorks$works$edges {
  Query$HomeWorks$works$edges({this.node, required this.$__typename});

  @override
  factory Query$HomeWorks$works$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$HomeWorks$works$edgesFromJson(json);

  final Query$HomeWorks$works$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HomeWorks$works$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HomeWorks$works$edges) ||
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

extension UtilityExtension$Query$HomeWorks$works$edges
    on Query$HomeWorks$works$edges {
  CopyWith$Query$HomeWorks$works$edges<Query$HomeWorks$works$edges>
      get copyWith => CopyWith$Query$HomeWorks$works$edges(this, (i) => i);
}

abstract class CopyWith$Query$HomeWorks$works$edges<TRes> {
  factory CopyWith$Query$HomeWorks$works$edges(
          Query$HomeWorks$works$edges instance,
          TRes Function(Query$HomeWorks$works$edges) then) =
      _CopyWithImpl$Query$HomeWorks$works$edges;

  factory CopyWith$Query$HomeWorks$works$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeWorks$works$edges;

  TRes call({Query$HomeWorks$works$edges$node? node, String? $__typename});
  CopyWith$Query$HomeWorks$works$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$HomeWorks$works$edges<TRes>
    implements CopyWith$Query$HomeWorks$works$edges<TRes> {
  _CopyWithImpl$Query$HomeWorks$works$edges(this._instance, this._then);

  final Query$HomeWorks$works$edges _instance;

  final TRes Function(Query$HomeWorks$works$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$HomeWorks$works$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$HomeWorks$works$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$HomeWorks$works$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$HomeWorks$works$edges$node.stub(_then(_instance))
        : CopyWith$Query$HomeWorks$works$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$HomeWorks$works$edges<TRes>
    implements CopyWith$Query$HomeWorks$works$edges<TRes> {
  _CopyWithStubImpl$Query$HomeWorks$works$edges(this._res);

  TRes _res;

  call({Query$HomeWorks$works$edges$node? node, String? $__typename}) => _res;
  CopyWith$Query$HomeWorks$works$edges$node<TRes> get node =>
      CopyWith$Query$HomeWorks$works$edges$node.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$HomeWorks$works$edges$node {
  Query$HomeWorks$works$edges$node(
      {required this.id,
      required this.title,
      this.thumbnail,
      required this.$__typename});

  @override
  factory Query$HomeWorks$works$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$HomeWorks$works$edges$nodeFromJson(json);

  final String id;

  final String title;

  final String? thumbnail;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$HomeWorks$works$edges$nodeToJson(this);
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
    if (!(other is Query$HomeWorks$works$edges$node) ||
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

extension UtilityExtension$Query$HomeWorks$works$edges$node
    on Query$HomeWorks$works$edges$node {
  CopyWith$Query$HomeWorks$works$edges$node<Query$HomeWorks$works$edges$node>
      get copyWith => CopyWith$Query$HomeWorks$works$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$HomeWorks$works$edges$node<TRes> {
  factory CopyWith$Query$HomeWorks$works$edges$node(
          Query$HomeWorks$works$edges$node instance,
          TRes Function(Query$HomeWorks$works$edges$node) then) =
      _CopyWithImpl$Query$HomeWorks$works$edges$node;

  factory CopyWith$Query$HomeWorks$works$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$HomeWorks$works$edges$node;

  TRes call(
      {String? id, String? title, String? thumbnail, String? $__typename});
}

class _CopyWithImpl$Query$HomeWorks$works$edges$node<TRes>
    implements CopyWith$Query$HomeWorks$works$edges$node<TRes> {
  _CopyWithImpl$Query$HomeWorks$works$edges$node(this._instance, this._then);

  final Query$HomeWorks$works$edges$node _instance;

  final TRes Function(Query$HomeWorks$works$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? thumbnail = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$HomeWorks$works$edges$node(
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

class _CopyWithStubImpl$Query$HomeWorks$works$edges$node<TRes>
    implements CopyWith$Query$HomeWorks$works$edges$node<TRes> {
  _CopyWithStubImpl$Query$HomeWorks$works$edges$node(this._res);

  TRes _res;

  call({String? id, String? title, String? thumbnail, String? $__typename}) =>
      _res;
}
