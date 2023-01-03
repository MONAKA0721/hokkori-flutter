import '../../graphql/ent.graphql.dart';
import '../common/common.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$LikedPraises {
  factory Variables$Query$LikedPraises({
    String? after,
    int? first,
    List<Input$PostWhereInput>? or,
  }) =>
      Variables$Query$LikedPraises._({
        if (after != null) r'after': after,
        if (first != null) r'first': first,
        if (or != null) r'or': or,
      });

  Variables$Query$LikedPraises._(this._$data);

  factory Variables$Query$LikedPraises.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$LikedPraises._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);
  int? get first => (_$data['first'] as int?);
  List<Input$PostWhereInput>? get or =>
      (_$data['or'] as List<Input$PostWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$LikedPraises<Variables$Query$LikedPraises>
      get copyWith => CopyWith$Variables$Query$LikedPraises(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$LikedPraises) ||
        runtimeType != other.runtimeType) {
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
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$first = first;
    final l$or = or;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$LikedPraises<TRes> {
  factory CopyWith$Variables$Query$LikedPraises(
    Variables$Query$LikedPraises instance,
    TRes Function(Variables$Query$LikedPraises) then,
  ) = _CopyWithImpl$Variables$Query$LikedPraises;

  factory CopyWith$Variables$Query$LikedPraises.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LikedPraises;

  TRes call({
    String? after,
    int? first,
    List<Input$PostWhereInput>? or,
  });
}

class _CopyWithImpl$Variables$Query$LikedPraises<TRes>
    implements CopyWith$Variables$Query$LikedPraises<TRes> {
  _CopyWithImpl$Variables$Query$LikedPraises(
    this._instance,
    this._then,
  );

  final Variables$Query$LikedPraises _instance;

  final TRes Function(Variables$Query$LikedPraises) _then;

  static const _undefined = {};

  TRes call({
    Object? after = _undefined,
    Object? first = _undefined,
    Object? or = _undefined,
  }) =>
      _then(Variables$Query$LikedPraises._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
        if (first != _undefined) 'first': (first as int?),
        if (or != _undefined) 'or': (or as List<Input$PostWhereInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$LikedPraises<TRes>
    implements CopyWith$Variables$Query$LikedPraises<TRes> {
  _CopyWithStubImpl$Variables$Query$LikedPraises(this._res);

  TRes _res;

  call({
    String? after,
    int? first,
    List<Input$PostWhereInput>? or,
  }) =>
      _res;
}

class Query$LikedPraises {
  Query$LikedPraises({
    required this.likedPosts,
    required this.$__typename,
  });

  factory Query$LikedPraises.fromJson(Map<String, dynamic> json) {
    final l$likedPosts = json['likedPosts'];
    final l$$__typename = json['__typename'];
    return Query$LikedPraises(
      likedPosts: Query$LikedPraises$likedPosts.fromJson(
          (l$likedPosts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LikedPraises$likedPosts likedPosts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$likedPosts = likedPosts;
    _resultData['likedPosts'] = l$likedPosts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$likedPosts = likedPosts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$likedPosts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LikedPraises) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$likedPosts = likedPosts;
    final lOther$likedPosts = other.likedPosts;
    if (l$likedPosts != lOther$likedPosts) {
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

extension UtilityExtension$Query$LikedPraises on Query$LikedPraises {
  CopyWith$Query$LikedPraises<Query$LikedPraises> get copyWith =>
      CopyWith$Query$LikedPraises(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LikedPraises<TRes> {
  factory CopyWith$Query$LikedPraises(
    Query$LikedPraises instance,
    TRes Function(Query$LikedPraises) then,
  ) = _CopyWithImpl$Query$LikedPraises;

  factory CopyWith$Query$LikedPraises.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedPraises;

  TRes call({
    Query$LikedPraises$likedPosts? likedPosts,
    String? $__typename,
  });
  CopyWith$Query$LikedPraises$likedPosts<TRes> get likedPosts;
}

class _CopyWithImpl$Query$LikedPraises<TRes>
    implements CopyWith$Query$LikedPraises<TRes> {
  _CopyWithImpl$Query$LikedPraises(
    this._instance,
    this._then,
  );

  final Query$LikedPraises _instance;

  final TRes Function(Query$LikedPraises) _then;

  static const _undefined = {};

  TRes call({
    Object? likedPosts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LikedPraises(
        likedPosts: likedPosts == _undefined || likedPosts == null
            ? _instance.likedPosts
            : (likedPosts as Query$LikedPraises$likedPosts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$LikedPraises$likedPosts<TRes> get likedPosts {
    final local$likedPosts = _instance.likedPosts;
    return CopyWith$Query$LikedPraises$likedPosts(
        local$likedPosts, (e) => call(likedPosts: e));
  }
}

class _CopyWithStubImpl$Query$LikedPraises<TRes>
    implements CopyWith$Query$LikedPraises<TRes> {
  _CopyWithStubImpl$Query$LikedPraises(this._res);

  TRes _res;

  call({
    Query$LikedPraises$likedPosts? likedPosts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$LikedPraises$likedPosts<TRes> get likedPosts =>
      CopyWith$Query$LikedPraises$likedPosts.stub(_res);
}

const documentNodeQueryLikedPraises = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LikedPraises'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'or')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PostWhereInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'likedPosts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'praise')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'or'),
                value: VariableNode(name: NameNode(value: 'or')),
              ),
            ]),
          ),
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
                    directives: [],
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
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
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
  fragmentDefinitionPraiseSummary,
]);
Query$LikedPraises _parserFn$Query$LikedPraises(Map<String, dynamic> data) =>
    Query$LikedPraises.fromJson(data);

class Options$Query$LikedPraises
    extends graphql.QueryOptions<Query$LikedPraises> {
  Options$Query$LikedPraises({
    String? operationName,
    Variables$Query$LikedPraises? variables,
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
          document: documentNodeQueryLikedPraises,
          parserFn: _parserFn$Query$LikedPraises,
        );
}

class WatchOptions$Query$LikedPraises
    extends graphql.WatchQueryOptions<Query$LikedPraises> {
  WatchOptions$Query$LikedPraises({
    String? operationName,
    Variables$Query$LikedPraises? variables,
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
          document: documentNodeQueryLikedPraises,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LikedPraises,
        );
}

class FetchMoreOptions$Query$LikedPraises extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LikedPraises({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$LikedPraises? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryLikedPraises,
        );
}

extension ClientExtension$Query$LikedPraises on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LikedPraises>> query$LikedPraises(
          [Options$Query$LikedPraises? options]) async =>
      await this.query(options ?? Options$Query$LikedPraises());
  graphql.ObservableQuery<Query$LikedPraises> watchQuery$LikedPraises(
          [WatchOptions$Query$LikedPraises? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LikedPraises());
  void writeQuery$LikedPraises({
    required Query$LikedPraises data,
    Variables$Query$LikedPraises? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLikedPraises),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LikedPraises? readQuery$LikedPraises({
    Variables$Query$LikedPraises? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLikedPraises),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LikedPraises.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LikedPraises> useQuery$LikedPraises(
        [Options$Query$LikedPraises? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$LikedPraises());
graphql.ObservableQuery<Query$LikedPraises> useWatchQuery$LikedPraises(
        [WatchOptions$Query$LikedPraises? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$LikedPraises());

class Query$LikedPraises$Widget
    extends graphql_flutter.Query<Query$LikedPraises> {
  Query$LikedPraises$Widget({
    widgets.Key? key,
    Options$Query$LikedPraises? options,
    required graphql_flutter.QueryBuilder<Query$LikedPraises> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$LikedPraises(),
          builder: builder,
        );
}

class Query$LikedPraises$likedPosts {
  Query$LikedPraises$likedPosts({
    this.edges,
    required this.pageInfo,
    required this.$__typename,
  });

  factory Query$LikedPraises$likedPosts.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$LikedPraises$likedPosts(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$LikedPraises$likedPosts$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$LikedPraises$likedPosts$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$LikedPraises$likedPosts$edges?>? edges;

  final Query$LikedPraises$likedPosts$pageInfo pageInfo;

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
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LikedPraises$likedPosts) ||
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

extension UtilityExtension$Query$LikedPraises$likedPosts
    on Query$LikedPraises$likedPosts {
  CopyWith$Query$LikedPraises$likedPosts<Query$LikedPraises$likedPosts>
      get copyWith => CopyWith$Query$LikedPraises$likedPosts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LikedPraises$likedPosts<TRes> {
  factory CopyWith$Query$LikedPraises$likedPosts(
    Query$LikedPraises$likedPosts instance,
    TRes Function(Query$LikedPraises$likedPosts) then,
  ) = _CopyWithImpl$Query$LikedPraises$likedPosts;

  factory CopyWith$Query$LikedPraises$likedPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedPraises$likedPosts;

  TRes call({
    List<Query$LikedPraises$likedPosts$edges?>? edges,
    Query$LikedPraises$likedPosts$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$LikedPraises$likedPosts$edges?>? Function(
              Iterable<
                  CopyWith$Query$LikedPraises$likedPosts$edges<
                      Query$LikedPraises$likedPosts$edges>?>?)
          _fn);
  CopyWith$Query$LikedPraises$likedPosts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$LikedPraises$likedPosts<TRes>
    implements CopyWith$Query$LikedPraises$likedPosts<TRes> {
  _CopyWithImpl$Query$LikedPraises$likedPosts(
    this._instance,
    this._then,
  );

  final Query$LikedPraises$likedPosts _instance;

  final TRes Function(Query$LikedPraises$likedPosts) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LikedPraises$likedPosts(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$LikedPraises$likedPosts$edges?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$LikedPraises$likedPosts$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$LikedPraises$likedPosts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$LikedPraises$likedPosts$edges<
                          Query$LikedPraises$likedPosts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$LikedPraises$likedPosts$edges(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Query$LikedPraises$likedPosts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$LikedPraises$likedPosts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$LikedPraises$likedPosts<TRes>
    implements CopyWith$Query$LikedPraises$likedPosts<TRes> {
  _CopyWithStubImpl$Query$LikedPraises$likedPosts(this._res);

  TRes _res;

  call({
    List<Query$LikedPraises$likedPosts$edges?>? edges,
    Query$LikedPraises$likedPosts$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$LikedPraises$likedPosts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$LikedPraises$likedPosts$pageInfo.stub(_res);
}

class Query$LikedPraises$likedPosts$edges {
  Query$LikedPraises$likedPosts$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$LikedPraises$likedPosts$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$LikedPraises$likedPosts$edges(
      node: l$node == null
          ? null
          : Fragment$PraiseSummary.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PraiseSummary? node;

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
    if (!(other is Query$LikedPraises$likedPosts$edges) ||
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

extension UtilityExtension$Query$LikedPraises$likedPosts$edges
    on Query$LikedPraises$likedPosts$edges {
  CopyWith$Query$LikedPraises$likedPosts$edges<
          Query$LikedPraises$likedPosts$edges>
      get copyWith => CopyWith$Query$LikedPraises$likedPosts$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LikedPraises$likedPosts$edges<TRes> {
  factory CopyWith$Query$LikedPraises$likedPosts$edges(
    Query$LikedPraises$likedPosts$edges instance,
    TRes Function(Query$LikedPraises$likedPosts$edges) then,
  ) = _CopyWithImpl$Query$LikedPraises$likedPosts$edges;

  factory CopyWith$Query$LikedPraises$likedPosts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedPraises$likedPosts$edges;

  TRes call({
    Fragment$PraiseSummary? node,
    String? $__typename,
  });
  CopyWith$Fragment$PraiseSummary<TRes> get node;
}

class _CopyWithImpl$Query$LikedPraises$likedPosts$edges<TRes>
    implements CopyWith$Query$LikedPraises$likedPosts$edges<TRes> {
  _CopyWithImpl$Query$LikedPraises$likedPosts$edges(
    this._instance,
    this._then,
  );

  final Query$LikedPraises$likedPosts$edges _instance;

  final TRes Function(Query$LikedPraises$likedPosts$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LikedPraises$likedPosts$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$PraiseSummary?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$PraiseSummary<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$PraiseSummary.stub(_then(_instance))
        : CopyWith$Fragment$PraiseSummary(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$LikedPraises$likedPosts$edges<TRes>
    implements CopyWith$Query$LikedPraises$likedPosts$edges<TRes> {
  _CopyWithStubImpl$Query$LikedPraises$likedPosts$edges(this._res);

  TRes _res;

  call({
    Fragment$PraiseSummary? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PraiseSummary<TRes> get node =>
      CopyWith$Fragment$PraiseSummary.stub(_res);
}

class Query$LikedPraises$likedPosts$pageInfo {
  Query$LikedPraises$likedPosts$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.$__typename,
  });

  factory Query$LikedPraises$likedPosts$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$LikedPraises$likedPosts$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
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
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LikedPraises$likedPosts$pageInfo) ||
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

extension UtilityExtension$Query$LikedPraises$likedPosts$pageInfo
    on Query$LikedPraises$likedPosts$pageInfo {
  CopyWith$Query$LikedPraises$likedPosts$pageInfo<
          Query$LikedPraises$likedPosts$pageInfo>
      get copyWith => CopyWith$Query$LikedPraises$likedPosts$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LikedPraises$likedPosts$pageInfo<TRes> {
  factory CopyWith$Query$LikedPraises$likedPosts$pageInfo(
    Query$LikedPraises$likedPosts$pageInfo instance,
    TRes Function(Query$LikedPraises$likedPosts$pageInfo) then,
  ) = _CopyWithImpl$Query$LikedPraises$likedPosts$pageInfo;

  factory CopyWith$Query$LikedPraises$likedPosts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedPraises$likedPosts$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LikedPraises$likedPosts$pageInfo<TRes>
    implements CopyWith$Query$LikedPraises$likedPosts$pageInfo<TRes> {
  _CopyWithImpl$Query$LikedPraises$likedPosts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$LikedPraises$likedPosts$pageInfo _instance;

  final TRes Function(Query$LikedPraises$likedPosts$pageInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LikedPraises$likedPosts$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LikedPraises$likedPosts$pageInfo<TRes>
    implements CopyWith$Query$LikedPraises$likedPosts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$LikedPraises$likedPosts$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$LikedLetters {
  factory Variables$Query$LikedLetters({
    String? after,
    int? first,
    List<Input$PostWhereInput>? or,
  }) =>
      Variables$Query$LikedLetters._({
        if (after != null) r'after': after,
        if (first != null) r'first': first,
        if (or != null) r'or': or,
      });

  Variables$Query$LikedLetters._(this._$data);

  factory Variables$Query$LikedLetters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$LikedLetters._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);
  int? get first => (_$data['first'] as int?);
  List<Input$PostWhereInput>? get or =>
      (_$data['or'] as List<Input$PostWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$LikedLetters<Variables$Query$LikedLetters>
      get copyWith => CopyWith$Variables$Query$LikedLetters(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$LikedLetters) ||
        runtimeType != other.runtimeType) {
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
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$first = first;
    final l$or = or;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$LikedLetters<TRes> {
  factory CopyWith$Variables$Query$LikedLetters(
    Variables$Query$LikedLetters instance,
    TRes Function(Variables$Query$LikedLetters) then,
  ) = _CopyWithImpl$Variables$Query$LikedLetters;

  factory CopyWith$Variables$Query$LikedLetters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LikedLetters;

  TRes call({
    String? after,
    int? first,
    List<Input$PostWhereInput>? or,
  });
}

class _CopyWithImpl$Variables$Query$LikedLetters<TRes>
    implements CopyWith$Variables$Query$LikedLetters<TRes> {
  _CopyWithImpl$Variables$Query$LikedLetters(
    this._instance,
    this._then,
  );

  final Variables$Query$LikedLetters _instance;

  final TRes Function(Variables$Query$LikedLetters) _then;

  static const _undefined = {};

  TRes call({
    Object? after = _undefined,
    Object? first = _undefined,
    Object? or = _undefined,
  }) =>
      _then(Variables$Query$LikedLetters._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
        if (first != _undefined) 'first': (first as int?),
        if (or != _undefined) 'or': (or as List<Input$PostWhereInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$LikedLetters<TRes>
    implements CopyWith$Variables$Query$LikedLetters<TRes> {
  _CopyWithStubImpl$Variables$Query$LikedLetters(this._res);

  TRes _res;

  call({
    String? after,
    int? first,
    List<Input$PostWhereInput>? or,
  }) =>
      _res;
}

class Query$LikedLetters {
  Query$LikedLetters({
    required this.likedPosts,
    required this.$__typename,
  });

  factory Query$LikedLetters.fromJson(Map<String, dynamic> json) {
    final l$likedPosts = json['likedPosts'];
    final l$$__typename = json['__typename'];
    return Query$LikedLetters(
      likedPosts: Query$LikedLetters$likedPosts.fromJson(
          (l$likedPosts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LikedLetters$likedPosts likedPosts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$likedPosts = likedPosts;
    _resultData['likedPosts'] = l$likedPosts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$likedPosts = likedPosts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$likedPosts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LikedLetters) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$likedPosts = likedPosts;
    final lOther$likedPosts = other.likedPosts;
    if (l$likedPosts != lOther$likedPosts) {
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

extension UtilityExtension$Query$LikedLetters on Query$LikedLetters {
  CopyWith$Query$LikedLetters<Query$LikedLetters> get copyWith =>
      CopyWith$Query$LikedLetters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LikedLetters<TRes> {
  factory CopyWith$Query$LikedLetters(
    Query$LikedLetters instance,
    TRes Function(Query$LikedLetters) then,
  ) = _CopyWithImpl$Query$LikedLetters;

  factory CopyWith$Query$LikedLetters.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedLetters;

  TRes call({
    Query$LikedLetters$likedPosts? likedPosts,
    String? $__typename,
  });
  CopyWith$Query$LikedLetters$likedPosts<TRes> get likedPosts;
}

class _CopyWithImpl$Query$LikedLetters<TRes>
    implements CopyWith$Query$LikedLetters<TRes> {
  _CopyWithImpl$Query$LikedLetters(
    this._instance,
    this._then,
  );

  final Query$LikedLetters _instance;

  final TRes Function(Query$LikedLetters) _then;

  static const _undefined = {};

  TRes call({
    Object? likedPosts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LikedLetters(
        likedPosts: likedPosts == _undefined || likedPosts == null
            ? _instance.likedPosts
            : (likedPosts as Query$LikedLetters$likedPosts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$LikedLetters$likedPosts<TRes> get likedPosts {
    final local$likedPosts = _instance.likedPosts;
    return CopyWith$Query$LikedLetters$likedPosts(
        local$likedPosts, (e) => call(likedPosts: e));
  }
}

class _CopyWithStubImpl$Query$LikedLetters<TRes>
    implements CopyWith$Query$LikedLetters<TRes> {
  _CopyWithStubImpl$Query$LikedLetters(this._res);

  TRes _res;

  call({
    Query$LikedLetters$likedPosts? likedPosts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$LikedLetters$likedPosts<TRes> get likedPosts =>
      CopyWith$Query$LikedLetters$likedPosts.stub(_res);
}

const documentNodeQueryLikedLetters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LikedLetters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'or')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PostWhereInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'likedPosts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'letter')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'or'),
                value: VariableNode(name: NameNode(value: 'or')),
              ),
            ]),
          ),
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
                    directives: [],
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
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
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
  fragmentDefinitionLetterSummary,
]);
Query$LikedLetters _parserFn$Query$LikedLetters(Map<String, dynamic> data) =>
    Query$LikedLetters.fromJson(data);

class Options$Query$LikedLetters
    extends graphql.QueryOptions<Query$LikedLetters> {
  Options$Query$LikedLetters({
    String? operationName,
    Variables$Query$LikedLetters? variables,
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
          document: documentNodeQueryLikedLetters,
          parserFn: _parserFn$Query$LikedLetters,
        );
}

class WatchOptions$Query$LikedLetters
    extends graphql.WatchQueryOptions<Query$LikedLetters> {
  WatchOptions$Query$LikedLetters({
    String? operationName,
    Variables$Query$LikedLetters? variables,
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
          document: documentNodeQueryLikedLetters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LikedLetters,
        );
}

class FetchMoreOptions$Query$LikedLetters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LikedLetters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$LikedLetters? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryLikedLetters,
        );
}

extension ClientExtension$Query$LikedLetters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LikedLetters>> query$LikedLetters(
          [Options$Query$LikedLetters? options]) async =>
      await this.query(options ?? Options$Query$LikedLetters());
  graphql.ObservableQuery<Query$LikedLetters> watchQuery$LikedLetters(
          [WatchOptions$Query$LikedLetters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LikedLetters());
  void writeQuery$LikedLetters({
    required Query$LikedLetters data,
    Variables$Query$LikedLetters? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLikedLetters),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LikedLetters? readQuery$LikedLetters({
    Variables$Query$LikedLetters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLikedLetters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LikedLetters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LikedLetters> useQuery$LikedLetters(
        [Options$Query$LikedLetters? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$LikedLetters());
graphql.ObservableQuery<Query$LikedLetters> useWatchQuery$LikedLetters(
        [WatchOptions$Query$LikedLetters? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$LikedLetters());

class Query$LikedLetters$Widget
    extends graphql_flutter.Query<Query$LikedLetters> {
  Query$LikedLetters$Widget({
    widgets.Key? key,
    Options$Query$LikedLetters? options,
    required graphql_flutter.QueryBuilder<Query$LikedLetters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$LikedLetters(),
          builder: builder,
        );
}

class Query$LikedLetters$likedPosts {
  Query$LikedLetters$likedPosts({
    this.edges,
    required this.pageInfo,
    required this.$__typename,
  });

  factory Query$LikedLetters$likedPosts.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$LikedLetters$likedPosts(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$LikedLetters$likedPosts$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$LikedLetters$likedPosts$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$LikedLetters$likedPosts$edges?>? edges;

  final Query$LikedLetters$likedPosts$pageInfo pageInfo;

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
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LikedLetters$likedPosts) ||
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

extension UtilityExtension$Query$LikedLetters$likedPosts
    on Query$LikedLetters$likedPosts {
  CopyWith$Query$LikedLetters$likedPosts<Query$LikedLetters$likedPosts>
      get copyWith => CopyWith$Query$LikedLetters$likedPosts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LikedLetters$likedPosts<TRes> {
  factory CopyWith$Query$LikedLetters$likedPosts(
    Query$LikedLetters$likedPosts instance,
    TRes Function(Query$LikedLetters$likedPosts) then,
  ) = _CopyWithImpl$Query$LikedLetters$likedPosts;

  factory CopyWith$Query$LikedLetters$likedPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedLetters$likedPosts;

  TRes call({
    List<Query$LikedLetters$likedPosts$edges?>? edges,
    Query$LikedLetters$likedPosts$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$LikedLetters$likedPosts$edges?>? Function(
              Iterable<
                  CopyWith$Query$LikedLetters$likedPosts$edges<
                      Query$LikedLetters$likedPosts$edges>?>?)
          _fn);
  CopyWith$Query$LikedLetters$likedPosts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$LikedLetters$likedPosts<TRes>
    implements CopyWith$Query$LikedLetters$likedPosts<TRes> {
  _CopyWithImpl$Query$LikedLetters$likedPosts(
    this._instance,
    this._then,
  );

  final Query$LikedLetters$likedPosts _instance;

  final TRes Function(Query$LikedLetters$likedPosts) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LikedLetters$likedPosts(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$LikedLetters$likedPosts$edges?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$LikedLetters$likedPosts$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$LikedLetters$likedPosts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$LikedLetters$likedPosts$edges<
                          Query$LikedLetters$likedPosts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$LikedLetters$likedPosts$edges(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Query$LikedLetters$likedPosts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$LikedLetters$likedPosts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$LikedLetters$likedPosts<TRes>
    implements CopyWith$Query$LikedLetters$likedPosts<TRes> {
  _CopyWithStubImpl$Query$LikedLetters$likedPosts(this._res);

  TRes _res;

  call({
    List<Query$LikedLetters$likedPosts$edges?>? edges,
    Query$LikedLetters$likedPosts$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$LikedLetters$likedPosts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$LikedLetters$likedPosts$pageInfo.stub(_res);
}

class Query$LikedLetters$likedPosts$edges {
  Query$LikedLetters$likedPosts$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$LikedLetters$likedPosts$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$LikedLetters$likedPosts$edges(
      node: l$node == null
          ? null
          : Fragment$LetterSummary.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$LetterSummary? node;

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
    if (!(other is Query$LikedLetters$likedPosts$edges) ||
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

extension UtilityExtension$Query$LikedLetters$likedPosts$edges
    on Query$LikedLetters$likedPosts$edges {
  CopyWith$Query$LikedLetters$likedPosts$edges<
          Query$LikedLetters$likedPosts$edges>
      get copyWith => CopyWith$Query$LikedLetters$likedPosts$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LikedLetters$likedPosts$edges<TRes> {
  factory CopyWith$Query$LikedLetters$likedPosts$edges(
    Query$LikedLetters$likedPosts$edges instance,
    TRes Function(Query$LikedLetters$likedPosts$edges) then,
  ) = _CopyWithImpl$Query$LikedLetters$likedPosts$edges;

  factory CopyWith$Query$LikedLetters$likedPosts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedLetters$likedPosts$edges;

  TRes call({
    Fragment$LetterSummary? node,
    String? $__typename,
  });
  CopyWith$Fragment$LetterSummary<TRes> get node;
}

class _CopyWithImpl$Query$LikedLetters$likedPosts$edges<TRes>
    implements CopyWith$Query$LikedLetters$likedPosts$edges<TRes> {
  _CopyWithImpl$Query$LikedLetters$likedPosts$edges(
    this._instance,
    this._then,
  );

  final Query$LikedLetters$likedPosts$edges _instance;

  final TRes Function(Query$LikedLetters$likedPosts$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LikedLetters$likedPosts$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$LetterSummary?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$LetterSummary<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$LetterSummary.stub(_then(_instance))
        : CopyWith$Fragment$LetterSummary(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$LikedLetters$likedPosts$edges<TRes>
    implements CopyWith$Query$LikedLetters$likedPosts$edges<TRes> {
  _CopyWithStubImpl$Query$LikedLetters$likedPosts$edges(this._res);

  TRes _res;

  call({
    Fragment$LetterSummary? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$LetterSummary<TRes> get node =>
      CopyWith$Fragment$LetterSummary.stub(_res);
}

class Query$LikedLetters$likedPosts$pageInfo {
  Query$LikedLetters$likedPosts$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.$__typename,
  });

  factory Query$LikedLetters$likedPosts$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$LikedLetters$likedPosts$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
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
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LikedLetters$likedPosts$pageInfo) ||
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

extension UtilityExtension$Query$LikedLetters$likedPosts$pageInfo
    on Query$LikedLetters$likedPosts$pageInfo {
  CopyWith$Query$LikedLetters$likedPosts$pageInfo<
          Query$LikedLetters$likedPosts$pageInfo>
      get copyWith => CopyWith$Query$LikedLetters$likedPosts$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LikedLetters$likedPosts$pageInfo<TRes> {
  factory CopyWith$Query$LikedLetters$likedPosts$pageInfo(
    Query$LikedLetters$likedPosts$pageInfo instance,
    TRes Function(Query$LikedLetters$likedPosts$pageInfo) then,
  ) = _CopyWithImpl$Query$LikedLetters$likedPosts$pageInfo;

  factory CopyWith$Query$LikedLetters$likedPosts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedLetters$likedPosts$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LikedLetters$likedPosts$pageInfo<TRes>
    implements CopyWith$Query$LikedLetters$likedPosts$pageInfo<TRes> {
  _CopyWithImpl$Query$LikedLetters$likedPosts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$LikedLetters$likedPosts$pageInfo _instance;

  final TRes Function(Query$LikedLetters$likedPosts$pageInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LikedLetters$likedPosts$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LikedLetters$likedPosts$pageInfo<TRes>
    implements CopyWith$Query$LikedLetters$likedPosts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$LikedLetters$likedPosts$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$TopicWorks {
  factory Variables$Query$TopicWorks({int? first}) =>
      Variables$Query$TopicWorks._({
        if (first != null) r'first': first,
      });

  Variables$Query$TopicWorks._(this._$data);

  factory Variables$Query$TopicWorks.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    return Variables$Query$TopicWorks._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    return result$data;
  }

  CopyWith$Variables$Query$TopicWorks<Variables$Query$TopicWorks>
      get copyWith => CopyWith$Variables$Query$TopicWorks(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$TopicWorks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    return Object.hashAll([_$data.containsKey('first') ? l$first : const {}]);
  }
}

abstract class CopyWith$Variables$Query$TopicWorks<TRes> {
  factory CopyWith$Variables$Query$TopicWorks(
    Variables$Query$TopicWorks instance,
    TRes Function(Variables$Query$TopicWorks) then,
  ) = _CopyWithImpl$Variables$Query$TopicWorks;

  factory CopyWith$Variables$Query$TopicWorks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TopicWorks;

  TRes call({int? first});
}

class _CopyWithImpl$Variables$Query$TopicWorks<TRes>
    implements CopyWith$Variables$Query$TopicWorks<TRes> {
  _CopyWithImpl$Variables$Query$TopicWorks(
    this._instance,
    this._then,
  );

  final Variables$Query$TopicWorks _instance;

  final TRes Function(Variables$Query$TopicWorks) _then;

  static const _undefined = {};

  TRes call({Object? first = _undefined}) =>
      _then(Variables$Query$TopicWorks._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$TopicWorks<TRes>
    implements CopyWith$Variables$Query$TopicWorks<TRes> {
  _CopyWithStubImpl$Variables$Query$TopicWorks(this._res);

  TRes _res;

  call({int? first}) => _res;
}

class Query$TopicWorks {
  Query$TopicWorks({
    required this.topicWorks,
    required this.$__typename,
  });

  factory Query$TopicWorks.fromJson(Map<String, dynamic> json) {
    final l$topicWorks = json['topicWorks'];
    final l$$__typename = json['__typename'];
    return Query$TopicWorks(
      topicWorks: Query$TopicWorks$topicWorks.fromJson(
          (l$topicWorks as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TopicWorks$topicWorks topicWorks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicWorks = topicWorks;
    _resultData['topicWorks'] = l$topicWorks.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicWorks = topicWorks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topicWorks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TopicWorks) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$topicWorks = topicWorks;
    final lOther$topicWorks = other.topicWorks;
    if (l$topicWorks != lOther$topicWorks) {
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

extension UtilityExtension$Query$TopicWorks on Query$TopicWorks {
  CopyWith$Query$TopicWorks<Query$TopicWorks> get copyWith =>
      CopyWith$Query$TopicWorks(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TopicWorks<TRes> {
  factory CopyWith$Query$TopicWorks(
    Query$TopicWorks instance,
    TRes Function(Query$TopicWorks) then,
  ) = _CopyWithImpl$Query$TopicWorks;

  factory CopyWith$Query$TopicWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$TopicWorks;

  TRes call({
    Query$TopicWorks$topicWorks? topicWorks,
    String? $__typename,
  });
  CopyWith$Query$TopicWorks$topicWorks<TRes> get topicWorks;
}

class _CopyWithImpl$Query$TopicWorks<TRes>
    implements CopyWith$Query$TopicWorks<TRes> {
  _CopyWithImpl$Query$TopicWorks(
    this._instance,
    this._then,
  );

  final Query$TopicWorks _instance;

  final TRes Function(Query$TopicWorks) _then;

  static const _undefined = {};

  TRes call({
    Object? topicWorks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopicWorks(
        topicWorks: topicWorks == _undefined || topicWorks == null
            ? _instance.topicWorks
            : (topicWorks as Query$TopicWorks$topicWorks),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$TopicWorks$topicWorks<TRes> get topicWorks {
    final local$topicWorks = _instance.topicWorks;
    return CopyWith$Query$TopicWorks$topicWorks(
        local$topicWorks, (e) => call(topicWorks: e));
  }
}

class _CopyWithStubImpl$Query$TopicWorks<TRes>
    implements CopyWith$Query$TopicWorks<TRes> {
  _CopyWithStubImpl$Query$TopicWorks(this._res);

  TRes _res;

  call({
    Query$TopicWorks$topicWorks? topicWorks,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$TopicWorks$topicWorks<TRes> get topicWorks =>
      CopyWith$Query$TopicWorks$topicWorks.stub(_res);
}

const documentNodeQueryTopicWorks = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'TopicWorks'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topicWorks'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
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
Query$TopicWorks _parserFn$Query$TopicWorks(Map<String, dynamic> data) =>
    Query$TopicWorks.fromJson(data);

class Options$Query$TopicWorks extends graphql.QueryOptions<Query$TopicWorks> {
  Options$Query$TopicWorks({
    String? operationName,
    Variables$Query$TopicWorks? variables,
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
          document: documentNodeQueryTopicWorks,
          parserFn: _parserFn$Query$TopicWorks,
        );
}

class WatchOptions$Query$TopicWorks
    extends graphql.WatchQueryOptions<Query$TopicWorks> {
  WatchOptions$Query$TopicWorks({
    String? operationName,
    Variables$Query$TopicWorks? variables,
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
          document: documentNodeQueryTopicWorks,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$TopicWorks,
        );
}

class FetchMoreOptions$Query$TopicWorks extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TopicWorks({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$TopicWorks? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryTopicWorks,
        );
}

extension ClientExtension$Query$TopicWorks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TopicWorks>> query$TopicWorks(
          [Options$Query$TopicWorks? options]) async =>
      await this.query(options ?? Options$Query$TopicWorks());
  graphql.ObservableQuery<Query$TopicWorks> watchQuery$TopicWorks(
          [WatchOptions$Query$TopicWorks? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$TopicWorks());
  void writeQuery$TopicWorks({
    required Query$TopicWorks data,
    Variables$Query$TopicWorks? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryTopicWorks),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$TopicWorks? readQuery$TopicWorks({
    Variables$Query$TopicWorks? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTopicWorks),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TopicWorks.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TopicWorks> useQuery$TopicWorks(
        [Options$Query$TopicWorks? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$TopicWorks());
graphql.ObservableQuery<Query$TopicWorks> useWatchQuery$TopicWorks(
        [WatchOptions$Query$TopicWorks? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$TopicWorks());

class Query$TopicWorks$Widget extends graphql_flutter.Query<Query$TopicWorks> {
  Query$TopicWorks$Widget({
    widgets.Key? key,
    Options$Query$TopicWorks? options,
    required graphql_flutter.QueryBuilder<Query$TopicWorks> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$TopicWorks(),
          builder: builder,
        );
}

class Query$TopicWorks$topicWorks {
  Query$TopicWorks$topicWorks({
    this.edges,
    required this.$__typename,
  });

  factory Query$TopicWorks$topicWorks.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$TopicWorks$topicWorks(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$TopicWorks$topicWorks$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TopicWorks$topicWorks$edges?>? edges;

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
    if (!(other is Query$TopicWorks$topicWorks) ||
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

extension UtilityExtension$Query$TopicWorks$topicWorks
    on Query$TopicWorks$topicWorks {
  CopyWith$Query$TopicWorks$topicWorks<Query$TopicWorks$topicWorks>
      get copyWith => CopyWith$Query$TopicWorks$topicWorks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopicWorks$topicWorks<TRes> {
  factory CopyWith$Query$TopicWorks$topicWorks(
    Query$TopicWorks$topicWorks instance,
    TRes Function(Query$TopicWorks$topicWorks) then,
  ) = _CopyWithImpl$Query$TopicWorks$topicWorks;

  factory CopyWith$Query$TopicWorks$topicWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$TopicWorks$topicWorks;

  TRes call({
    List<Query$TopicWorks$topicWorks$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$TopicWorks$topicWorks$edges?>? Function(
              Iterable<
                  CopyWith$Query$TopicWorks$topicWorks$edges<
                      Query$TopicWorks$topicWorks$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$TopicWorks$topicWorks<TRes>
    implements CopyWith$Query$TopicWorks$topicWorks<TRes> {
  _CopyWithImpl$Query$TopicWorks$topicWorks(
    this._instance,
    this._then,
  );

  final Query$TopicWorks$topicWorks _instance;

  final TRes Function(Query$TopicWorks$topicWorks) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopicWorks$topicWorks(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$TopicWorks$topicWorks$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$TopicWorks$topicWorks$edges?>? Function(
                  Iterable<
                      CopyWith$Query$TopicWorks$topicWorks$edges<
                          Query$TopicWorks$topicWorks$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$TopicWorks$topicWorks$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$TopicWorks$topicWorks<TRes>
    implements CopyWith$Query$TopicWorks$topicWorks<TRes> {
  _CopyWithStubImpl$Query$TopicWorks$topicWorks(this._res);

  TRes _res;

  call({
    List<Query$TopicWorks$topicWorks$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$TopicWorks$topicWorks$edges {
  Query$TopicWorks$topicWorks$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$TopicWorks$topicWorks$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$TopicWorks$topicWorks$edges(
      node: l$node == null
          ? null
          : Query$TopicWorks$topicWorks$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TopicWorks$topicWorks$edges$node? node;

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
    if (!(other is Query$TopicWorks$topicWorks$edges) ||
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

extension UtilityExtension$Query$TopicWorks$topicWorks$edges
    on Query$TopicWorks$topicWorks$edges {
  CopyWith$Query$TopicWorks$topicWorks$edges<Query$TopicWorks$topicWorks$edges>
      get copyWith => CopyWith$Query$TopicWorks$topicWorks$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopicWorks$topicWorks$edges<TRes> {
  factory CopyWith$Query$TopicWorks$topicWorks$edges(
    Query$TopicWorks$topicWorks$edges instance,
    TRes Function(Query$TopicWorks$topicWorks$edges) then,
  ) = _CopyWithImpl$Query$TopicWorks$topicWorks$edges;

  factory CopyWith$Query$TopicWorks$topicWorks$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$TopicWorks$topicWorks$edges;

  TRes call({
    Query$TopicWorks$topicWorks$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$TopicWorks$topicWorks$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$TopicWorks$topicWorks$edges<TRes>
    implements CopyWith$Query$TopicWorks$topicWorks$edges<TRes> {
  _CopyWithImpl$Query$TopicWorks$topicWorks$edges(
    this._instance,
    this._then,
  );

  final Query$TopicWorks$topicWorks$edges _instance;

  final TRes Function(Query$TopicWorks$topicWorks$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopicWorks$topicWorks$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$TopicWorks$topicWorks$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$TopicWorks$topicWorks$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$TopicWorks$topicWorks$edges$node.stub(_then(_instance))
        : CopyWith$Query$TopicWorks$topicWorks$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$TopicWorks$topicWorks$edges<TRes>
    implements CopyWith$Query$TopicWorks$topicWorks$edges<TRes> {
  _CopyWithStubImpl$Query$TopicWorks$topicWorks$edges(this._res);

  TRes _res;

  call({
    Query$TopicWorks$topicWorks$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$TopicWorks$topicWorks$edges$node<TRes> get node =>
      CopyWith$Query$TopicWorks$topicWorks$edges$node.stub(_res);
}

class Query$TopicWorks$topicWorks$edges$node {
  Query$TopicWorks$topicWorks$edges$node({
    required this.id,
    required this.title,
    this.thumbnail,
    required this.$__typename,
  });

  factory Query$TopicWorks$topicWorks$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Query$TopicWorks$topicWorks$edges$node(
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
    if (!(other is Query$TopicWorks$topicWorks$edges$node) ||
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

extension UtilityExtension$Query$TopicWorks$topicWorks$edges$node
    on Query$TopicWorks$topicWorks$edges$node {
  CopyWith$Query$TopicWorks$topicWorks$edges$node<
          Query$TopicWorks$topicWorks$edges$node>
      get copyWith => CopyWith$Query$TopicWorks$topicWorks$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TopicWorks$topicWorks$edges$node<TRes> {
  factory CopyWith$Query$TopicWorks$topicWorks$edges$node(
    Query$TopicWorks$topicWorks$edges$node instance,
    TRes Function(Query$TopicWorks$topicWorks$edges$node) then,
  ) = _CopyWithImpl$Query$TopicWorks$topicWorks$edges$node;

  factory CopyWith$Query$TopicWorks$topicWorks$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$TopicWorks$topicWorks$edges$node;

  TRes call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TopicWorks$topicWorks$edges$node<TRes>
    implements CopyWith$Query$TopicWorks$topicWorks$edges$node<TRes> {
  _CopyWithImpl$Query$TopicWorks$topicWorks$edges$node(
    this._instance,
    this._then,
  );

  final Query$TopicWorks$topicWorks$edges$node _instance;

  final TRes Function(Query$TopicWorks$topicWorks$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TopicWorks$topicWorks$edges$node(
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

class _CopyWithStubImpl$Query$TopicWorks$topicWorks$edges$node<TRes>
    implements CopyWith$Query$TopicWorks$topicWorks$edges$node<TRes> {
  _CopyWithStubImpl$Query$TopicWorks$topicWorks$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SearchCandidates {
  factory Variables$Query$SearchCandidates({String? searchText}) =>
      Variables$Query$SearchCandidates._({
        if (searchText != null) r'searchText': searchText,
      });

  Variables$Query$SearchCandidates._(this._$data);

  factory Variables$Query$SearchCandidates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    return Variables$Query$SearchCandidates._(result$data);
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

  CopyWith$Variables$Query$SearchCandidates<Variables$Query$SearchCandidates>
      get copyWith => CopyWith$Variables$Query$SearchCandidates(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchCandidates) ||
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

abstract class CopyWith$Variables$Query$SearchCandidates<TRes> {
  factory CopyWith$Variables$Query$SearchCandidates(
    Variables$Query$SearchCandidates instance,
    TRes Function(Variables$Query$SearchCandidates) then,
  ) = _CopyWithImpl$Variables$Query$SearchCandidates;

  factory CopyWith$Variables$Query$SearchCandidates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchCandidates;

  TRes call({String? searchText});
}

class _CopyWithImpl$Variables$Query$SearchCandidates<TRes>
    implements CopyWith$Variables$Query$SearchCandidates<TRes> {
  _CopyWithImpl$Variables$Query$SearchCandidates(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchCandidates _instance;

  final TRes Function(Variables$Query$SearchCandidates) _then;

  static const _undefined = {};

  TRes call({Object? searchText = _undefined}) =>
      _then(Variables$Query$SearchCandidates._({
        ..._instance._$data,
        if (searchText != _undefined) 'searchText': (searchText as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchCandidates<TRes>
    implements CopyWith$Variables$Query$SearchCandidates<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchCandidates(this._res);

  TRes _res;

  call({String? searchText}) => _res;
}

class Query$SearchCandidates {
  Query$SearchCandidates({
    required this.categories,
    required this.topicWorks,
    required this.topicHashtags,
    required this.$__typename,
  });

  factory Query$SearchCandidates.fromJson(Map<String, dynamic> json) {
    final l$categories = json['categories'];
    final l$topicWorks = json['topicWorks'];
    final l$topicHashtags = json['topicHashtags'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates(
      categories: Query$SearchCandidates$categories.fromJson(
          (l$categories as Map<String, dynamic>)),
      topicWorks: Query$SearchCandidates$topicWorks.fromJson(
          (l$topicWorks as Map<String, dynamic>)),
      topicHashtags: Query$SearchCandidates$topicHashtags.fromJson(
          (l$topicHashtags as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchCandidates$categories categories;

  final Query$SearchCandidates$topicWorks topicWorks;

  final Query$SearchCandidates$topicHashtags topicHashtags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$categories = categories;
    _resultData['categories'] = l$categories.toJson();
    final l$topicWorks = topicWorks;
    _resultData['topicWorks'] = l$topicWorks.toJson();
    final l$topicHashtags = topicHashtags;
    _resultData['topicHashtags'] = l$topicHashtags.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$categories = categories;
    final l$topicWorks = topicWorks;
    final l$topicHashtags = topicHashtags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$categories,
      l$topicWorks,
      l$topicHashtags,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchCandidates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != lOther$categories) {
      return false;
    }
    final l$topicWorks = topicWorks;
    final lOther$topicWorks = other.topicWorks;
    if (l$topicWorks != lOther$topicWorks) {
      return false;
    }
    final l$topicHashtags = topicHashtags;
    final lOther$topicHashtags = other.topicHashtags;
    if (l$topicHashtags != lOther$topicHashtags) {
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

extension UtilityExtension$Query$SearchCandidates on Query$SearchCandidates {
  CopyWith$Query$SearchCandidates<Query$SearchCandidates> get copyWith =>
      CopyWith$Query$SearchCandidates(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchCandidates<TRes> {
  factory CopyWith$Query$SearchCandidates(
    Query$SearchCandidates instance,
    TRes Function(Query$SearchCandidates) then,
  ) = _CopyWithImpl$Query$SearchCandidates;

  factory CopyWith$Query$SearchCandidates.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates;

  TRes call({
    Query$SearchCandidates$categories? categories,
    Query$SearchCandidates$topicWorks? topicWorks,
    Query$SearchCandidates$topicHashtags? topicHashtags,
    String? $__typename,
  });
  CopyWith$Query$SearchCandidates$categories<TRes> get categories;
  CopyWith$Query$SearchCandidates$topicWorks<TRes> get topicWorks;
  CopyWith$Query$SearchCandidates$topicHashtags<TRes> get topicHashtags;
}

class _CopyWithImpl$Query$SearchCandidates<TRes>
    implements CopyWith$Query$SearchCandidates<TRes> {
  _CopyWithImpl$Query$SearchCandidates(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates _instance;

  final TRes Function(Query$SearchCandidates) _then;

  static const _undefined = {};

  TRes call({
    Object? categories = _undefined,
    Object? topicWorks = _undefined,
    Object? topicHashtags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates(
        categories: categories == _undefined || categories == null
            ? _instance.categories
            : (categories as Query$SearchCandidates$categories),
        topicWorks: topicWorks == _undefined || topicWorks == null
            ? _instance.topicWorks
            : (topicWorks as Query$SearchCandidates$topicWorks),
        topicHashtags: topicHashtags == _undefined || topicHashtags == null
            ? _instance.topicHashtags
            : (topicHashtags as Query$SearchCandidates$topicHashtags),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SearchCandidates$categories<TRes> get categories {
    final local$categories = _instance.categories;
    return CopyWith$Query$SearchCandidates$categories(
        local$categories, (e) => call(categories: e));
  }

  CopyWith$Query$SearchCandidates$topicWorks<TRes> get topicWorks {
    final local$topicWorks = _instance.topicWorks;
    return CopyWith$Query$SearchCandidates$topicWorks(
        local$topicWorks, (e) => call(topicWorks: e));
  }

  CopyWith$Query$SearchCandidates$topicHashtags<TRes> get topicHashtags {
    final local$topicHashtags = _instance.topicHashtags;
    return CopyWith$Query$SearchCandidates$topicHashtags(
        local$topicHashtags, (e) => call(topicHashtags: e));
  }
}

class _CopyWithStubImpl$Query$SearchCandidates<TRes>
    implements CopyWith$Query$SearchCandidates<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates(this._res);

  TRes _res;

  call({
    Query$SearchCandidates$categories? categories,
    Query$SearchCandidates$topicWorks? topicWorks,
    Query$SearchCandidates$topicHashtags? topicHashtags,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SearchCandidates$categories<TRes> get categories =>
      CopyWith$Query$SearchCandidates$categories.stub(_res);
  CopyWith$Query$SearchCandidates$topicWorks<TRes> get topicWorks =>
      CopyWith$Query$SearchCandidates$topicWorks.stub(_res);
  CopyWith$Query$SearchCandidates$topicHashtags<TRes> get topicHashtags =>
      CopyWith$Query$SearchCandidates$topicHashtags.stub(_res);
}

const documentNodeQuerySearchCandidates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchCandidates'),
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
        name: NameNode(value: 'categories'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '9'),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'nameContainsFold'),
                value: VariableNode(name: NameNode(value: 'searchText')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'direction'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'field'),
                value: EnumValueNode(name: NameNode(value: 'NAME')),
              ),
            ]),
          ),
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
        name: NameNode(value: 'topicWorks'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '9'),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'titleContainsFold'),
                value: VariableNode(name: NameNode(value: 'searchText')),
              )
            ]),
          ),
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
        name: NameNode(value: 'topicHashtags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '9'),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'titleContainsFold'),
                value: VariableNode(name: NameNode(value: 'searchText')),
              )
            ]),
          ),
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
Query$SearchCandidates _parserFn$Query$SearchCandidates(
        Map<String, dynamic> data) =>
    Query$SearchCandidates.fromJson(data);

class Options$Query$SearchCandidates
    extends graphql.QueryOptions<Query$SearchCandidates> {
  Options$Query$SearchCandidates({
    String? operationName,
    Variables$Query$SearchCandidates? variables,
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
          document: documentNodeQuerySearchCandidates,
          parserFn: _parserFn$Query$SearchCandidates,
        );
}

class WatchOptions$Query$SearchCandidates
    extends graphql.WatchQueryOptions<Query$SearchCandidates> {
  WatchOptions$Query$SearchCandidates({
    String? operationName,
    Variables$Query$SearchCandidates? variables,
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
          document: documentNodeQuerySearchCandidates,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchCandidates,
        );
}

class FetchMoreOptions$Query$SearchCandidates extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchCandidates({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SearchCandidates? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearchCandidates,
        );
}

extension ClientExtension$Query$SearchCandidates on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchCandidates>> query$SearchCandidates(
          [Options$Query$SearchCandidates? options]) async =>
      await this.query(options ?? Options$Query$SearchCandidates());
  graphql.ObservableQuery<Query$SearchCandidates> watchQuery$SearchCandidates(
          [WatchOptions$Query$SearchCandidates? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchCandidates());
  void writeQuery$SearchCandidates({
    required Query$SearchCandidates data,
    Variables$Query$SearchCandidates? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySearchCandidates),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchCandidates? readQuery$SearchCandidates({
    Variables$Query$SearchCandidates? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerySearchCandidates),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchCandidates.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchCandidates>
    useQuery$SearchCandidates([Options$Query$SearchCandidates? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$SearchCandidates());
graphql.ObservableQuery<Query$SearchCandidates> useWatchQuery$SearchCandidates(
        [WatchOptions$Query$SearchCandidates? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$SearchCandidates());

class Query$SearchCandidates$Widget
    extends graphql_flutter.Query<Query$SearchCandidates> {
  Query$SearchCandidates$Widget({
    widgets.Key? key,
    Options$Query$SearchCandidates? options,
    required graphql_flutter.QueryBuilder<Query$SearchCandidates> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SearchCandidates(),
          builder: builder,
        );
}

class Query$SearchCandidates$categories {
  Query$SearchCandidates$categories({
    this.edges,
    required this.$__typename,
  });

  factory Query$SearchCandidates$categories.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$categories(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchCandidates$categories$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchCandidates$categories$edges?>? edges;

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
    if (!(other is Query$SearchCandidates$categories) ||
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

extension UtilityExtension$Query$SearchCandidates$categories
    on Query$SearchCandidates$categories {
  CopyWith$Query$SearchCandidates$categories<Query$SearchCandidates$categories>
      get copyWith => CopyWith$Query$SearchCandidates$categories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCandidates$categories<TRes> {
  factory CopyWith$Query$SearchCandidates$categories(
    Query$SearchCandidates$categories instance,
    TRes Function(Query$SearchCandidates$categories) then,
  ) = _CopyWithImpl$Query$SearchCandidates$categories;

  factory CopyWith$Query$SearchCandidates$categories.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$categories;

  TRes call({
    List<Query$SearchCandidates$categories$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$SearchCandidates$categories$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchCandidates$categories$edges<
                      Query$SearchCandidates$categories$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchCandidates$categories<TRes>
    implements CopyWith$Query$SearchCandidates$categories<TRes> {
  _CopyWithImpl$Query$SearchCandidates$categories(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates$categories _instance;

  final TRes Function(Query$SearchCandidates$categories) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates$categories(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$SearchCandidates$categories$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$SearchCandidates$categories$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchCandidates$categories$edges<
                          Query$SearchCandidates$categories$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchCandidates$categories$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchCandidates$categories<TRes>
    implements CopyWith$Query$SearchCandidates$categories<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$categories(this._res);

  TRes _res;

  call({
    List<Query$SearchCandidates$categories$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$SearchCandidates$categories$edges {
  Query$SearchCandidates$categories$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$SearchCandidates$categories$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$categories$edges(
      node: l$node == null
          ? null
          : Query$SearchCandidates$categories$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchCandidates$categories$edges$node? node;

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
    if (!(other is Query$SearchCandidates$categories$edges) ||
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

extension UtilityExtension$Query$SearchCandidates$categories$edges
    on Query$SearchCandidates$categories$edges {
  CopyWith$Query$SearchCandidates$categories$edges<
          Query$SearchCandidates$categories$edges>
      get copyWith => CopyWith$Query$SearchCandidates$categories$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCandidates$categories$edges<TRes> {
  factory CopyWith$Query$SearchCandidates$categories$edges(
    Query$SearchCandidates$categories$edges instance,
    TRes Function(Query$SearchCandidates$categories$edges) then,
  ) = _CopyWithImpl$Query$SearchCandidates$categories$edges;

  factory CopyWith$Query$SearchCandidates$categories$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$categories$edges;

  TRes call({
    Query$SearchCandidates$categories$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$SearchCandidates$categories$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchCandidates$categories$edges<TRes>
    implements CopyWith$Query$SearchCandidates$categories$edges<TRes> {
  _CopyWithImpl$Query$SearchCandidates$categories$edges(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates$categories$edges _instance;

  final TRes Function(Query$SearchCandidates$categories$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates$categories$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$SearchCandidates$categories$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SearchCandidates$categories$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$SearchCandidates$categories$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$SearchCandidates$categories$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SearchCandidates$categories$edges<TRes>
    implements CopyWith$Query$SearchCandidates$categories$edges<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$categories$edges(this._res);

  TRes _res;

  call({
    Query$SearchCandidates$categories$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SearchCandidates$categories$edges$node<TRes> get node =>
      CopyWith$Query$SearchCandidates$categories$edges$node.stub(_res);
}

class Query$SearchCandidates$categories$edges$node {
  Query$SearchCandidates$categories$edges$node({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$SearchCandidates$categories$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$categories$edges$node(
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
    if (!(other is Query$SearchCandidates$categories$edges$node) ||
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

extension UtilityExtension$Query$SearchCandidates$categories$edges$node
    on Query$SearchCandidates$categories$edges$node {
  CopyWith$Query$SearchCandidates$categories$edges$node<
          Query$SearchCandidates$categories$edges$node>
      get copyWith => CopyWith$Query$SearchCandidates$categories$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCandidates$categories$edges$node<TRes> {
  factory CopyWith$Query$SearchCandidates$categories$edges$node(
    Query$SearchCandidates$categories$edges$node instance,
    TRes Function(Query$SearchCandidates$categories$edges$node) then,
  ) = _CopyWithImpl$Query$SearchCandidates$categories$edges$node;

  factory CopyWith$Query$SearchCandidates$categories$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$categories$edges$node;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchCandidates$categories$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$categories$edges$node<TRes> {
  _CopyWithImpl$Query$SearchCandidates$categories$edges$node(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates$categories$edges$node _instance;

  final TRes Function(Query$SearchCandidates$categories$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates$categories$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchCandidates$categories$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$categories$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$categories$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SearchCandidates$topicWorks {
  Query$SearchCandidates$topicWorks({
    this.edges,
    required this.$__typename,
  });

  factory Query$SearchCandidates$topicWorks.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$topicWorks(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchCandidates$topicWorks$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchCandidates$topicWorks$edges?>? edges;

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
    if (!(other is Query$SearchCandidates$topicWorks) ||
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

extension UtilityExtension$Query$SearchCandidates$topicWorks
    on Query$SearchCandidates$topicWorks {
  CopyWith$Query$SearchCandidates$topicWorks<Query$SearchCandidates$topicWorks>
      get copyWith => CopyWith$Query$SearchCandidates$topicWorks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCandidates$topicWorks<TRes> {
  factory CopyWith$Query$SearchCandidates$topicWorks(
    Query$SearchCandidates$topicWorks instance,
    TRes Function(Query$SearchCandidates$topicWorks) then,
  ) = _CopyWithImpl$Query$SearchCandidates$topicWorks;

  factory CopyWith$Query$SearchCandidates$topicWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$topicWorks;

  TRes call({
    List<Query$SearchCandidates$topicWorks$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$SearchCandidates$topicWorks$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchCandidates$topicWorks$edges<
                      Query$SearchCandidates$topicWorks$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchCandidates$topicWorks<TRes>
    implements CopyWith$Query$SearchCandidates$topicWorks<TRes> {
  _CopyWithImpl$Query$SearchCandidates$topicWorks(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates$topicWorks _instance;

  final TRes Function(Query$SearchCandidates$topicWorks) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates$topicWorks(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$SearchCandidates$topicWorks$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$SearchCandidates$topicWorks$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchCandidates$topicWorks$edges<
                          Query$SearchCandidates$topicWorks$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchCandidates$topicWorks$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchCandidates$topicWorks<TRes>
    implements CopyWith$Query$SearchCandidates$topicWorks<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$topicWorks(this._res);

  TRes _res;

  call({
    List<Query$SearchCandidates$topicWorks$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$SearchCandidates$topicWorks$edges {
  Query$SearchCandidates$topicWorks$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$SearchCandidates$topicWorks$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$topicWorks$edges(
      node: l$node == null
          ? null
          : Query$SearchCandidates$topicWorks$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchCandidates$topicWorks$edges$node? node;

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
    if (!(other is Query$SearchCandidates$topicWorks$edges) ||
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

extension UtilityExtension$Query$SearchCandidates$topicWorks$edges
    on Query$SearchCandidates$topicWorks$edges {
  CopyWith$Query$SearchCandidates$topicWorks$edges<
          Query$SearchCandidates$topicWorks$edges>
      get copyWith => CopyWith$Query$SearchCandidates$topicWorks$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCandidates$topicWorks$edges<TRes> {
  factory CopyWith$Query$SearchCandidates$topicWorks$edges(
    Query$SearchCandidates$topicWorks$edges instance,
    TRes Function(Query$SearchCandidates$topicWorks$edges) then,
  ) = _CopyWithImpl$Query$SearchCandidates$topicWorks$edges;

  factory CopyWith$Query$SearchCandidates$topicWorks$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$topicWorks$edges;

  TRes call({
    Query$SearchCandidates$topicWorks$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$SearchCandidates$topicWorks$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchCandidates$topicWorks$edges<TRes>
    implements CopyWith$Query$SearchCandidates$topicWorks$edges<TRes> {
  _CopyWithImpl$Query$SearchCandidates$topicWorks$edges(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates$topicWorks$edges _instance;

  final TRes Function(Query$SearchCandidates$topicWorks$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates$topicWorks$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$SearchCandidates$topicWorks$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SearchCandidates$topicWorks$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$SearchCandidates$topicWorks$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$SearchCandidates$topicWorks$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SearchCandidates$topicWorks$edges<TRes>
    implements CopyWith$Query$SearchCandidates$topicWorks$edges<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$topicWorks$edges(this._res);

  TRes _res;

  call({
    Query$SearchCandidates$topicWorks$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SearchCandidates$topicWorks$edges$node<TRes> get node =>
      CopyWith$Query$SearchCandidates$topicWorks$edges$node.stub(_res);
}

class Query$SearchCandidates$topicWorks$edges$node {
  Query$SearchCandidates$topicWorks$edges$node({
    required this.id,
    required this.title,
    this.thumbnail,
    required this.$__typename,
  });

  factory Query$SearchCandidates$topicWorks$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$topicWorks$edges$node(
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
    if (!(other is Query$SearchCandidates$topicWorks$edges$node) ||
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

extension UtilityExtension$Query$SearchCandidates$topicWorks$edges$node
    on Query$SearchCandidates$topicWorks$edges$node {
  CopyWith$Query$SearchCandidates$topicWorks$edges$node<
          Query$SearchCandidates$topicWorks$edges$node>
      get copyWith => CopyWith$Query$SearchCandidates$topicWorks$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCandidates$topicWorks$edges$node<TRes> {
  factory CopyWith$Query$SearchCandidates$topicWorks$edges$node(
    Query$SearchCandidates$topicWorks$edges$node instance,
    TRes Function(Query$SearchCandidates$topicWorks$edges$node) then,
  ) = _CopyWithImpl$Query$SearchCandidates$topicWorks$edges$node;

  factory CopyWith$Query$SearchCandidates$topicWorks$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$topicWorks$edges$node;

  TRes call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchCandidates$topicWorks$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$topicWorks$edges$node<TRes> {
  _CopyWithImpl$Query$SearchCandidates$topicWorks$edges$node(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates$topicWorks$edges$node _instance;

  final TRes Function(Query$SearchCandidates$topicWorks$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates$topicWorks$edges$node(
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

class _CopyWithStubImpl$Query$SearchCandidates$topicWorks$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$topicWorks$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$topicWorks$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class Query$SearchCandidates$topicHashtags {
  Query$SearchCandidates$topicHashtags({
    this.edges,
    required this.$__typename,
  });

  factory Query$SearchCandidates$topicHashtags.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$topicHashtags(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchCandidates$topicHashtags$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchCandidates$topicHashtags$edges?>? edges;

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
    if (!(other is Query$SearchCandidates$topicHashtags) ||
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

extension UtilityExtension$Query$SearchCandidates$topicHashtags
    on Query$SearchCandidates$topicHashtags {
  CopyWith$Query$SearchCandidates$topicHashtags<
          Query$SearchCandidates$topicHashtags>
      get copyWith => CopyWith$Query$SearchCandidates$topicHashtags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCandidates$topicHashtags<TRes> {
  factory CopyWith$Query$SearchCandidates$topicHashtags(
    Query$SearchCandidates$topicHashtags instance,
    TRes Function(Query$SearchCandidates$topicHashtags) then,
  ) = _CopyWithImpl$Query$SearchCandidates$topicHashtags;

  factory CopyWith$Query$SearchCandidates$topicHashtags.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$topicHashtags;

  TRes call({
    List<Query$SearchCandidates$topicHashtags$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$SearchCandidates$topicHashtags$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchCandidates$topicHashtags$edges<
                      Query$SearchCandidates$topicHashtags$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchCandidates$topicHashtags<TRes>
    implements CopyWith$Query$SearchCandidates$topicHashtags<TRes> {
  _CopyWithImpl$Query$SearchCandidates$topicHashtags(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates$topicHashtags _instance;

  final TRes Function(Query$SearchCandidates$topicHashtags) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates$topicHashtags(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$SearchCandidates$topicHashtags$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$SearchCandidates$topicHashtags$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchCandidates$topicHashtags$edges<
                          Query$SearchCandidates$topicHashtags$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchCandidates$topicHashtags$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchCandidates$topicHashtags<TRes>
    implements CopyWith$Query$SearchCandidates$topicHashtags<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$topicHashtags(this._res);

  TRes _res;

  call({
    List<Query$SearchCandidates$topicHashtags$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$SearchCandidates$topicHashtags$edges {
  Query$SearchCandidates$topicHashtags$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$SearchCandidates$topicHashtags$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$topicHashtags$edges(
      node: l$node == null
          ? null
          : Query$SearchCandidates$topicHashtags$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchCandidates$topicHashtags$edges$node? node;

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
    if (!(other is Query$SearchCandidates$topicHashtags$edges) ||
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

extension UtilityExtension$Query$SearchCandidates$topicHashtags$edges
    on Query$SearchCandidates$topicHashtags$edges {
  CopyWith$Query$SearchCandidates$topicHashtags$edges<
          Query$SearchCandidates$topicHashtags$edges>
      get copyWith => CopyWith$Query$SearchCandidates$topicHashtags$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCandidates$topicHashtags$edges<TRes> {
  factory CopyWith$Query$SearchCandidates$topicHashtags$edges(
    Query$SearchCandidates$topicHashtags$edges instance,
    TRes Function(Query$SearchCandidates$topicHashtags$edges) then,
  ) = _CopyWithImpl$Query$SearchCandidates$topicHashtags$edges;

  factory CopyWith$Query$SearchCandidates$topicHashtags$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$topicHashtags$edges;

  TRes call({
    Query$SearchCandidates$topicHashtags$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$SearchCandidates$topicHashtags$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchCandidates$topicHashtags$edges<TRes>
    implements CopyWith$Query$SearchCandidates$topicHashtags$edges<TRes> {
  _CopyWithImpl$Query$SearchCandidates$topicHashtags$edges(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates$topicHashtags$edges _instance;

  final TRes Function(Query$SearchCandidates$topicHashtags$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates$topicHashtags$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$SearchCandidates$topicHashtags$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SearchCandidates$topicHashtags$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$SearchCandidates$topicHashtags$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$SearchCandidates$topicHashtags$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SearchCandidates$topicHashtags$edges<TRes>
    implements CopyWith$Query$SearchCandidates$topicHashtags$edges<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$topicHashtags$edges(this._res);

  TRes _res;

  call({
    Query$SearchCandidates$topicHashtags$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SearchCandidates$topicHashtags$edges$node<TRes> get node =>
      CopyWith$Query$SearchCandidates$topicHashtags$edges$node.stub(_res);
}

class Query$SearchCandidates$topicHashtags$edges$node {
  Query$SearchCandidates$topicHashtags$edges$node({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Query$SearchCandidates$topicHashtags$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$topicHashtags$edges$node(
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
    if (!(other is Query$SearchCandidates$topicHashtags$edges$node) ||
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

extension UtilityExtension$Query$SearchCandidates$topicHashtags$edges$node
    on Query$SearchCandidates$topicHashtags$edges$node {
  CopyWith$Query$SearchCandidates$topicHashtags$edges$node<
          Query$SearchCandidates$topicHashtags$edges$node>
      get copyWith => CopyWith$Query$SearchCandidates$topicHashtags$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCandidates$topicHashtags$edges$node<TRes> {
  factory CopyWith$Query$SearchCandidates$topicHashtags$edges$node(
    Query$SearchCandidates$topicHashtags$edges$node instance,
    TRes Function(Query$SearchCandidates$topicHashtags$edges$node) then,
  ) = _CopyWithImpl$Query$SearchCandidates$topicHashtags$edges$node;

  factory CopyWith$Query$SearchCandidates$topicHashtags$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$topicHashtags$edges$node;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchCandidates$topicHashtags$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$topicHashtags$edges$node<TRes> {
  _CopyWithImpl$Query$SearchCandidates$topicHashtags$edges$node(
    this._instance,
    this._then,
  );

  final Query$SearchCandidates$topicHashtags$edges$node _instance;

  final TRes Function(Query$SearchCandidates$topicHashtags$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCandidates$topicHashtags$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchCandidates$topicHashtags$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$topicHashtags$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$topicHashtags$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Work {
  factory Variables$Query$Work({required String workID}) =>
      Variables$Query$Work._({
        r'workID': workID,
      });

  Variables$Query$Work._(this._$data);

  factory Variables$Query$Work.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$workID = data['workID'];
    result$data['workID'] = (l$workID as String);
    return Variables$Query$Work._(result$data);
  }

  Map<String, dynamic> _$data;

  String get workID => (_$data['workID'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$workID = workID;
    result$data['workID'] = l$workID;
    return result$data;
  }

  CopyWith$Variables$Query$Work<Variables$Query$Work> get copyWith =>
      CopyWith$Variables$Query$Work(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Work) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$workID = workID;
    final lOther$workID = other.workID;
    if (l$workID != lOther$workID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$workID = workID;
    return Object.hashAll([l$workID]);
  }
}

abstract class CopyWith$Variables$Query$Work<TRes> {
  factory CopyWith$Variables$Query$Work(
    Variables$Query$Work instance,
    TRes Function(Variables$Query$Work) then,
  ) = _CopyWithImpl$Variables$Query$Work;

  factory CopyWith$Variables$Query$Work.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Work;

  TRes call({String? workID});
}

class _CopyWithImpl$Variables$Query$Work<TRes>
    implements CopyWith$Variables$Query$Work<TRes> {
  _CopyWithImpl$Variables$Query$Work(
    this._instance,
    this._then,
  );

  final Variables$Query$Work _instance;

  final TRes Function(Variables$Query$Work) _then;

  static const _undefined = {};

  TRes call({Object? workID = _undefined}) => _then(Variables$Query$Work._({
        ..._instance._$data,
        if (workID != _undefined && workID != null)
          'workID': (workID as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Work<TRes>
    implements CopyWith$Variables$Query$Work<TRes> {
  _CopyWithStubImpl$Variables$Query$Work(this._res);

  TRes _res;

  call({String? workID}) => _res;
}

class Query$Work {
  Query$Work({
    this.work,
    required this.workCategories,
    required this.$__typename,
  });

  factory Query$Work.fromJson(Map<String, dynamic> json) {
    final l$work = json['work'];
    final l$workCategories = json['workCategories'];
    final l$$__typename = json['__typename'];
    return Query$Work(
      work: l$work == null
          ? null
          : Query$Work$work.fromJson((l$work as Map<String, dynamic>)),
      workCategories: (l$workCategories as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$Work$workCategories.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Work$work? work;

  final List<Query$Work$workCategories?> workCategories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$work = work;
    _resultData['work'] = l$work?.toJson();
    final l$workCategories = workCategories;
    _resultData['workCategories'] =
        l$workCategories.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$work = work;
    final l$workCategories = workCategories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$work,
      Object.hashAll(l$workCategories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Work) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$work = work;
    final lOther$work = other.work;
    if (l$work != lOther$work) {
      return false;
    }
    final l$workCategories = workCategories;
    final lOther$workCategories = other.workCategories;
    if (l$workCategories.length != lOther$workCategories.length) {
      return false;
    }
    for (int i = 0; i < l$workCategories.length; i++) {
      final l$workCategories$entry = l$workCategories[i];
      final lOther$workCategories$entry = lOther$workCategories[i];
      if (l$workCategories$entry != lOther$workCategories$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Work on Query$Work {
  CopyWith$Query$Work<Query$Work> get copyWith => CopyWith$Query$Work(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Work<TRes> {
  factory CopyWith$Query$Work(
    Query$Work instance,
    TRes Function(Query$Work) then,
  ) = _CopyWithImpl$Query$Work;

  factory CopyWith$Query$Work.stub(TRes res) = _CopyWithStubImpl$Query$Work;

  TRes call({
    Query$Work$work? work,
    List<Query$Work$workCategories?>? workCategories,
    String? $__typename,
  });
  CopyWith$Query$Work$work<TRes> get work;
  TRes workCategories(
      Iterable<Query$Work$workCategories?> Function(
              Iterable<
                  CopyWith$Query$Work$workCategories<
                      Query$Work$workCategories>?>)
          _fn);
}

class _CopyWithImpl$Query$Work<TRes> implements CopyWith$Query$Work<TRes> {
  _CopyWithImpl$Query$Work(
    this._instance,
    this._then,
  );

  final Query$Work _instance;

  final TRes Function(Query$Work) _then;

  static const _undefined = {};

  TRes call({
    Object? work = _undefined,
    Object? workCategories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Work(
        work: work == _undefined ? _instance.work : (work as Query$Work$work?),
        workCategories: workCategories == _undefined || workCategories == null
            ? _instance.workCategories
            : (workCategories as List<Query$Work$workCategories?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Work$work<TRes> get work {
    final local$work = _instance.work;
    return local$work == null
        ? CopyWith$Query$Work$work.stub(_then(_instance))
        : CopyWith$Query$Work$work(local$work, (e) => call(work: e));
  }

  TRes workCategories(
          Iterable<Query$Work$workCategories?> Function(
                  Iterable<
                      CopyWith$Query$Work$workCategories<
                          Query$Work$workCategories>?>)
              _fn) =>
      call(
          workCategories: _fn(_instance.workCategories.map((e) => e == null
              ? null
              : CopyWith$Query$Work$workCategories(
                  e,
                  (i) => i,
                ))).toList());
}

class _CopyWithStubImpl$Query$Work<TRes> implements CopyWith$Query$Work<TRes> {
  _CopyWithStubImpl$Query$Work(this._res);

  TRes _res;

  call({
    Query$Work$work? work,
    List<Query$Work$workCategories?>? workCategories,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Work$work<TRes> get work =>
      CopyWith$Query$Work$work.stub(_res);
  workCategories(_fn) => _res;
}

const documentNodeQueryWork = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Work'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'workID')),
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
        name: NameNode(value: 'node'),
        alias: NameNode(value: 'work'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'workID')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Work'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'posts'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PraiseSummary'),
                    directives: [],
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
        name: NameNode(value: 'workCategories'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'workID'),
            value: VariableNode(name: NameNode(value: 'workID')),
          )
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'count'),
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
  fragmentDefinitionPraiseSummary,
]);
Query$Work _parserFn$Query$Work(Map<String, dynamic> data) =>
    Query$Work.fromJson(data);

class Options$Query$Work extends graphql.QueryOptions<Query$Work> {
  Options$Query$Work({
    String? operationName,
    required Variables$Query$Work variables,
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
          document: documentNodeQueryWork,
          parserFn: _parserFn$Query$Work,
        );
}

class WatchOptions$Query$Work extends graphql.WatchQueryOptions<Query$Work> {
  WatchOptions$Query$Work({
    String? operationName,
    required Variables$Query$Work variables,
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
          document: documentNodeQueryWork,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Work,
        );
}

class FetchMoreOptions$Query$Work extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Work({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Work variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryWork,
        );
}

extension ClientExtension$Query$Work on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Work>> query$Work(
          Options$Query$Work options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Work> watchQuery$Work(
          WatchOptions$Query$Work options) =>
      this.watchQuery(options);
  void writeQuery$Work({
    required Query$Work data,
    required Variables$Query$Work variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryWork),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Work? readQuery$Work({
    required Variables$Query$Work variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryWork),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Work.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Work> useQuery$Work(
        Options$Query$Work options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Work> useWatchQuery$Work(
        WatchOptions$Query$Work options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Work$Widget extends graphql_flutter.Query<Query$Work> {
  Query$Work$Widget({
    widgets.Key? key,
    required Options$Query$Work options,
    required graphql_flutter.QueryBuilder<Query$Work> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Work$work {
  Query$Work$work({required this.$__typename});

  factory Query$Work$work.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Work":
        return Query$Work$work$$Work.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Work$work($__typename: (l$$__typename as String));
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
    if (!(other is Query$Work$work) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Work$work on Query$Work$work {
  CopyWith$Query$Work$work<Query$Work$work> get copyWith =>
      CopyWith$Query$Work$work(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Work$work<TRes> {
  factory CopyWith$Query$Work$work(
    Query$Work$work instance,
    TRes Function(Query$Work$work) then,
  ) = _CopyWithImpl$Query$Work$work;

  factory CopyWith$Query$Work$work.stub(TRes res) =
      _CopyWithStubImpl$Query$Work$work;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Work$work<TRes>
    implements CopyWith$Query$Work$work<TRes> {
  _CopyWithImpl$Query$Work$work(
    this._instance,
    this._then,
  );

  final Query$Work$work _instance;

  final TRes Function(Query$Work$work) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) => _then(Query$Work$work(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Work$work<TRes>
    implements CopyWith$Query$Work$work<TRes> {
  _CopyWithStubImpl$Query$Work$work(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Work$work$$Work implements Query$Work$work {
  Query$Work$work$$Work({
    required this.$__typename,
    required this.id,
    required this.title,
    this.thumbnail,
    this.posts,
  });

  factory Query$Work$work$$Work.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnail = json['thumbnail'];
    final l$posts = json['posts'];
    return Query$Work$work$$Work(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      title: (l$title as String),
      thumbnail: (l$thumbnail as String?),
      posts: (l$posts as List<dynamic>?)
          ?.map((e) =>
              Fragment$PraiseSummary.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String $__typename;

  final String id;

  final String title;

  final String? thumbnail;

  final List<Fragment$PraiseSummary>? posts;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$posts = posts;
    _resultData['posts'] = l$posts?.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$title = title;
    final l$thumbnail = thumbnail;
    final l$posts = posts;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$title,
      l$thumbnail,
      l$posts == null ? null : Object.hashAll(l$posts.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Work$work$$Work) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Query$Work$work$$Work on Query$Work$work$$Work {
  CopyWith$Query$Work$work$$Work<Query$Work$work$$Work> get copyWith =>
      CopyWith$Query$Work$work$$Work(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Work$work$$Work<TRes> {
  factory CopyWith$Query$Work$work$$Work(
    Query$Work$work$$Work instance,
    TRes Function(Query$Work$work$$Work) then,
  ) = _CopyWithImpl$Query$Work$work$$Work;

  factory CopyWith$Query$Work$work$$Work.stub(TRes res) =
      _CopyWithStubImpl$Query$Work$work$$Work;

  TRes call({
    String? $__typename,
    String? id,
    String? title,
    String? thumbnail,
    List<Fragment$PraiseSummary>? posts,
  });
  TRes posts(
      Iterable<Fragment$PraiseSummary>? Function(
              Iterable<
                  CopyWith$Fragment$PraiseSummary<Fragment$PraiseSummary>>?)
          _fn);
}

class _CopyWithImpl$Query$Work$work$$Work<TRes>
    implements CopyWith$Query$Work$work$$Work<TRes> {
  _CopyWithImpl$Query$Work$work$$Work(
    this._instance,
    this._then,
  );

  final Query$Work$work$$Work _instance;

  final TRes Function(Query$Work$work$$Work) _then;

  static const _undefined = {};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnail = _undefined,
    Object? posts = _undefined,
  }) =>
      _then(Query$Work$work$$Work(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        posts: posts == _undefined
            ? _instance.posts
            : (posts as List<Fragment$PraiseSummary>?),
      ));
  TRes posts(
          Iterable<Fragment$PraiseSummary>? Function(
                  Iterable<
                      CopyWith$Fragment$PraiseSummary<Fragment$PraiseSummary>>?)
              _fn) =>
      call(
          posts:
              _fn(_instance.posts?.map((e) => CopyWith$Fragment$PraiseSummary(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$Work$work$$Work<TRes>
    implements CopyWith$Query$Work$work$$Work<TRes> {
  _CopyWithStubImpl$Query$Work$work$$Work(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? title,
    String? thumbnail,
    List<Fragment$PraiseSummary>? posts,
  }) =>
      _res;
  posts(_fn) => _res;
}

class Query$Work$workCategories {
  Query$Work$workCategories({
    required this.id,
    required this.name,
    required this.count,
    required this.$__typename,
  });

  factory Query$Work$workCategories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$Work$workCategories(
      id: (l$id as String),
      name: (l$name as String),
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Work$workCategories) ||
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
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$Work$workCategories
    on Query$Work$workCategories {
  CopyWith$Query$Work$workCategories<Query$Work$workCategories> get copyWith =>
      CopyWith$Query$Work$workCategories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Work$workCategories<TRes> {
  factory CopyWith$Query$Work$workCategories(
    Query$Work$workCategories instance,
    TRes Function(Query$Work$workCategories) then,
  ) = _CopyWithImpl$Query$Work$workCategories;

  factory CopyWith$Query$Work$workCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$Work$workCategories;

  TRes call({
    String? id,
    String? name,
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Work$workCategories<TRes>
    implements CopyWith$Query$Work$workCategories<TRes> {
  _CopyWithImpl$Query$Work$workCategories(
    this._instance,
    this._then,
  );

  final Query$Work$workCategories _instance;

  final TRes Function(Query$Work$workCategories) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Work$workCategories(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Work$workCategories<TRes>
    implements CopyWith$Query$Work$workCategories<TRes> {
  _CopyWithStubImpl$Query$Work$workCategories(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? count,
    String? $__typename,
  }) =>
      _res;
}
