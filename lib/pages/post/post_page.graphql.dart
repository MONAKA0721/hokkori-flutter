import '../../graphql/ent.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:http/http.dart';

class Variables$Query$SearchWorks {
  factory Variables$Query$SearchWorks({String? searchText}) =>
      Variables$Query$SearchWorks._({
        if (searchText != null) r'searchText': searchText,
      });

  Variables$Query$SearchWorks._(this._$data);

  factory Variables$Query$SearchWorks.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    return Variables$Query$SearchWorks._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get searchText => (_$data['searchText'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchWorks<Variables$Query$SearchWorks>
      get copyWith => CopyWith$Variables$Query$SearchWorks(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchWorks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchText = searchText;
    return Object.hashAll(
        [_$data.containsKey('searchText') ? l$searchText : const {}]);
  }
}

abstract class CopyWith$Variables$Query$SearchWorks<TRes> {
  factory CopyWith$Variables$Query$SearchWorks(
    Variables$Query$SearchWorks instance,
    TRes Function(Variables$Query$SearchWorks) then,
  ) = _CopyWithImpl$Variables$Query$SearchWorks;

  factory CopyWith$Variables$Query$SearchWorks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchWorks;

  TRes call({String? searchText});
}

class _CopyWithImpl$Variables$Query$SearchWorks<TRes>
    implements CopyWith$Variables$Query$SearchWorks<TRes> {
  _CopyWithImpl$Variables$Query$SearchWorks(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchWorks _instance;

  final TRes Function(Variables$Query$SearchWorks) _then;

  static const _undefined = {};

  TRes call({Object? searchText = _undefined}) =>
      _then(Variables$Query$SearchWorks._({
        ..._instance._$data,
        if (searchText != _undefined) 'searchText': (searchText as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchWorks<TRes>
    implements CopyWith$Variables$Query$SearchWorks<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchWorks(this._res);

  TRes _res;

  call({String? searchText}) => _res;
}

class Query$SearchWorks {
  Query$SearchWorks({
    required this.works,
    required this.$__typename,
  });

  factory Query$SearchWorks.fromJson(Map<String, dynamic> json) {
    final l$works = json['works'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorks(
      works:
          Query$SearchWorks$works.fromJson((l$works as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchWorks$works works;

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
    return Object.hashAll([
      l$works,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchWorks) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchWorks on Query$SearchWorks {
  CopyWith$Query$SearchWorks<Query$SearchWorks> get copyWith =>
      CopyWith$Query$SearchWorks(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWorks<TRes> {
  factory CopyWith$Query$SearchWorks(
    Query$SearchWorks instance,
    TRes Function(Query$SearchWorks) then,
  ) = _CopyWithImpl$Query$SearchWorks;

  factory CopyWith$Query$SearchWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWorks;

  TRes call({
    Query$SearchWorks$works? works,
    String? $__typename,
  });
  CopyWith$Query$SearchWorks$works<TRes> get works;
}

class _CopyWithImpl$Query$SearchWorks<TRes>
    implements CopyWith$Query$SearchWorks<TRes> {
  _CopyWithImpl$Query$SearchWorks(
    this._instance,
    this._then,
  );

  final Query$SearchWorks _instance;

  final TRes Function(Query$SearchWorks) _then;

  static const _undefined = {};

  TRes call({
    Object? works = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchWorks(
        works: works == _undefined || works == null
            ? _instance.works
            : (works as Query$SearchWorks$works),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SearchWorks$works<TRes> get works {
    final local$works = _instance.works;
    return CopyWith$Query$SearchWorks$works(local$works, (e) => call(works: e));
  }
}

class _CopyWithStubImpl$Query$SearchWorks<TRes>
    implements CopyWith$Query$SearchWorks<TRes> {
  _CopyWithStubImpl$Query$SearchWorks(this._res);

  TRes _res;

  call({
    Query$SearchWorks$works? works,
    String? $__typename,
  }) =>
      _res;
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
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
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
                name: NameNode(value: 'titleHasPrefix'),
                value: VariableNode(name: NameNode(value: 'searchText')),
              )
            ]),
          )
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
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thumbnail'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$SearchWorks _parserFn$Query$SearchWorks(Map<String, dynamic> data) =>
    Query$SearchWorks.fromJson(data);

class Options$Query$SearchWorks
    extends graphql.QueryOptions<Query$SearchWorks> {
  Options$Query$SearchWorks({
    String? operationName,
    Variables$Query$SearchWorks? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQuerySearchWorks,
          parserFn: _parserFn$Query$SearchWorks,
        );
}

class WatchOptions$Query$SearchWorks
    extends graphql.WatchQueryOptions<Query$SearchWorks> {
  WatchOptions$Query$SearchWorks({
    String? operationName,
    Variables$Query$SearchWorks? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
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
          parserFn: _parserFn$Query$SearchWorks,
        );
}

class FetchMoreOptions$Query$SearchWorks extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchWorks({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SearchWorks? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearchWorks,
        );
}

extension ClientExtension$Query$SearchWorks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchWorks>> query$SearchWorks(
          [Options$Query$SearchWorks? options]) async =>
      await this.query(options ?? Options$Query$SearchWorks());
  graphql.ObservableQuery<Query$SearchWorks> watchQuery$SearchWorks(
          [WatchOptions$Query$SearchWorks? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchWorks());
  void writeQuery$SearchWorks({
    required Query$SearchWorks data,
    Variables$Query$SearchWorks? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearchWorks),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchWorks? readQuery$SearchWorks({
    Variables$Query$SearchWorks? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchWorks),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
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
  Query$SearchWorks$Widget({
    widgets.Key? key,
    Options$Query$SearchWorks? options,
    required graphql_flutter.QueryBuilder<Query$SearchWorks> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SearchWorks(),
          builder: builder,
        );
}

class Query$SearchWorks$works {
  Query$SearchWorks$works({
    this.edges,
    required this.$__typename,
  });

  factory Query$SearchWorks$works.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorks$works(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchWorks$works$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchWorks$works$edges?>? edges;

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
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchWorks$works) ||
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

extension UtilityExtension$Query$SearchWorks$works on Query$SearchWorks$works {
  CopyWith$Query$SearchWorks$works<Query$SearchWorks$works> get copyWith =>
      CopyWith$Query$SearchWorks$works(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWorks$works<TRes> {
  factory CopyWith$Query$SearchWorks$works(
    Query$SearchWorks$works instance,
    TRes Function(Query$SearchWorks$works) then,
  ) = _CopyWithImpl$Query$SearchWorks$works;

  factory CopyWith$Query$SearchWorks$works.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWorks$works;

  TRes call({
    List<Query$SearchWorks$works$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$SearchWorks$works$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchWorks$works$edges<
                      Query$SearchWorks$works$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchWorks$works<TRes>
    implements CopyWith$Query$SearchWorks$works<TRes> {
  _CopyWithImpl$Query$SearchWorks$works(
    this._instance,
    this._then,
  );

  final Query$SearchWorks$works _instance;

  final TRes Function(Query$SearchWorks$works) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchWorks$works(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$SearchWorks$works$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$SearchWorks$works$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchWorks$works$edges<
                          Query$SearchWorks$works$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchWorks$works$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchWorks$works<TRes>
    implements CopyWith$Query$SearchWorks$works<TRes> {
  _CopyWithStubImpl$Query$SearchWorks$works(this._res);

  TRes _res;

  call({
    List<Query$SearchWorks$works$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$SearchWorks$works$edges {
  Query$SearchWorks$works$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$SearchWorks$works$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorks$works$edges(
      node: l$node == null
          ? null
          : Query$SearchWorks$works$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchWorks$works$edges$node? node;

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
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchWorks$works$edges) ||
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

extension UtilityExtension$Query$SearchWorks$works$edges
    on Query$SearchWorks$works$edges {
  CopyWith$Query$SearchWorks$works$edges<Query$SearchWorks$works$edges>
      get copyWith => CopyWith$Query$SearchWorks$works$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchWorks$works$edges<TRes> {
  factory CopyWith$Query$SearchWorks$works$edges(
    Query$SearchWorks$works$edges instance,
    TRes Function(Query$SearchWorks$works$edges) then,
  ) = _CopyWithImpl$Query$SearchWorks$works$edges;

  factory CopyWith$Query$SearchWorks$works$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWorks$works$edges;

  TRes call({
    Query$SearchWorks$works$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$SearchWorks$works$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchWorks$works$edges<TRes>
    implements CopyWith$Query$SearchWorks$works$edges<TRes> {
  _CopyWithImpl$Query$SearchWorks$works$edges(
    this._instance,
    this._then,
  );

  final Query$SearchWorks$works$edges _instance;

  final TRes Function(Query$SearchWorks$works$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchWorks$works$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$SearchWorks$works$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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

  call({
    Query$SearchWorks$works$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SearchWorks$works$edges$node<TRes> get node =>
      CopyWith$Query$SearchWorks$works$edges$node.stub(_res);
}

class Query$SearchWorks$works$edges$node {
  Query$SearchWorks$works$edges$node({
    required this.id,
    required this.title,
    this.thumbnail,
    required this.$__typename,
  });

  factory Query$SearchWorks$works$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorks$works$edges$node(
      id: (l$id as String),
      title: (l$title as String),
      thumbnail: (l$thumbnail as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String? thumbnail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$thumbnail = thumbnail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$thumbnail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchWorks$works$edges$node) ||
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

extension UtilityExtension$Query$SearchWorks$works$edges$node
    on Query$SearchWorks$works$edges$node {
  CopyWith$Query$SearchWorks$works$edges$node<
          Query$SearchWorks$works$edges$node>
      get copyWith => CopyWith$Query$SearchWorks$works$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchWorks$works$edges$node<TRes> {
  factory CopyWith$Query$SearchWorks$works$edges$node(
    Query$SearchWorks$works$edges$node instance,
    TRes Function(Query$SearchWorks$works$edges$node) then,
  ) = _CopyWithImpl$Query$SearchWorks$works$edges$node;

  factory CopyWith$Query$SearchWorks$works$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWorks$works$edges$node;

  TRes call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchWorks$works$edges$node<TRes>
    implements CopyWith$Query$SearchWorks$works$edges$node<TRes> {
  _CopyWithImpl$Query$SearchWorks$works$edges$node(
    this._instance,
    this._then,
  );

  final Query$SearchWorks$works$edges$node _instance;

  final TRes Function(Query$SearchWorks$works$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchWorks$works$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchWorks$works$edges$node<TRes>
    implements CopyWith$Query$SearchWorks$works$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchWorks$works$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SearchHashtags {
  factory Variables$Query$SearchHashtags({String? searchText}) =>
      Variables$Query$SearchHashtags._({
        if (searchText != null) r'searchText': searchText,
      });

  Variables$Query$SearchHashtags._(this._$data);

  factory Variables$Query$SearchHashtags.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    return Variables$Query$SearchHashtags._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get searchText => (_$data['searchText'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchHashtags<Variables$Query$SearchHashtags>
      get copyWith => CopyWith$Variables$Query$SearchHashtags(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchHashtags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchText = searchText;
    return Object.hashAll(
        [_$data.containsKey('searchText') ? l$searchText : const {}]);
  }
}

abstract class CopyWith$Variables$Query$SearchHashtags<TRes> {
  factory CopyWith$Variables$Query$SearchHashtags(
    Variables$Query$SearchHashtags instance,
    TRes Function(Variables$Query$SearchHashtags) then,
  ) = _CopyWithImpl$Variables$Query$SearchHashtags;

  factory CopyWith$Variables$Query$SearchHashtags.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchHashtags;

  TRes call({String? searchText});
}

class _CopyWithImpl$Variables$Query$SearchHashtags<TRes>
    implements CopyWith$Variables$Query$SearchHashtags<TRes> {
  _CopyWithImpl$Variables$Query$SearchHashtags(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchHashtags _instance;

  final TRes Function(Variables$Query$SearchHashtags) _then;

  static const _undefined = {};

  TRes call({Object? searchText = _undefined}) =>
      _then(Variables$Query$SearchHashtags._({
        ..._instance._$data,
        if (searchText != _undefined) 'searchText': (searchText as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchHashtags<TRes>
    implements CopyWith$Variables$Query$SearchHashtags<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchHashtags(this._res);

  TRes _res;

  call({String? searchText}) => _res;
}

class Query$SearchHashtags {
  Query$SearchHashtags({
    required this.hashtags,
    required this.$__typename,
  });

  factory Query$SearchHashtags.fromJson(Map<String, dynamic> json) {
    final l$hashtags = json['hashtags'];
    final l$$__typename = json['__typename'];
    return Query$SearchHashtags(
      hashtags: Query$SearchHashtags$hashtags.fromJson(
          (l$hashtags as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchHashtags$hashtags hashtags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hashtags = hashtags;
    _resultData['hashtags'] = l$hashtags.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hashtags = hashtags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hashtags,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchHashtags) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$hashtags = hashtags;
    final lOther$hashtags = other.hashtags;
    if (l$hashtags != lOther$hashtags) {
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

extension UtilityExtension$Query$SearchHashtags on Query$SearchHashtags {
  CopyWith$Query$SearchHashtags<Query$SearchHashtags> get copyWith =>
      CopyWith$Query$SearchHashtags(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchHashtags<TRes> {
  factory CopyWith$Query$SearchHashtags(
    Query$SearchHashtags instance,
    TRes Function(Query$SearchHashtags) then,
  ) = _CopyWithImpl$Query$SearchHashtags;

  factory CopyWith$Query$SearchHashtags.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchHashtags;

  TRes call({
    Query$SearchHashtags$hashtags? hashtags,
    String? $__typename,
  });
  CopyWith$Query$SearchHashtags$hashtags<TRes> get hashtags;
}

class _CopyWithImpl$Query$SearchHashtags<TRes>
    implements CopyWith$Query$SearchHashtags<TRes> {
  _CopyWithImpl$Query$SearchHashtags(
    this._instance,
    this._then,
  );

  final Query$SearchHashtags _instance;

  final TRes Function(Query$SearchHashtags) _then;

  static const _undefined = {};

  TRes call({
    Object? hashtags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchHashtags(
        hashtags: hashtags == _undefined || hashtags == null
            ? _instance.hashtags
            : (hashtags as Query$SearchHashtags$hashtags),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SearchHashtags$hashtags<TRes> get hashtags {
    final local$hashtags = _instance.hashtags;
    return CopyWith$Query$SearchHashtags$hashtags(
        local$hashtags, (e) => call(hashtags: e));
  }
}

class _CopyWithStubImpl$Query$SearchHashtags<TRes>
    implements CopyWith$Query$SearchHashtags<TRes> {
  _CopyWithStubImpl$Query$SearchHashtags(this._res);

  TRes _res;

  call({
    Query$SearchHashtags$hashtags? hashtags,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SearchHashtags$hashtags<TRes> get hashtags =>
      CopyWith$Query$SearchHashtags$hashtags.stub(_res);
}

const documentNodeQuerySearchHashtags = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchHashtags'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchText')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'hashtags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'titleHasPrefix'),
                value: VariableNode(name: NameNode(value: 'searchText')),
              )
            ]),
          )
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
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$SearchHashtags _parserFn$Query$SearchHashtags(
        Map<String, dynamic> data) =>
    Query$SearchHashtags.fromJson(data);

class Options$Query$SearchHashtags
    extends graphql.QueryOptions<Query$SearchHashtags> {
  Options$Query$SearchHashtags({
    String? operationName,
    Variables$Query$SearchHashtags? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQuerySearchHashtags,
          parserFn: _parserFn$Query$SearchHashtags,
        );
}

class WatchOptions$Query$SearchHashtags
    extends graphql.WatchQueryOptions<Query$SearchHashtags> {
  WatchOptions$Query$SearchHashtags({
    String? operationName,
    Variables$Query$SearchHashtags? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQuerySearchHashtags,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchHashtags,
        );
}

class FetchMoreOptions$Query$SearchHashtags extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchHashtags({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SearchHashtags? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearchHashtags,
        );
}

extension ClientExtension$Query$SearchHashtags on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchHashtags>> query$SearchHashtags(
          [Options$Query$SearchHashtags? options]) async =>
      await this.query(options ?? Options$Query$SearchHashtags());
  graphql.ObservableQuery<Query$SearchHashtags> watchQuery$SearchHashtags(
          [WatchOptions$Query$SearchHashtags? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchHashtags());
  void writeQuery$SearchHashtags({
    required Query$SearchHashtags data,
    Variables$Query$SearchHashtags? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySearchHashtags),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchHashtags? readQuery$SearchHashtags({
    Variables$Query$SearchHashtags? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchHashtags),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchHashtags.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchHashtags> useQuery$SearchHashtags(
        [Options$Query$SearchHashtags? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$SearchHashtags());
graphql.ObservableQuery<Query$SearchHashtags> useWatchQuery$SearchHashtags(
        [WatchOptions$Query$SearchHashtags? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$SearchHashtags());

class Query$SearchHashtags$Widget
    extends graphql_flutter.Query<Query$SearchHashtags> {
  Query$SearchHashtags$Widget({
    widgets.Key? key,
    Options$Query$SearchHashtags? options,
    required graphql_flutter.QueryBuilder<Query$SearchHashtags> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SearchHashtags(),
          builder: builder,
        );
}

class Query$SearchHashtags$hashtags {
  Query$SearchHashtags$hashtags({
    this.edges,
    required this.$__typename,
  });

  factory Query$SearchHashtags$hashtags.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$SearchHashtags$hashtags(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchHashtags$hashtags$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchHashtags$hashtags$edges?>? edges;

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
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchHashtags$hashtags) ||
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

extension UtilityExtension$Query$SearchHashtags$hashtags
    on Query$SearchHashtags$hashtags {
  CopyWith$Query$SearchHashtags$hashtags<Query$SearchHashtags$hashtags>
      get copyWith => CopyWith$Query$SearchHashtags$hashtags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchHashtags$hashtags<TRes> {
  factory CopyWith$Query$SearchHashtags$hashtags(
    Query$SearchHashtags$hashtags instance,
    TRes Function(Query$SearchHashtags$hashtags) then,
  ) = _CopyWithImpl$Query$SearchHashtags$hashtags;

  factory CopyWith$Query$SearchHashtags$hashtags.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchHashtags$hashtags;

  TRes call({
    List<Query$SearchHashtags$hashtags$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$SearchHashtags$hashtags$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchHashtags$hashtags$edges<
                      Query$SearchHashtags$hashtags$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchHashtags$hashtags<TRes>
    implements CopyWith$Query$SearchHashtags$hashtags<TRes> {
  _CopyWithImpl$Query$SearchHashtags$hashtags(
    this._instance,
    this._then,
  );

  final Query$SearchHashtags$hashtags _instance;

  final TRes Function(Query$SearchHashtags$hashtags) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchHashtags$hashtags(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$SearchHashtags$hashtags$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$SearchHashtags$hashtags$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchHashtags$hashtags$edges<
                          Query$SearchHashtags$hashtags$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchHashtags$hashtags$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchHashtags$hashtags<TRes>
    implements CopyWith$Query$SearchHashtags$hashtags<TRes> {
  _CopyWithStubImpl$Query$SearchHashtags$hashtags(this._res);

  TRes _res;

  call({
    List<Query$SearchHashtags$hashtags$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$SearchHashtags$hashtags$edges {
  Query$SearchHashtags$hashtags$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$SearchHashtags$hashtags$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SearchHashtags$hashtags$edges(
      node: l$node == null
          ? null
          : Query$SearchHashtags$hashtags$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchHashtags$hashtags$edges$node? node;

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
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchHashtags$hashtags$edges) ||
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

extension UtilityExtension$Query$SearchHashtags$hashtags$edges
    on Query$SearchHashtags$hashtags$edges {
  CopyWith$Query$SearchHashtags$hashtags$edges<
          Query$SearchHashtags$hashtags$edges>
      get copyWith => CopyWith$Query$SearchHashtags$hashtags$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchHashtags$hashtags$edges<TRes> {
  factory CopyWith$Query$SearchHashtags$hashtags$edges(
    Query$SearchHashtags$hashtags$edges instance,
    TRes Function(Query$SearchHashtags$hashtags$edges) then,
  ) = _CopyWithImpl$Query$SearchHashtags$hashtags$edges;

  factory CopyWith$Query$SearchHashtags$hashtags$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchHashtags$hashtags$edges;

  TRes call({
    Query$SearchHashtags$hashtags$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$SearchHashtags$hashtags$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchHashtags$hashtags$edges<TRes>
    implements CopyWith$Query$SearchHashtags$hashtags$edges<TRes> {
  _CopyWithImpl$Query$SearchHashtags$hashtags$edges(
    this._instance,
    this._then,
  );

  final Query$SearchHashtags$hashtags$edges _instance;

  final TRes Function(Query$SearchHashtags$hashtags$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchHashtags$hashtags$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$SearchHashtags$hashtags$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SearchHashtags$hashtags$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$SearchHashtags$hashtags$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$SearchHashtags$hashtags$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SearchHashtags$hashtags$edges<TRes>
    implements CopyWith$Query$SearchHashtags$hashtags$edges<TRes> {
  _CopyWithStubImpl$Query$SearchHashtags$hashtags$edges(this._res);

  TRes _res;

  call({
    Query$SearchHashtags$hashtags$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SearchHashtags$hashtags$edges$node<TRes> get node =>
      CopyWith$Query$SearchHashtags$hashtags$edges$node.stub(_res);
}

class Query$SearchHashtags$hashtags$edges$node {
  Query$SearchHashtags$hashtags$edges$node({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Query$SearchHashtags$hashtags$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$SearchHashtags$hashtags$edges$node(
      id: (l$id as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
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
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchHashtags$hashtags$edges$node) ||
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

extension UtilityExtension$Query$SearchHashtags$hashtags$edges$node
    on Query$SearchHashtags$hashtags$edges$node {
  CopyWith$Query$SearchHashtags$hashtags$edges$node<
          Query$SearchHashtags$hashtags$edges$node>
      get copyWith => CopyWith$Query$SearchHashtags$hashtags$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchHashtags$hashtags$edges$node<TRes> {
  factory CopyWith$Query$SearchHashtags$hashtags$edges$node(
    Query$SearchHashtags$hashtags$edges$node instance,
    TRes Function(Query$SearchHashtags$hashtags$edges$node) then,
  ) = _CopyWithImpl$Query$SearchHashtags$hashtags$edges$node;

  factory CopyWith$Query$SearchHashtags$hashtags$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchHashtags$hashtags$edges$node;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchHashtags$hashtags$edges$node<TRes>
    implements CopyWith$Query$SearchHashtags$hashtags$edges$node<TRes> {
  _CopyWithImpl$Query$SearchHashtags$hashtags$edges$node(
    this._instance,
    this._then,
  );

  final Query$SearchHashtags$hashtags$edges$node _instance;

  final TRes Function(Query$SearchHashtags$hashtags$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchHashtags$hashtags$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchHashtags$hashtags$edges$node<TRes>
    implements CopyWith$Query$SearchHashtags$hashtags$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchHashtags$hashtags$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Drafts {
  factory Variables$Query$Drafts({required String userID}) =>
      Variables$Query$Drafts._({
        r'userID': userID,
      });

  Variables$Query$Drafts._(this._$data);

  factory Variables$Query$Drafts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    return Variables$Query$Drafts._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userID => (_$data['userID'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userID = userID;
    result$data['userID'] = l$userID;
    return result$data;
  }

  CopyWith$Variables$Query$Drafts<Variables$Query$Drafts> get copyWith =>
      CopyWith$Variables$Query$Drafts(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Drafts) ||
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

abstract class CopyWith$Variables$Query$Drafts<TRes> {
  factory CopyWith$Variables$Query$Drafts(
    Variables$Query$Drafts instance,
    TRes Function(Variables$Query$Drafts) then,
  ) = _CopyWithImpl$Variables$Query$Drafts;

  factory CopyWith$Variables$Query$Drafts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Drafts;

  TRes call({String? userID});
}

class _CopyWithImpl$Variables$Query$Drafts<TRes>
    implements CopyWith$Variables$Query$Drafts<TRes> {
  _CopyWithImpl$Variables$Query$Drafts(
    this._instance,
    this._then,
  );

  final Variables$Query$Drafts _instance;

  final TRes Function(Variables$Query$Drafts) _then;

  static const _undefined = {};

  TRes call({Object? userID = _undefined}) => _then(Variables$Query$Drafts._({
        ..._instance._$data,
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Drafts<TRes>
    implements CopyWith$Variables$Query$Drafts<TRes> {
  _CopyWithStubImpl$Variables$Query$Drafts(this._res);

  TRes _res;

  call({String? userID}) => _res;
}

class Query$Drafts {
  Query$Drafts({
    required this.drafts,
    required this.$__typename,
  });

  factory Query$Drafts.fromJson(Map<String, dynamic> json) {
    final l$drafts = json['drafts'];
    final l$$__typename = json['__typename'];
    return Query$Drafts(
      drafts: Query$Drafts$drafts.fromJson((l$drafts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Drafts$drafts drafts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$drafts = drafts;
    _resultData['drafts'] = l$drafts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$drafts = drafts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$drafts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Drafts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$drafts = drafts;
    final lOther$drafts = other.drafts;
    if (l$drafts != lOther$drafts) {
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

extension UtilityExtension$Query$Drafts on Query$Drafts {
  CopyWith$Query$Drafts<Query$Drafts> get copyWith => CopyWith$Query$Drafts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Drafts<TRes> {
  factory CopyWith$Query$Drafts(
    Query$Drafts instance,
    TRes Function(Query$Drafts) then,
  ) = _CopyWithImpl$Query$Drafts;

  factory CopyWith$Query$Drafts.stub(TRes res) = _CopyWithStubImpl$Query$Drafts;

  TRes call({
    Query$Drafts$drafts? drafts,
    String? $__typename,
  });
  CopyWith$Query$Drafts$drafts<TRes> get drafts;
}

class _CopyWithImpl$Query$Drafts<TRes> implements CopyWith$Query$Drafts<TRes> {
  _CopyWithImpl$Query$Drafts(
    this._instance,
    this._then,
  );

  final Query$Drafts _instance;

  final TRes Function(Query$Drafts) _then;

  static const _undefined = {};

  TRes call({
    Object? drafts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Drafts(
        drafts: drafts == _undefined || drafts == null
            ? _instance.drafts
            : (drafts as Query$Drafts$drafts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Drafts$drafts<TRes> get drafts {
    final local$drafts = _instance.drafts;
    return CopyWith$Query$Drafts$drafts(local$drafts, (e) => call(drafts: e));
  }
}

class _CopyWithStubImpl$Query$Drafts<TRes>
    implements CopyWith$Query$Drafts<TRes> {
  _CopyWithStubImpl$Query$Drafts(this._res);

  TRes _res;

  call({
    Query$Drafts$drafts? drafts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Drafts$drafts<TRes> get drafts =>
      CopyWith$Query$Drafts$drafts.stub(_res);
}

const documentNodeQueryDrafts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Drafts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userID')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'drafts'),
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
                    value: VariableNode(name: NameNode(value: 'userID')),
                  )
                ]),
              )
            ]),
          )
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
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'work'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'category'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'praiseTitle'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$Drafts _parserFn$Query$Drafts(Map<String, dynamic> data) =>
    Query$Drafts.fromJson(data);

class Options$Query$Drafts extends graphql.QueryOptions<Query$Drafts> {
  Options$Query$Drafts({
    String? operationName,
    required Variables$Query$Drafts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryDrafts,
          parserFn: _parserFn$Query$Drafts,
        );
}

class WatchOptions$Query$Drafts
    extends graphql.WatchQueryOptions<Query$Drafts> {
  WatchOptions$Query$Drafts({
    String? operationName,
    required Variables$Query$Drafts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryDrafts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Drafts,
        );
}

class FetchMoreOptions$Query$Drafts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Drafts({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Drafts variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryDrafts,
        );
}

extension ClientExtension$Query$Drafts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Drafts>> query$Drafts(
          Options$Query$Drafts options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Drafts> watchQuery$Drafts(
          WatchOptions$Query$Drafts options) =>
      this.watchQuery(options);
  void writeQuery$Drafts({
    required Query$Drafts data,
    required Variables$Query$Drafts variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryDrafts),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Drafts? readQuery$Drafts({
    required Variables$Query$Drafts variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryDrafts),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Drafts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Drafts> useQuery$Drafts(
        Options$Query$Drafts options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Drafts> useWatchQuery$Drafts(
        WatchOptions$Query$Drafts options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Drafts$Widget extends graphql_flutter.Query<Query$Drafts> {
  Query$Drafts$Widget({
    widgets.Key? key,
    required Options$Query$Drafts options,
    required graphql_flutter.QueryBuilder<Query$Drafts> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Drafts$drafts {
  Query$Drafts$drafts({
    this.edges,
    required this.$__typename,
  });

  factory Query$Drafts$drafts.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Drafts$drafts(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Drafts$drafts$edges.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Drafts$drafts$edges?>? edges;

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
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Drafts$drafts) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Drafts$drafts on Query$Drafts$drafts {
  CopyWith$Query$Drafts$drafts<Query$Drafts$drafts> get copyWith =>
      CopyWith$Query$Drafts$drafts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Drafts$drafts<TRes> {
  factory CopyWith$Query$Drafts$drafts(
    Query$Drafts$drafts instance,
    TRes Function(Query$Drafts$drafts) then,
  ) = _CopyWithImpl$Query$Drafts$drafts;

  factory CopyWith$Query$Drafts$drafts.stub(TRes res) =
      _CopyWithStubImpl$Query$Drafts$drafts;

  TRes call({
    List<Query$Drafts$drafts$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Drafts$drafts$edges?>? Function(
              Iterable<
                  CopyWith$Query$Drafts$drafts$edges<
                      Query$Drafts$drafts$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Drafts$drafts<TRes>
    implements CopyWith$Query$Drafts$drafts<TRes> {
  _CopyWithImpl$Query$Drafts$drafts(
    this._instance,
    this._then,
  );

  final Query$Drafts$drafts _instance;

  final TRes Function(Query$Drafts$drafts) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Drafts$drafts(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Drafts$drafts$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$Drafts$drafts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Drafts$drafts$edges<
                          Query$Drafts$drafts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Drafts$drafts$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Drafts$drafts<TRes>
    implements CopyWith$Query$Drafts$drafts<TRes> {
  _CopyWithStubImpl$Query$Drafts$drafts(this._res);

  TRes _res;

  call({
    List<Query$Drafts$drafts$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$Drafts$drafts$edges {
  Query$Drafts$drafts$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$Drafts$drafts$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Drafts$drafts$edges(
      node: l$node == null
          ? null
          : Query$Drafts$drafts$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Drafts$drafts$edges$node? node;

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
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Drafts$drafts$edges) ||
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

extension UtilityExtension$Query$Drafts$drafts$edges
    on Query$Drafts$drafts$edges {
  CopyWith$Query$Drafts$drafts$edges<Query$Drafts$drafts$edges> get copyWith =>
      CopyWith$Query$Drafts$drafts$edges(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Drafts$drafts$edges<TRes> {
  factory CopyWith$Query$Drafts$drafts$edges(
    Query$Drafts$drafts$edges instance,
    TRes Function(Query$Drafts$drafts$edges) then,
  ) = _CopyWithImpl$Query$Drafts$drafts$edges;

  factory CopyWith$Query$Drafts$drafts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Drafts$drafts$edges;

  TRes call({
    Query$Drafts$drafts$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Drafts$drafts$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Drafts$drafts$edges<TRes>
    implements CopyWith$Query$Drafts$drafts$edges<TRes> {
  _CopyWithImpl$Query$Drafts$drafts$edges(
    this._instance,
    this._then,
  );

  final Query$Drafts$drafts$edges _instance;

  final TRes Function(Query$Drafts$drafts$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Drafts$drafts$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$Drafts$drafts$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Drafts$drafts$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Drafts$drafts$edges$node.stub(_then(_instance))
        : CopyWith$Query$Drafts$drafts$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Drafts$drafts$edges<TRes>
    implements CopyWith$Query$Drafts$drafts$edges<TRes> {
  _CopyWithStubImpl$Query$Drafts$drafts$edges(this._res);

  TRes _res;

  call({
    Query$Drafts$drafts$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Drafts$drafts$edges$node<TRes> get node =>
      CopyWith$Query$Drafts$drafts$edges$node.stub(_res);
}

class Query$Drafts$drafts$edges$node {
  Query$Drafts$drafts$edges$node({
    required this.id,
    this.work,
    this.category,
    required this.praiseTitle,
    required this.$__typename,
  });

  factory Query$Drafts$drafts$edges$node.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$work = json['work'];
    final l$category = json['category'];
    final l$praiseTitle = json['praiseTitle'];
    final l$$__typename = json['__typename'];
    return Query$Drafts$drafts$edges$node(
      id: (l$id as String),
      work: l$work == null
          ? null
          : Query$Drafts$drafts$edges$node$work.fromJson(
              (l$work as Map<String, dynamic>)),
      category: l$category == null
          ? null
          : Query$Drafts$drafts$edges$node$category.fromJson(
              (l$category as Map<String, dynamic>)),
      praiseTitle: (l$praiseTitle as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$Drafts$drafts$edges$node$work? work;

  final Query$Drafts$drafts$edges$node$category? category;

  final String praiseTitle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$work = work;
    _resultData['work'] = l$work?.toJson();
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$praiseTitle = praiseTitle;
    _resultData['praiseTitle'] = l$praiseTitle;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$work = work;
    final l$category = category;
    final l$praiseTitle = praiseTitle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$work,
      l$category,
      l$praiseTitle,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Drafts$drafts$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$work = work;
    final lOther$work = other.work;
    if (l$work != lOther$work) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$praiseTitle = praiseTitle;
    final lOther$praiseTitle = other.praiseTitle;
    if (l$praiseTitle != lOther$praiseTitle) {
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

extension UtilityExtension$Query$Drafts$drafts$edges$node
    on Query$Drafts$drafts$edges$node {
  CopyWith$Query$Drafts$drafts$edges$node<Query$Drafts$drafts$edges$node>
      get copyWith => CopyWith$Query$Drafts$drafts$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Drafts$drafts$edges$node<TRes> {
  factory CopyWith$Query$Drafts$drafts$edges$node(
    Query$Drafts$drafts$edges$node instance,
    TRes Function(Query$Drafts$drafts$edges$node) then,
  ) = _CopyWithImpl$Query$Drafts$drafts$edges$node;

  factory CopyWith$Query$Drafts$drafts$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Drafts$drafts$edges$node;

  TRes call({
    String? id,
    Query$Drafts$drafts$edges$node$work? work,
    Query$Drafts$drafts$edges$node$category? category,
    String? praiseTitle,
    String? $__typename,
  });
  CopyWith$Query$Drafts$drafts$edges$node$work<TRes> get work;
  CopyWith$Query$Drafts$drafts$edges$node$category<TRes> get category;
}

class _CopyWithImpl$Query$Drafts$drafts$edges$node<TRes>
    implements CopyWith$Query$Drafts$drafts$edges$node<TRes> {
  _CopyWithImpl$Query$Drafts$drafts$edges$node(
    this._instance,
    this._then,
  );

  final Query$Drafts$drafts$edges$node _instance;

  final TRes Function(Query$Drafts$drafts$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? work = _undefined,
    Object? category = _undefined,
    Object? praiseTitle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Drafts$drafts$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        work: work == _undefined
            ? _instance.work
            : (work as Query$Drafts$drafts$edges$node$work?),
        category: category == _undefined
            ? _instance.category
            : (category as Query$Drafts$drafts$edges$node$category?),
        praiseTitle: praiseTitle == _undefined || praiseTitle == null
            ? _instance.praiseTitle
            : (praiseTitle as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Drafts$drafts$edges$node$work<TRes> get work {
    final local$work = _instance.work;
    return local$work == null
        ? CopyWith$Query$Drafts$drafts$edges$node$work.stub(_then(_instance))
        : CopyWith$Query$Drafts$drafts$edges$node$work(
            local$work, (e) => call(work: e));
  }

  CopyWith$Query$Drafts$drafts$edges$node$category<TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$Drafts$drafts$edges$node$category.stub(
            _then(_instance))
        : CopyWith$Query$Drafts$drafts$edges$node$category(
            local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Query$Drafts$drafts$edges$node<TRes>
    implements CopyWith$Query$Drafts$drafts$edges$node<TRes> {
  _CopyWithStubImpl$Query$Drafts$drafts$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    Query$Drafts$drafts$edges$node$work? work,
    Query$Drafts$drafts$edges$node$category? category,
    String? praiseTitle,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Drafts$drafts$edges$node$work<TRes> get work =>
      CopyWith$Query$Drafts$drafts$edges$node$work.stub(_res);
  CopyWith$Query$Drafts$drafts$edges$node$category<TRes> get category =>
      CopyWith$Query$Drafts$drafts$edges$node$category.stub(_res);
}

class Query$Drafts$drafts$edges$node$work {
  Query$Drafts$drafts$edges$node$work({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Query$Drafts$drafts$edges$node$work.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Drafts$drafts$edges$node$work(
      id: (l$id as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
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
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Drafts$drafts$edges$node$work) ||
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

extension UtilityExtension$Query$Drafts$drafts$edges$node$work
    on Query$Drafts$drafts$edges$node$work {
  CopyWith$Query$Drafts$drafts$edges$node$work<
          Query$Drafts$drafts$edges$node$work>
      get copyWith => CopyWith$Query$Drafts$drafts$edges$node$work(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Drafts$drafts$edges$node$work<TRes> {
  factory CopyWith$Query$Drafts$drafts$edges$node$work(
    Query$Drafts$drafts$edges$node$work instance,
    TRes Function(Query$Drafts$drafts$edges$node$work) then,
  ) = _CopyWithImpl$Query$Drafts$drafts$edges$node$work;

  factory CopyWith$Query$Drafts$drafts$edges$node$work.stub(TRes res) =
      _CopyWithStubImpl$Query$Drafts$drafts$edges$node$work;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Drafts$drafts$edges$node$work<TRes>
    implements CopyWith$Query$Drafts$drafts$edges$node$work<TRes> {
  _CopyWithImpl$Query$Drafts$drafts$edges$node$work(
    this._instance,
    this._then,
  );

  final Query$Drafts$drafts$edges$node$work _instance;

  final TRes Function(Query$Drafts$drafts$edges$node$work) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Drafts$drafts$edges$node$work(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Drafts$drafts$edges$node$work<TRes>
    implements CopyWith$Query$Drafts$drafts$edges$node$work<TRes> {
  _CopyWithStubImpl$Query$Drafts$drafts$edges$node$work(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$Drafts$drafts$edges$node$category {
  Query$Drafts$drafts$edges$node$category({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$Drafts$drafts$edges$node$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Drafts$drafts$edges$node$category(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
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
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Drafts$drafts$edges$node$category) ||
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

extension UtilityExtension$Query$Drafts$drafts$edges$node$category
    on Query$Drafts$drafts$edges$node$category {
  CopyWith$Query$Drafts$drafts$edges$node$category<
          Query$Drafts$drafts$edges$node$category>
      get copyWith => CopyWith$Query$Drafts$drafts$edges$node$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Drafts$drafts$edges$node$category<TRes> {
  factory CopyWith$Query$Drafts$drafts$edges$node$category(
    Query$Drafts$drafts$edges$node$category instance,
    TRes Function(Query$Drafts$drafts$edges$node$category) then,
  ) = _CopyWithImpl$Query$Drafts$drafts$edges$node$category;

  factory CopyWith$Query$Drafts$drafts$edges$node$category.stub(TRes res) =
      _CopyWithStubImpl$Query$Drafts$drafts$edges$node$category;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Drafts$drafts$edges$node$category<TRes>
    implements CopyWith$Query$Drafts$drafts$edges$node$category<TRes> {
  _CopyWithImpl$Query$Drafts$drafts$edges$node$category(
    this._instance,
    this._then,
  );

  final Query$Drafts$drafts$edges$node$category _instance;

  final TRes Function(Query$Drafts$drafts$edges$node$category) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Drafts$drafts$edges$node$category(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Drafts$drafts$edges$node$category<TRes>
    implements CopyWith$Query$Drafts$drafts$edges$node$category<TRes> {
  _CopyWithStubImpl$Query$Drafts$drafts$edges$node$category(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreatePosts {
  factory Variables$Mutation$CreatePosts({
    required Input$CreatePostInput createPostInput,
    required Input$CreatePostInput createPostInput2,
    required List<String?> hashtagTitles,
    MultipartFile? workImage,
    MultipartFile? image,
  }) =>
      Variables$Mutation$CreatePosts._({
        r'createPostInput': createPostInput,
        r'createPostInput2': createPostInput2,
        r'hashtagTitles': hashtagTitles,
        if (workImage != null) r'workImage': workImage,
        if (image != null) r'image': image,
      });

  Variables$Mutation$CreatePosts._(this._$data);

  factory Variables$Mutation$CreatePosts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$createPostInput = data['createPostInput'];
    result$data['createPostInput'] = Input$CreatePostInput.fromJson(
        (l$createPostInput as Map<String, dynamic>));
    final l$createPostInput2 = data['createPostInput2'];
    result$data['createPostInput2'] = Input$CreatePostInput.fromJson(
        (l$createPostInput2 as Map<String, dynamic>));
    final l$hashtagTitles = data['hashtagTitles'];
    result$data['hashtagTitles'] =
        (l$hashtagTitles as List<dynamic>).map((e) => (e as String?)).toList();
    if (data.containsKey('workImage')) {
      final l$workImage = data['workImage'];
      result$data['workImage'] = (l$workImage as MultipartFile?);
    }
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] = (l$image as MultipartFile?);
    }
    return Variables$Mutation$CreatePosts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreatePostInput get createPostInput =>
      (_$data['createPostInput'] as Input$CreatePostInput);
  Input$CreatePostInput get createPostInput2 =>
      (_$data['createPostInput2'] as Input$CreatePostInput);
  List<String?> get hashtagTitles => (_$data['hashtagTitles'] as List<String?>);
  MultipartFile? get workImage => (_$data['workImage'] as MultipartFile?);
  MultipartFile? get image => (_$data['image'] as MultipartFile?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$createPostInput = createPostInput;
    result$data['createPostInput'] = l$createPostInput.toJson();
    final l$createPostInput2 = createPostInput2;
    result$data['createPostInput2'] = l$createPostInput2.toJson();
    final l$hashtagTitles = hashtagTitles;
    result$data['hashtagTitles'] = l$hashtagTitles.map((e) => e).toList();
    if (_$data.containsKey('workImage')) {
      final l$workImage = workImage;
      result$data['workImage'] = l$workImage;
    }
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = l$image;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePosts<Variables$Mutation$CreatePosts>
      get copyWith => CopyWith$Variables$Mutation$CreatePosts(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreatePosts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPostInput = createPostInput;
    final lOther$createPostInput = other.createPostInput;
    if (l$createPostInput != lOther$createPostInput) {
      return false;
    }
    final l$createPostInput2 = createPostInput2;
    final lOther$createPostInput2 = other.createPostInput2;
    if (l$createPostInput2 != lOther$createPostInput2) {
      return false;
    }
    final l$hashtagTitles = hashtagTitles;
    final lOther$hashtagTitles = other.hashtagTitles;
    if (l$hashtagTitles.length != lOther$hashtagTitles.length) {
      return false;
    }
    for (int i = 0; i < l$hashtagTitles.length; i++) {
      final l$hashtagTitles$entry = l$hashtagTitles[i];
      final lOther$hashtagTitles$entry = lOther$hashtagTitles[i];
      if (l$hashtagTitles$entry != lOther$hashtagTitles$entry) {
        return false;
      }
    }
    final l$workImage = workImage;
    final lOther$workImage = other.workImage;
    if (_$data.containsKey('workImage') !=
        other._$data.containsKey('workImage')) {
      return false;
    }
    if (l$workImage != lOther$workImage) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != lOther$image) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createPostInput = createPostInput;
    final l$createPostInput2 = createPostInput2;
    final l$hashtagTitles = hashtagTitles;
    final l$workImage = workImage;
    final l$image = image;
    return Object.hashAll([
      l$createPostInput,
      l$createPostInput2,
      Object.hashAll(l$hashtagTitles.map((v) => v)),
      _$data.containsKey('workImage') ? l$workImage : const {},
      _$data.containsKey('image') ? l$image : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreatePosts<TRes> {
  factory CopyWith$Variables$Mutation$CreatePosts(
    Variables$Mutation$CreatePosts instance,
    TRes Function(Variables$Mutation$CreatePosts) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePosts;

  factory CopyWith$Variables$Mutation$CreatePosts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePosts;

  TRes call({
    Input$CreatePostInput? createPostInput,
    Input$CreatePostInput? createPostInput2,
    List<String?>? hashtagTitles,
    MultipartFile? workImage,
    MultipartFile? image,
  });
}

class _CopyWithImpl$Variables$Mutation$CreatePosts<TRes>
    implements CopyWith$Variables$Mutation$CreatePosts<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePosts(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePosts _instance;

  final TRes Function(Variables$Mutation$CreatePosts) _then;

  static const _undefined = {};

  TRes call({
    Object? createPostInput = _undefined,
    Object? createPostInput2 = _undefined,
    Object? hashtagTitles = _undefined,
    Object? workImage = _undefined,
    Object? image = _undefined,
  }) =>
      _then(Variables$Mutation$CreatePosts._({
        ..._instance._$data,
        if (createPostInput != _undefined && createPostInput != null)
          'createPostInput': (createPostInput as Input$CreatePostInput),
        if (createPostInput2 != _undefined && createPostInput2 != null)
          'createPostInput2': (createPostInput2 as Input$CreatePostInput),
        if (hashtagTitles != _undefined && hashtagTitles != null)
          'hashtagTitles': (hashtagTitles as List<String?>),
        if (workImage != _undefined) 'workImage': (workImage as MultipartFile?),
        if (image != _undefined) 'image': (image as MultipartFile?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreatePosts<TRes>
    implements CopyWith$Variables$Mutation$CreatePosts<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePosts(this._res);

  TRes _res;

  call({
    Input$CreatePostInput? createPostInput,
    Input$CreatePostInput? createPostInput2,
    List<String?>? hashtagTitles,
    MultipartFile? workImage,
    MultipartFile? image,
  }) =>
      _res;
}

class Mutation$CreatePosts {
  Mutation$CreatePosts({
    required this.createPosts,
    required this.$__typename,
  });

  factory Mutation$CreatePosts.fromJson(Map<String, dynamic> json) {
    final l$createPosts = json['createPosts'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePosts(
      createPosts: Mutation$CreatePosts$createPosts.fromJson(
          (l$createPosts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreatePosts$createPosts createPosts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPosts = createPosts;
    _resultData['createPosts'] = l$createPosts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPosts = createPosts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createPosts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePosts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPosts = createPosts;
    final lOther$createPosts = other.createPosts;
    if (l$createPosts != lOther$createPosts) {
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

extension UtilityExtension$Mutation$CreatePosts on Mutation$CreatePosts {
  CopyWith$Mutation$CreatePosts<Mutation$CreatePosts> get copyWith =>
      CopyWith$Mutation$CreatePosts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreatePosts<TRes> {
  factory CopyWith$Mutation$CreatePosts(
    Mutation$CreatePosts instance,
    TRes Function(Mutation$CreatePosts) then,
  ) = _CopyWithImpl$Mutation$CreatePosts;

  factory CopyWith$Mutation$CreatePosts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePosts;

  TRes call({
    Mutation$CreatePosts$createPosts? createPosts,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePosts$createPosts<TRes> get createPosts;
}

class _CopyWithImpl$Mutation$CreatePosts<TRes>
    implements CopyWith$Mutation$CreatePosts<TRes> {
  _CopyWithImpl$Mutation$CreatePosts(
    this._instance,
    this._then,
  );

  final Mutation$CreatePosts _instance;

  final TRes Function(Mutation$CreatePosts) _then;

  static const _undefined = {};

  TRes call({
    Object? createPosts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePosts(
        createPosts: createPosts == _undefined || createPosts == null
            ? _instance.createPosts
            : (createPosts as Mutation$CreatePosts$createPosts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreatePosts$createPosts<TRes> get createPosts {
    final local$createPosts = _instance.createPosts;
    return CopyWith$Mutation$CreatePosts$createPosts(
        local$createPosts, (e) => call(createPosts: e));
  }
}

class _CopyWithStubImpl$Mutation$CreatePosts<TRes>
    implements CopyWith$Mutation$CreatePosts<TRes> {
  _CopyWithStubImpl$Mutation$CreatePosts(this._res);

  TRes _res;

  call({
    Mutation$CreatePosts$createPosts? createPosts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreatePosts$createPosts<TRes> get createPosts =>
      CopyWith$Mutation$CreatePosts$createPosts.stub(_res);
}

const documentNodeMutationCreatePosts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePosts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createPostInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreatePostInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createPostInput2')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreatePostInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hashtagTitles')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'workImage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Upload'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'image')),
        type: NamedTypeNode(
          name: NameNode(value: 'Upload'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPosts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'createPostInput')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input2'),
            value: VariableNode(name: NameNode(value: 'createPostInput2')),
          ),
          ArgumentNode(
            name: NameNode(value: 'hashtagTitles'),
            value: VariableNode(name: NameNode(value: 'hashtagTitles')),
          ),
          ArgumentNode(
            name: NameNode(value: 'workImage'),
            value: VariableNode(name: NameNode(value: 'workImage')),
          ),
          ArgumentNode(
            name: NameNode(value: 'image'),
            value: VariableNode(name: NameNode(value: 'image')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreatePosts _parserFn$Mutation$CreatePosts(
        Map<String, dynamic> data) =>
    Mutation$CreatePosts.fromJson(data);
typedef OnMutationCompleted$Mutation$CreatePosts = FutureOr<void> Function(
  dynamic,
  Mutation$CreatePosts?,
);

class Options$Mutation$CreatePosts
    extends graphql.MutationOptions<Mutation$CreatePosts> {
  Options$Mutation$CreatePosts({
    String? operationName,
    required Variables$Mutation$CreatePosts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePosts? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePosts>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$CreatePosts(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePosts,
          parserFn: _parserFn$Mutation$CreatePosts,
        );

  final OnMutationCompleted$Mutation$CreatePosts? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreatePosts
    extends graphql.WatchQueryOptions<Mutation$CreatePosts> {
  WatchOptions$Mutation$CreatePosts({
    String? operationName,
    required Variables$Mutation$CreatePosts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreatePosts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreatePosts,
        );
}

extension ClientExtension$Mutation$CreatePosts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreatePosts>> mutate$CreatePosts(
          Options$Mutation$CreatePosts options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreatePosts> watchMutation$CreatePosts(
          WatchOptions$Mutation$CreatePosts options) =>
      this.watchMutation(options);
}

class Mutation$CreatePosts$HookResult {
  Mutation$CreatePosts$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreatePosts runMutation;

  final graphql.QueryResult<Mutation$CreatePosts> result;
}

Mutation$CreatePosts$HookResult useMutation$CreatePosts(
    [WidgetOptions$Mutation$CreatePosts? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreatePosts());
  return Mutation$CreatePosts$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreatePosts> useWatchMutation$CreatePosts(
        WatchOptions$Mutation$CreatePosts options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreatePosts
    extends graphql.MutationOptions<Mutation$CreatePosts> {
  WidgetOptions$Mutation$CreatePosts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePosts? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePosts>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$CreatePosts(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePosts,
          parserFn: _parserFn$Mutation$CreatePosts,
        );

  final OnMutationCompleted$Mutation$CreatePosts? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreatePosts
    = graphql.MultiSourceResult<Mutation$CreatePosts> Function(
  Variables$Mutation$CreatePosts, {
  Object? optimisticResult,
});
typedef Builder$Mutation$CreatePosts = widgets.Widget Function(
  RunMutation$Mutation$CreatePosts,
  graphql.QueryResult<Mutation$CreatePosts>?,
);

class Mutation$CreatePosts$Widget
    extends graphql_flutter.Mutation<Mutation$CreatePosts> {
  Mutation$CreatePosts$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreatePosts? options,
    required Builder$Mutation$CreatePosts builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreatePosts(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$CreatePosts$createPosts {
  Mutation$CreatePosts$createPosts({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$CreatePosts$createPosts.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePosts$createPosts(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
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
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePosts$createPosts) ||
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

extension UtilityExtension$Mutation$CreatePosts$createPosts
    on Mutation$CreatePosts$createPosts {
  CopyWith$Mutation$CreatePosts$createPosts<Mutation$CreatePosts$createPosts>
      get copyWith => CopyWith$Mutation$CreatePosts$createPosts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePosts$createPosts<TRes> {
  factory CopyWith$Mutation$CreatePosts$createPosts(
    Mutation$CreatePosts$createPosts instance,
    TRes Function(Mutation$CreatePosts$createPosts) then,
  ) = _CopyWithImpl$Mutation$CreatePosts$createPosts;

  factory CopyWith$Mutation$CreatePosts$createPosts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePosts$createPosts;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreatePosts$createPosts<TRes>
    implements CopyWith$Mutation$CreatePosts$createPosts<TRes> {
  _CopyWithImpl$Mutation$CreatePosts$createPosts(
    this._instance,
    this._then,
  );

  final Mutation$CreatePosts$createPosts _instance;

  final TRes Function(Mutation$CreatePosts$createPosts) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePosts$createPosts(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreatePosts$createPosts<TRes>
    implements CopyWith$Mutation$CreatePosts$createPosts<TRes> {
  _CopyWithStubImpl$Mutation$CreatePosts$createPosts(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreatePost {
  factory Variables$Mutation$CreatePost({
    required Input$CreatePostInput createPostInput,
    required List<String?> hashtagTitles,
    MultipartFile? workImage,
  }) =>
      Variables$Mutation$CreatePost._({
        r'createPostInput': createPostInput,
        r'hashtagTitles': hashtagTitles,
        if (workImage != null) r'workImage': workImage,
      });

  Variables$Mutation$CreatePost._(this._$data);

  factory Variables$Mutation$CreatePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$createPostInput = data['createPostInput'];
    result$data['createPostInput'] = Input$CreatePostInput.fromJson(
        (l$createPostInput as Map<String, dynamic>));
    final l$hashtagTitles = data['hashtagTitles'];
    result$data['hashtagTitles'] =
        (l$hashtagTitles as List<dynamic>).map((e) => (e as String?)).toList();
    if (data.containsKey('workImage')) {
      final l$workImage = data['workImage'];
      result$data['workImage'] = (l$workImage as MultipartFile?);
    }
    return Variables$Mutation$CreatePost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreatePostInput get createPostInput =>
      (_$data['createPostInput'] as Input$CreatePostInput);
  List<String?> get hashtagTitles => (_$data['hashtagTitles'] as List<String?>);
  MultipartFile? get workImage => (_$data['workImage'] as MultipartFile?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$createPostInput = createPostInput;
    result$data['createPostInput'] = l$createPostInput.toJson();
    final l$hashtagTitles = hashtagTitles;
    result$data['hashtagTitles'] = l$hashtagTitles.map((e) => e).toList();
    if (_$data.containsKey('workImage')) {
      final l$workImage = workImage;
      result$data['workImage'] = l$workImage;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePost<Variables$Mutation$CreatePost>
      get copyWith => CopyWith$Variables$Mutation$CreatePost(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreatePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPostInput = createPostInput;
    final lOther$createPostInput = other.createPostInput;
    if (l$createPostInput != lOther$createPostInput) {
      return false;
    }
    final l$hashtagTitles = hashtagTitles;
    final lOther$hashtagTitles = other.hashtagTitles;
    if (l$hashtagTitles.length != lOther$hashtagTitles.length) {
      return false;
    }
    for (int i = 0; i < l$hashtagTitles.length; i++) {
      final l$hashtagTitles$entry = l$hashtagTitles[i];
      final lOther$hashtagTitles$entry = lOther$hashtagTitles[i];
      if (l$hashtagTitles$entry != lOther$hashtagTitles$entry) {
        return false;
      }
    }
    final l$workImage = workImage;
    final lOther$workImage = other.workImage;
    if (_$data.containsKey('workImage') !=
        other._$data.containsKey('workImage')) {
      return false;
    }
    if (l$workImage != lOther$workImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createPostInput = createPostInput;
    final l$hashtagTitles = hashtagTitles;
    final l$workImage = workImage;
    return Object.hashAll([
      l$createPostInput,
      Object.hashAll(l$hashtagTitles.map((v) => v)),
      _$data.containsKey('workImage') ? l$workImage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreatePost<TRes> {
  factory CopyWith$Variables$Mutation$CreatePost(
    Variables$Mutation$CreatePost instance,
    TRes Function(Variables$Mutation$CreatePost) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePost;

  factory CopyWith$Variables$Mutation$CreatePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePost;

  TRes call({
    Input$CreatePostInput? createPostInput,
    List<String?>? hashtagTitles,
    MultipartFile? workImage,
  });
}

class _CopyWithImpl$Variables$Mutation$CreatePost<TRes>
    implements CopyWith$Variables$Mutation$CreatePost<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePost _instance;

  final TRes Function(Variables$Mutation$CreatePost) _then;

  static const _undefined = {};

  TRes call({
    Object? createPostInput = _undefined,
    Object? hashtagTitles = _undefined,
    Object? workImage = _undefined,
  }) =>
      _then(Variables$Mutation$CreatePost._({
        ..._instance._$data,
        if (createPostInput != _undefined && createPostInput != null)
          'createPostInput': (createPostInput as Input$CreatePostInput),
        if (hashtagTitles != _undefined && hashtagTitles != null)
          'hashtagTitles': (hashtagTitles as List<String?>),
        if (workImage != _undefined) 'workImage': (workImage as MultipartFile?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreatePost<TRes>
    implements CopyWith$Variables$Mutation$CreatePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePost(this._res);

  TRes _res;

  call({
    Input$CreatePostInput? createPostInput,
    List<String?>? hashtagTitles,
    MultipartFile? workImage,
  }) =>
      _res;
}

class Mutation$CreatePost {
  Mutation$CreatePost({
    required this.createPost,
    required this.$__typename,
  });

  factory Mutation$CreatePost.fromJson(Map<String, dynamic> json) {
    final l$createPost = json['createPost'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePost(
      createPost: Mutation$CreatePost$createPost.fromJson(
          (l$createPost as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreatePost$createPost createPost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPost = createPost;
    _resultData['createPost'] = l$createPost.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPost = createPost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createPost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPost = createPost;
    final lOther$createPost = other.createPost;
    if (l$createPost != lOther$createPost) {
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

extension UtilityExtension$Mutation$CreatePost on Mutation$CreatePost {
  CopyWith$Mutation$CreatePost<Mutation$CreatePost> get copyWith =>
      CopyWith$Mutation$CreatePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreatePost<TRes> {
  factory CopyWith$Mutation$CreatePost(
    Mutation$CreatePost instance,
    TRes Function(Mutation$CreatePost) then,
  ) = _CopyWithImpl$Mutation$CreatePost;

  factory CopyWith$Mutation$CreatePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePost;

  TRes call({
    Mutation$CreatePost$createPost? createPost,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePost$createPost<TRes> get createPost;
}

class _CopyWithImpl$Mutation$CreatePost<TRes>
    implements CopyWith$Mutation$CreatePost<TRes> {
  _CopyWithImpl$Mutation$CreatePost(
    this._instance,
    this._then,
  );

  final Mutation$CreatePost _instance;

  final TRes Function(Mutation$CreatePost) _then;

  static const _undefined = {};

  TRes call({
    Object? createPost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePost(
        createPost: createPost == _undefined || createPost == null
            ? _instance.createPost
            : (createPost as Mutation$CreatePost$createPost),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreatePost$createPost<TRes> get createPost {
    final local$createPost = _instance.createPost;
    return CopyWith$Mutation$CreatePost$createPost(
        local$createPost, (e) => call(createPost: e));
  }
}

class _CopyWithStubImpl$Mutation$CreatePost<TRes>
    implements CopyWith$Mutation$CreatePost<TRes> {
  _CopyWithStubImpl$Mutation$CreatePost(this._res);

  TRes _res;

  call({
    Mutation$CreatePost$createPost? createPost,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreatePost$createPost<TRes> get createPost =>
      CopyWith$Mutation$CreatePost$createPost.stub(_res);
}

const documentNodeMutationCreatePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createPostInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreatePostInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hashtagTitles')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'workImage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Upload'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPost'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'createPostInput')),
          ),
          ArgumentNode(
            name: NameNode(value: 'hashtagTitles'),
            value: VariableNode(name: NameNode(value: 'hashtagTitles')),
          ),
          ArgumentNode(
            name: NameNode(value: 'workImage'),
            value: VariableNode(name: NameNode(value: 'workImage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreatePost _parserFn$Mutation$CreatePost(Map<String, dynamic> data) =>
    Mutation$CreatePost.fromJson(data);
typedef OnMutationCompleted$Mutation$CreatePost = FutureOr<void> Function(
  dynamic,
  Mutation$CreatePost?,
);

class Options$Mutation$CreatePost
    extends graphql.MutationOptions<Mutation$CreatePost> {
  Options$Mutation$CreatePost({
    String? operationName,
    required Variables$Mutation$CreatePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$CreatePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePost,
          parserFn: _parserFn$Mutation$CreatePost,
        );

  final OnMutationCompleted$Mutation$CreatePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreatePost
    extends graphql.WatchQueryOptions<Mutation$CreatePost> {
  WatchOptions$Mutation$CreatePost({
    String? operationName,
    required Variables$Mutation$CreatePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreatePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreatePost,
        );
}

extension ClientExtension$Mutation$CreatePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreatePost>> mutate$CreatePost(
          Options$Mutation$CreatePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreatePost> watchMutation$CreatePost(
          WatchOptions$Mutation$CreatePost options) =>
      this.watchMutation(options);
}

class Mutation$CreatePost$HookResult {
  Mutation$CreatePost$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreatePost runMutation;

  final graphql.QueryResult<Mutation$CreatePost> result;
}

Mutation$CreatePost$HookResult useMutation$CreatePost(
    [WidgetOptions$Mutation$CreatePost? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreatePost());
  return Mutation$CreatePost$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreatePost> useWatchMutation$CreatePost(
        WatchOptions$Mutation$CreatePost options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreatePost
    extends graphql.MutationOptions<Mutation$CreatePost> {
  WidgetOptions$Mutation$CreatePost({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$CreatePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePost,
          parserFn: _parserFn$Mutation$CreatePost,
        );

  final OnMutationCompleted$Mutation$CreatePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreatePost
    = graphql.MultiSourceResult<Mutation$CreatePost> Function(
  Variables$Mutation$CreatePost, {
  Object? optimisticResult,
});
typedef Builder$Mutation$CreatePost = widgets.Widget Function(
  RunMutation$Mutation$CreatePost,
  graphql.QueryResult<Mutation$CreatePost>?,
);

class Mutation$CreatePost$Widget
    extends graphql_flutter.Mutation<Mutation$CreatePost> {
  Mutation$CreatePost$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreatePost? options,
    required Builder$Mutation$CreatePost builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreatePost(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$CreatePost$createPost {
  Mutation$CreatePost$createPost({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$CreatePost$createPost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePost$createPost(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
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
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePost$createPost) ||
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

extension UtilityExtension$Mutation$CreatePost$createPost
    on Mutation$CreatePost$createPost {
  CopyWith$Mutation$CreatePost$createPost<Mutation$CreatePost$createPost>
      get copyWith => CopyWith$Mutation$CreatePost$createPost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePost$createPost<TRes> {
  factory CopyWith$Mutation$CreatePost$createPost(
    Mutation$CreatePost$createPost instance,
    TRes Function(Mutation$CreatePost$createPost) then,
  ) = _CopyWithImpl$Mutation$CreatePost$createPost;

  factory CopyWith$Mutation$CreatePost$createPost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePost$createPost;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreatePost$createPost<TRes>
    implements CopyWith$Mutation$CreatePost$createPost<TRes> {
  _CopyWithImpl$Mutation$CreatePost$createPost(
    this._instance,
    this._then,
  );

  final Mutation$CreatePost$createPost _instance;

  final TRes Function(Mutation$CreatePost$createPost) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePost$createPost(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreatePost$createPost<TRes>
    implements CopyWith$Mutation$CreatePost$createPost<TRes> {
  _CopyWithStubImpl$Mutation$CreatePost$createPost(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateDraft {
  factory Variables$Mutation$CreateDraft({
    required Input$CreateDraftInput createDraftInput,
    required List<String?> hashtagTitles,
  }) =>
      Variables$Mutation$CreateDraft._({
        r'createDraftInput': createDraftInput,
        r'hashtagTitles': hashtagTitles,
      });

  Variables$Mutation$CreateDraft._(this._$data);

  factory Variables$Mutation$CreateDraft.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$createDraftInput = data['createDraftInput'];
    result$data['createDraftInput'] = Input$CreateDraftInput.fromJson(
        (l$createDraftInput as Map<String, dynamic>));
    final l$hashtagTitles = data['hashtagTitles'];
    result$data['hashtagTitles'] =
        (l$hashtagTitles as List<dynamic>).map((e) => (e as String?)).toList();
    return Variables$Mutation$CreateDraft._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateDraftInput get createDraftInput =>
      (_$data['createDraftInput'] as Input$CreateDraftInput);
  List<String?> get hashtagTitles => (_$data['hashtagTitles'] as List<String?>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$createDraftInput = createDraftInput;
    result$data['createDraftInput'] = l$createDraftInput.toJson();
    final l$hashtagTitles = hashtagTitles;
    result$data['hashtagTitles'] = l$hashtagTitles.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateDraft<Variables$Mutation$CreateDraft>
      get copyWith => CopyWith$Variables$Mutation$CreateDraft(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateDraft) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDraftInput = createDraftInput;
    final lOther$createDraftInput = other.createDraftInput;
    if (l$createDraftInput != lOther$createDraftInput) {
      return false;
    }
    final l$hashtagTitles = hashtagTitles;
    final lOther$hashtagTitles = other.hashtagTitles;
    if (l$hashtagTitles.length != lOther$hashtagTitles.length) {
      return false;
    }
    for (int i = 0; i < l$hashtagTitles.length; i++) {
      final l$hashtagTitles$entry = l$hashtagTitles[i];
      final lOther$hashtagTitles$entry = lOther$hashtagTitles[i];
      if (l$hashtagTitles$entry != lOther$hashtagTitles$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createDraftInput = createDraftInput;
    final l$hashtagTitles = hashtagTitles;
    return Object.hashAll([
      l$createDraftInput,
      Object.hashAll(l$hashtagTitles.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateDraft<TRes> {
  factory CopyWith$Variables$Mutation$CreateDraft(
    Variables$Mutation$CreateDraft instance,
    TRes Function(Variables$Mutation$CreateDraft) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateDraft;

  factory CopyWith$Variables$Mutation$CreateDraft.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateDraft;

  TRes call({
    Input$CreateDraftInput? createDraftInput,
    List<String?>? hashtagTitles,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateDraft<TRes>
    implements CopyWith$Variables$Mutation$CreateDraft<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateDraft(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateDraft _instance;

  final TRes Function(Variables$Mutation$CreateDraft) _then;

  static const _undefined = {};

  TRes call({
    Object? createDraftInput = _undefined,
    Object? hashtagTitles = _undefined,
  }) =>
      _then(Variables$Mutation$CreateDraft._({
        ..._instance._$data,
        if (createDraftInput != _undefined && createDraftInput != null)
          'createDraftInput': (createDraftInput as Input$CreateDraftInput),
        if (hashtagTitles != _undefined && hashtagTitles != null)
          'hashtagTitles': (hashtagTitles as List<String?>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateDraft<TRes>
    implements CopyWith$Variables$Mutation$CreateDraft<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateDraft(this._res);

  TRes _res;

  call({
    Input$CreateDraftInput? createDraftInput,
    List<String?>? hashtagTitles,
  }) =>
      _res;
}

class Mutation$CreateDraft {
  Mutation$CreateDraft({
    required this.createDraft,
    required this.$__typename,
  });

  factory Mutation$CreateDraft.fromJson(Map<String, dynamic> json) {
    final l$createDraft = json['createDraft'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDraft(
      createDraft: Mutation$CreateDraft$createDraft.fromJson(
          (l$createDraft as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateDraft$createDraft createDraft;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createDraft = createDraft;
    _resultData['createDraft'] = l$createDraft.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createDraft = createDraft;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createDraft,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateDraft) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDraft = createDraft;
    final lOther$createDraft = other.createDraft;
    if (l$createDraft != lOther$createDraft) {
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

extension UtilityExtension$Mutation$CreateDraft on Mutation$CreateDraft {
  CopyWith$Mutation$CreateDraft<Mutation$CreateDraft> get copyWith =>
      CopyWith$Mutation$CreateDraft(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateDraft<TRes> {
  factory CopyWith$Mutation$CreateDraft(
    Mutation$CreateDraft instance,
    TRes Function(Mutation$CreateDraft) then,
  ) = _CopyWithImpl$Mutation$CreateDraft;

  factory CopyWith$Mutation$CreateDraft.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateDraft;

  TRes call({
    Mutation$CreateDraft$createDraft? createDraft,
    String? $__typename,
  });
  CopyWith$Mutation$CreateDraft$createDraft<TRes> get createDraft;
}

class _CopyWithImpl$Mutation$CreateDraft<TRes>
    implements CopyWith$Mutation$CreateDraft<TRes> {
  _CopyWithImpl$Mutation$CreateDraft(
    this._instance,
    this._then,
  );

  final Mutation$CreateDraft _instance;

  final TRes Function(Mutation$CreateDraft) _then;

  static const _undefined = {};

  TRes call({
    Object? createDraft = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateDraft(
        createDraft: createDraft == _undefined || createDraft == null
            ? _instance.createDraft
            : (createDraft as Mutation$CreateDraft$createDraft),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateDraft$createDraft<TRes> get createDraft {
    final local$createDraft = _instance.createDraft;
    return CopyWith$Mutation$CreateDraft$createDraft(
        local$createDraft, (e) => call(createDraft: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateDraft<TRes>
    implements CopyWith$Mutation$CreateDraft<TRes> {
  _CopyWithStubImpl$Mutation$CreateDraft(this._res);

  TRes _res;

  call({
    Mutation$CreateDraft$createDraft? createDraft,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateDraft$createDraft<TRes> get createDraft =>
      CopyWith$Mutation$CreateDraft$createDraft.stub(_res);
}

const documentNodeMutationCreateDraft = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateDraft'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createDraftInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateDraftInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hashtagTitles')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createDraft'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'createDraftInput')),
          ),
          ArgumentNode(
            name: NameNode(value: 'hashtagTitles'),
            value: VariableNode(name: NameNode(value: 'hashtagTitles')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateDraft _parserFn$Mutation$CreateDraft(
        Map<String, dynamic> data) =>
    Mutation$CreateDraft.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateDraft = FutureOr<void> Function(
  dynamic,
  Mutation$CreateDraft?,
);

class Options$Mutation$CreateDraft
    extends graphql.MutationOptions<Mutation$CreateDraft> {
  Options$Mutation$CreateDraft({
    String? operationName,
    required Variables$Mutation$CreateDraft variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateDraft? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateDraft>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$CreateDraft(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateDraft,
          parserFn: _parserFn$Mutation$CreateDraft,
        );

  final OnMutationCompleted$Mutation$CreateDraft? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateDraft
    extends graphql.WatchQueryOptions<Mutation$CreateDraft> {
  WatchOptions$Mutation$CreateDraft({
    String? operationName,
    required Variables$Mutation$CreateDraft variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateDraft,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateDraft,
        );
}

extension ClientExtension$Mutation$CreateDraft on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateDraft>> mutate$CreateDraft(
          Options$Mutation$CreateDraft options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateDraft> watchMutation$CreateDraft(
          WatchOptions$Mutation$CreateDraft options) =>
      this.watchMutation(options);
}

class Mutation$CreateDraft$HookResult {
  Mutation$CreateDraft$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateDraft runMutation;

  final graphql.QueryResult<Mutation$CreateDraft> result;
}

Mutation$CreateDraft$HookResult useMutation$CreateDraft(
    [WidgetOptions$Mutation$CreateDraft? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateDraft());
  return Mutation$CreateDraft$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateDraft> useWatchMutation$CreateDraft(
        WatchOptions$Mutation$CreateDraft options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateDraft
    extends graphql.MutationOptions<Mutation$CreateDraft> {
  WidgetOptions$Mutation$CreateDraft({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateDraft? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateDraft>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$CreateDraft(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateDraft,
          parserFn: _parserFn$Mutation$CreateDraft,
        );

  final OnMutationCompleted$Mutation$CreateDraft? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateDraft
    = graphql.MultiSourceResult<Mutation$CreateDraft> Function(
  Variables$Mutation$CreateDraft, {
  Object? optimisticResult,
});
typedef Builder$Mutation$CreateDraft = widgets.Widget Function(
  RunMutation$Mutation$CreateDraft,
  graphql.QueryResult<Mutation$CreateDraft>?,
);

class Mutation$CreateDraft$Widget
    extends graphql_flutter.Mutation<Mutation$CreateDraft> {
  Mutation$CreateDraft$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateDraft? options,
    required Builder$Mutation$CreateDraft builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateDraft(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$CreateDraft$createDraft {
  Mutation$CreateDraft$createDraft({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$CreateDraft$createDraft.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDraft$createDraft(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
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
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateDraft$createDraft) ||
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

extension UtilityExtension$Mutation$CreateDraft$createDraft
    on Mutation$CreateDraft$createDraft {
  CopyWith$Mutation$CreateDraft$createDraft<Mutation$CreateDraft$createDraft>
      get copyWith => CopyWith$Mutation$CreateDraft$createDraft(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateDraft$createDraft<TRes> {
  factory CopyWith$Mutation$CreateDraft$createDraft(
    Mutation$CreateDraft$createDraft instance,
    TRes Function(Mutation$CreateDraft$createDraft) then,
  ) = _CopyWithImpl$Mutation$CreateDraft$createDraft;

  factory CopyWith$Mutation$CreateDraft$createDraft.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateDraft$createDraft;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateDraft$createDraft<TRes>
    implements CopyWith$Mutation$CreateDraft$createDraft<TRes> {
  _CopyWithImpl$Mutation$CreateDraft$createDraft(
    this._instance,
    this._then,
  );

  final Mutation$CreateDraft$createDraft _instance;

  final TRes Function(Mutation$CreateDraft$createDraft) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateDraft$createDraft(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateDraft$createDraft<TRes>
    implements CopyWith$Mutation$CreateDraft$createDraft<TRes> {
  _CopyWithStubImpl$Mutation$CreateDraft$createDraft(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateDraft {
  factory Variables$Mutation$UpdateDraft({
    required String id,
    required Input$UpdateDraftInput updateDraftInput,
    required List<String?> hashtagTitles,
  }) =>
      Variables$Mutation$UpdateDraft._({
        r'id': id,
        r'updateDraftInput': updateDraftInput,
        r'hashtagTitles': hashtagTitles,
      });

  Variables$Mutation$UpdateDraft._(this._$data);

  factory Variables$Mutation$UpdateDraft.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$updateDraftInput = data['updateDraftInput'];
    result$data['updateDraftInput'] = Input$UpdateDraftInput.fromJson(
        (l$updateDraftInput as Map<String, dynamic>));
    final l$hashtagTitles = data['hashtagTitles'];
    result$data['hashtagTitles'] =
        (l$hashtagTitles as List<dynamic>).map((e) => (e as String?)).toList();
    return Variables$Mutation$UpdateDraft._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Input$UpdateDraftInput get updateDraftInput =>
      (_$data['updateDraftInput'] as Input$UpdateDraftInput);
  List<String?> get hashtagTitles => (_$data['hashtagTitles'] as List<String?>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$updateDraftInput = updateDraftInput;
    result$data['updateDraftInput'] = l$updateDraftInput.toJson();
    final l$hashtagTitles = hashtagTitles;
    result$data['hashtagTitles'] = l$hashtagTitles.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDraft<Variables$Mutation$UpdateDraft>
      get copyWith => CopyWith$Variables$Mutation$UpdateDraft(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDraft) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$updateDraftInput = updateDraftInput;
    final lOther$updateDraftInput = other.updateDraftInput;
    if (l$updateDraftInput != lOther$updateDraftInput) {
      return false;
    }
    final l$hashtagTitles = hashtagTitles;
    final lOther$hashtagTitles = other.hashtagTitles;
    if (l$hashtagTitles.length != lOther$hashtagTitles.length) {
      return false;
    }
    for (int i = 0; i < l$hashtagTitles.length; i++) {
      final l$hashtagTitles$entry = l$hashtagTitles[i];
      final lOther$hashtagTitles$entry = lOther$hashtagTitles[i];
      if (l$hashtagTitles$entry != lOther$hashtagTitles$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$updateDraftInput = updateDraftInput;
    final l$hashtagTitles = hashtagTitles;
    return Object.hashAll([
      l$id,
      l$updateDraftInput,
      Object.hashAll(l$hashtagTitles.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDraft<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDraft(
    Variables$Mutation$UpdateDraft instance,
    TRes Function(Variables$Mutation$UpdateDraft) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDraft;

  factory CopyWith$Variables$Mutation$UpdateDraft.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDraft;

  TRes call({
    String? id,
    Input$UpdateDraftInput? updateDraftInput,
    List<String?>? hashtagTitles,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateDraft<TRes>
    implements CopyWith$Variables$Mutation$UpdateDraft<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDraft(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDraft _instance;

  final TRes Function(Variables$Mutation$UpdateDraft) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? updateDraftInput = _undefined,
    Object? hashtagTitles = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateDraft._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (updateDraftInput != _undefined && updateDraftInput != null)
          'updateDraftInput': (updateDraftInput as Input$UpdateDraftInput),
        if (hashtagTitles != _undefined && hashtagTitles != null)
          'hashtagTitles': (hashtagTitles as List<String?>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDraft<TRes>
    implements CopyWith$Variables$Mutation$UpdateDraft<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDraft(this._res);

  TRes _res;

  call({
    String? id,
    Input$UpdateDraftInput? updateDraftInput,
    List<String?>? hashtagTitles,
  }) =>
      _res;
}

class Mutation$UpdateDraft {
  Mutation$UpdateDraft({
    required this.updateDraft,
    required this.$__typename,
  });

  factory Mutation$UpdateDraft.fromJson(Map<String, dynamic> json) {
    final l$updateDraft = json['updateDraft'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDraft(
      updateDraft: Mutation$UpdateDraft$updateDraft.fromJson(
          (l$updateDraft as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateDraft$updateDraft updateDraft;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateDraft = updateDraft;
    _resultData['updateDraft'] = l$updateDraft.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateDraft = updateDraft;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateDraft,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDraft) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateDraft = updateDraft;
    final lOther$updateDraft = other.updateDraft;
    if (l$updateDraft != lOther$updateDraft) {
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

extension UtilityExtension$Mutation$UpdateDraft on Mutation$UpdateDraft {
  CopyWith$Mutation$UpdateDraft<Mutation$UpdateDraft> get copyWith =>
      CopyWith$Mutation$UpdateDraft(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateDraft<TRes> {
  factory CopyWith$Mutation$UpdateDraft(
    Mutation$UpdateDraft instance,
    TRes Function(Mutation$UpdateDraft) then,
  ) = _CopyWithImpl$Mutation$UpdateDraft;

  factory CopyWith$Mutation$UpdateDraft.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDraft;

  TRes call({
    Mutation$UpdateDraft$updateDraft? updateDraft,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDraft$updateDraft<TRes> get updateDraft;
}

class _CopyWithImpl$Mutation$UpdateDraft<TRes>
    implements CopyWith$Mutation$UpdateDraft<TRes> {
  _CopyWithImpl$Mutation$UpdateDraft(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDraft _instance;

  final TRes Function(Mutation$UpdateDraft) _then;

  static const _undefined = {};

  TRes call({
    Object? updateDraft = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDraft(
        updateDraft: updateDraft == _undefined || updateDraft == null
            ? _instance.updateDraft
            : (updateDraft as Mutation$UpdateDraft$updateDraft),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateDraft$updateDraft<TRes> get updateDraft {
    final local$updateDraft = _instance.updateDraft;
    return CopyWith$Mutation$UpdateDraft$updateDraft(
        local$updateDraft, (e) => call(updateDraft: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDraft<TRes>
    implements CopyWith$Mutation$UpdateDraft<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDraft(this._res);

  TRes _res;

  call({
    Mutation$UpdateDraft$updateDraft? updateDraft,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateDraft$updateDraft<TRes> get updateDraft =>
      CopyWith$Mutation$UpdateDraft$updateDraft.stub(_res);
}

const documentNodeMutationUpdateDraft = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDraft'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateDraftInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateDraftInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hashtagTitles')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateDraft'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'updateDraftInput')),
          ),
          ArgumentNode(
            name: NameNode(value: 'hashtagTitles'),
            value: VariableNode(name: NameNode(value: 'hashtagTitles')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateDraft _parserFn$Mutation$UpdateDraft(
        Map<String, dynamic> data) =>
    Mutation$UpdateDraft.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDraft = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateDraft?,
);

class Options$Mutation$UpdateDraft
    extends graphql.MutationOptions<Mutation$UpdateDraft> {
  Options$Mutation$UpdateDraft({
    String? operationName,
    required Variables$Mutation$UpdateDraft variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDraft? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDraft>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$UpdateDraft(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDraft,
          parserFn: _parserFn$Mutation$UpdateDraft,
        );

  final OnMutationCompleted$Mutation$UpdateDraft? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDraft
    extends graphql.WatchQueryOptions<Mutation$UpdateDraft> {
  WatchOptions$Mutation$UpdateDraft({
    String? operationName,
    required Variables$Mutation$UpdateDraft variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateDraft,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDraft,
        );
}

extension ClientExtension$Mutation$UpdateDraft on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDraft>> mutate$UpdateDraft(
          Options$Mutation$UpdateDraft options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDraft> watchMutation$UpdateDraft(
          WatchOptions$Mutation$UpdateDraft options) =>
      this.watchMutation(options);
}

class Mutation$UpdateDraft$HookResult {
  Mutation$UpdateDraft$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateDraft runMutation;

  final graphql.QueryResult<Mutation$UpdateDraft> result;
}

Mutation$UpdateDraft$HookResult useMutation$UpdateDraft(
    [WidgetOptions$Mutation$UpdateDraft? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateDraft());
  return Mutation$UpdateDraft$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateDraft> useWatchMutation$UpdateDraft(
        WatchOptions$Mutation$UpdateDraft options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateDraft
    extends graphql.MutationOptions<Mutation$UpdateDraft> {
  WidgetOptions$Mutation$UpdateDraft({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDraft? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDraft>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$UpdateDraft(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDraft,
          parserFn: _parserFn$Mutation$UpdateDraft,
        );

  final OnMutationCompleted$Mutation$UpdateDraft? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateDraft
    = graphql.MultiSourceResult<Mutation$UpdateDraft> Function(
  Variables$Mutation$UpdateDraft, {
  Object? optimisticResult,
});
typedef Builder$Mutation$UpdateDraft = widgets.Widget Function(
  RunMutation$Mutation$UpdateDraft,
  graphql.QueryResult<Mutation$UpdateDraft>?,
);

class Mutation$UpdateDraft$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateDraft> {
  Mutation$UpdateDraft$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateDraft? options,
    required Builder$Mutation$UpdateDraft builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateDraft(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$UpdateDraft$updateDraft {
  Mutation$UpdateDraft$updateDraft({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$UpdateDraft$updateDraft.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDraft$updateDraft(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
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
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDraft$updateDraft) ||
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

extension UtilityExtension$Mutation$UpdateDraft$updateDraft
    on Mutation$UpdateDraft$updateDraft {
  CopyWith$Mutation$UpdateDraft$updateDraft<Mutation$UpdateDraft$updateDraft>
      get copyWith => CopyWith$Mutation$UpdateDraft$updateDraft(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDraft$updateDraft<TRes> {
  factory CopyWith$Mutation$UpdateDraft$updateDraft(
    Mutation$UpdateDraft$updateDraft instance,
    TRes Function(Mutation$UpdateDraft$updateDraft) then,
  ) = _CopyWithImpl$Mutation$UpdateDraft$updateDraft;

  factory CopyWith$Mutation$UpdateDraft$updateDraft.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDraft$updateDraft;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDraft$updateDraft<TRes>
    implements CopyWith$Mutation$UpdateDraft$updateDraft<TRes> {
  _CopyWithImpl$Mutation$UpdateDraft$updateDraft(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDraft$updateDraft _instance;

  final TRes Function(Mutation$UpdateDraft$updateDraft) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDraft$updateDraft(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDraft$updateDraft<TRes>
    implements CopyWith$Mutation$UpdateDraft$updateDraft<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDraft$updateDraft(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteDraft {
  factory Variables$Mutation$DeleteDraft(
          {required Input$DeleteDraftInput input}) =>
      Variables$Mutation$DeleteDraft._({
        r'input': input,
      });

  Variables$Mutation$DeleteDraft._(this._$data);

  factory Variables$Mutation$DeleteDraft.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$DeleteDraftInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$DeleteDraft._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteDraftInput get input =>
      (_$data['input'] as Input$DeleteDraftInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteDraft<Variables$Mutation$DeleteDraft>
      get copyWith => CopyWith$Variables$Mutation$DeleteDraft(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteDraft) ||
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

abstract class CopyWith$Variables$Mutation$DeleteDraft<TRes> {
  factory CopyWith$Variables$Mutation$DeleteDraft(
    Variables$Mutation$DeleteDraft instance,
    TRes Function(Variables$Mutation$DeleteDraft) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteDraft;

  factory CopyWith$Variables$Mutation$DeleteDraft.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteDraft;

  TRes call({Input$DeleteDraftInput? input});
}

class _CopyWithImpl$Variables$Mutation$DeleteDraft<TRes>
    implements CopyWith$Variables$Mutation$DeleteDraft<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteDraft(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteDraft _instance;

  final TRes Function(Variables$Mutation$DeleteDraft) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$DeleteDraft._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$DeleteDraftInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteDraft<TRes>
    implements CopyWith$Variables$Mutation$DeleteDraft<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteDraft(this._res);

  TRes _res;

  call({Input$DeleteDraftInput? input}) => _res;
}

class Mutation$DeleteDraft {
  Mutation$DeleteDraft({
    required this.deleteDraft,
    required this.$__typename,
  });

  factory Mutation$DeleteDraft.fromJson(Map<String, dynamic> json) {
    final l$deleteDraft = json['deleteDraft'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteDraft(
      deleteDraft: Mutation$DeleteDraft$deleteDraft.fromJson(
          (l$deleteDraft as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteDraft$deleteDraft deleteDraft;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteDraft = deleteDraft;
    _resultData['deleteDraft'] = l$deleteDraft.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteDraft = deleteDraft;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteDraft,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteDraft) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteDraft = deleteDraft;
    final lOther$deleteDraft = other.deleteDraft;
    if (l$deleteDraft != lOther$deleteDraft) {
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

extension UtilityExtension$Mutation$DeleteDraft on Mutation$DeleteDraft {
  CopyWith$Mutation$DeleteDraft<Mutation$DeleteDraft> get copyWith =>
      CopyWith$Mutation$DeleteDraft(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteDraft<TRes> {
  factory CopyWith$Mutation$DeleteDraft(
    Mutation$DeleteDraft instance,
    TRes Function(Mutation$DeleteDraft) then,
  ) = _CopyWithImpl$Mutation$DeleteDraft;

  factory CopyWith$Mutation$DeleteDraft.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteDraft;

  TRes call({
    Mutation$DeleteDraft$deleteDraft? deleteDraft,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteDraft$deleteDraft<TRes> get deleteDraft;
}

class _CopyWithImpl$Mutation$DeleteDraft<TRes>
    implements CopyWith$Mutation$DeleteDraft<TRes> {
  _CopyWithImpl$Mutation$DeleteDraft(
    this._instance,
    this._then,
  );

  final Mutation$DeleteDraft _instance;

  final TRes Function(Mutation$DeleteDraft) _then;

  static const _undefined = {};

  TRes call({
    Object? deleteDraft = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteDraft(
        deleteDraft: deleteDraft == _undefined || deleteDraft == null
            ? _instance.deleteDraft
            : (deleteDraft as Mutation$DeleteDraft$deleteDraft),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteDraft$deleteDraft<TRes> get deleteDraft {
    final local$deleteDraft = _instance.deleteDraft;
    return CopyWith$Mutation$DeleteDraft$deleteDraft(
        local$deleteDraft, (e) => call(deleteDraft: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteDraft<TRes>
    implements CopyWith$Mutation$DeleteDraft<TRes> {
  _CopyWithStubImpl$Mutation$DeleteDraft(this._res);

  TRes _res;

  call({
    Mutation$DeleteDraft$deleteDraft? deleteDraft,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteDraft$deleteDraft<TRes> get deleteDraft =>
      CopyWith$Mutation$DeleteDraft$deleteDraft.stub(_res);
}

const documentNodeMutationDeleteDraft = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteDraft'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'DeleteDraftInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteDraft'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'clientMutationId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeleteDraft _parserFn$Mutation$DeleteDraft(
        Map<String, dynamic> data) =>
    Mutation$DeleteDraft.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteDraft = FutureOr<void> Function(
  dynamic,
  Mutation$DeleteDraft?,
);

class Options$Mutation$DeleteDraft
    extends graphql.MutationOptions<Mutation$DeleteDraft> {
  Options$Mutation$DeleteDraft({
    String? operationName,
    required Variables$Mutation$DeleteDraft variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteDraft? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteDraft>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$DeleteDraft(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteDraft,
          parserFn: _parserFn$Mutation$DeleteDraft,
        );

  final OnMutationCompleted$Mutation$DeleteDraft? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteDraft
    extends graphql.WatchQueryOptions<Mutation$DeleteDraft> {
  WatchOptions$Mutation$DeleteDraft({
    String? operationName,
    required Variables$Mutation$DeleteDraft variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationDeleteDraft,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteDraft,
        );
}

extension ClientExtension$Mutation$DeleteDraft on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteDraft>> mutate$DeleteDraft(
          Options$Mutation$DeleteDraft options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteDraft> watchMutation$DeleteDraft(
          WatchOptions$Mutation$DeleteDraft options) =>
      this.watchMutation(options);
}

class Mutation$DeleteDraft$HookResult {
  Mutation$DeleteDraft$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteDraft runMutation;

  final graphql.QueryResult<Mutation$DeleteDraft> result;
}

Mutation$DeleteDraft$HookResult useMutation$DeleteDraft(
    [WidgetOptions$Mutation$DeleteDraft? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteDraft());
  return Mutation$DeleteDraft$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteDraft> useWatchMutation$DeleteDraft(
        WatchOptions$Mutation$DeleteDraft options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteDraft
    extends graphql.MutationOptions<Mutation$DeleteDraft> {
  WidgetOptions$Mutation$DeleteDraft({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteDraft? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteDraft>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
                    data == null ? null : _parserFn$Mutation$DeleteDraft(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteDraft,
          parserFn: _parserFn$Mutation$DeleteDraft,
        );

  final OnMutationCompleted$Mutation$DeleteDraft? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteDraft
    = graphql.MultiSourceResult<Mutation$DeleteDraft> Function(
  Variables$Mutation$DeleteDraft, {
  Object? optimisticResult,
});
typedef Builder$Mutation$DeleteDraft = widgets.Widget Function(
  RunMutation$Mutation$DeleteDraft,
  graphql.QueryResult<Mutation$DeleteDraft>?,
);

class Mutation$DeleteDraft$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteDraft> {
  Mutation$DeleteDraft$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteDraft? options,
    required Builder$Mutation$DeleteDraft builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteDraft(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$DeleteDraft$deleteDraft {
  Mutation$DeleteDraft$deleteDraft({
    this.clientMutationId,
    required this.$__typename,
  });

  factory Mutation$DeleteDraft$deleteDraft.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteDraft$deleteDraft(
      clientMutationId: (l$clientMutationId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? clientMutationId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientMutationId = clientMutationId;
    _resultData['clientMutationId'] = l$clientMutationId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clientMutationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteDraft$deleteDraft) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) {
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

extension UtilityExtension$Mutation$DeleteDraft$deleteDraft
    on Mutation$DeleteDraft$deleteDraft {
  CopyWith$Mutation$DeleteDraft$deleteDraft<Mutation$DeleteDraft$deleteDraft>
      get copyWith => CopyWith$Mutation$DeleteDraft$deleteDraft(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteDraft$deleteDraft<TRes> {
  factory CopyWith$Mutation$DeleteDraft$deleteDraft(
    Mutation$DeleteDraft$deleteDraft instance,
    TRes Function(Mutation$DeleteDraft$deleteDraft) then,
  ) = _CopyWithImpl$Mutation$DeleteDraft$deleteDraft;

  factory CopyWith$Mutation$DeleteDraft$deleteDraft.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteDraft$deleteDraft;

  TRes call({
    String? clientMutationId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteDraft$deleteDraft<TRes>
    implements CopyWith$Mutation$DeleteDraft$deleteDraft<TRes> {
  _CopyWithImpl$Mutation$DeleteDraft$deleteDraft(
    this._instance,
    this._then,
  );

  final Mutation$DeleteDraft$deleteDraft _instance;

  final TRes Function(Mutation$DeleteDraft$deleteDraft) _then;

  static const _undefined = {};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteDraft$deleteDraft(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteDraft$deleteDraft<TRes>
    implements CopyWith$Mutation$DeleteDraft$deleteDraft<TRes> {
  _CopyWithStubImpl$Mutation$DeleteDraft$deleteDraft(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? $__typename,
  }) =>
      _res;
}
