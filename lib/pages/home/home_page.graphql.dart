import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'home_page.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$TopPraises {
  Variables$Query$TopPraises({this.first});

  @override
  factory Variables$Query$TopPraises.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$TopPraisesFromJson(json);

  final int? first;

  Map<String, dynamic> toJson() => _$Variables$Query$TopPraisesToJson(this);
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$TopPraises) ||
        runtimeType != other.runtimeType) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    return true;
  }

  CopyWith$Variables$Query$TopPraises<Variables$Query$TopPraises>
      get copyWith => CopyWith$Variables$Query$TopPraises(this, (i) => i);
}

abstract class CopyWith$Variables$Query$TopPraises<TRes> {
  factory CopyWith$Variables$Query$TopPraises(
          Variables$Query$TopPraises instance,
          TRes Function(Variables$Query$TopPraises) then) =
      _CopyWithImpl$Variables$Query$TopPraises;

  factory CopyWith$Variables$Query$TopPraises.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TopPraises;

  TRes call({int? first});
}

class _CopyWithImpl$Variables$Query$TopPraises<TRes>
    implements CopyWith$Variables$Query$TopPraises<TRes> {
  _CopyWithImpl$Variables$Query$TopPraises(this._instance, this._then);

  final Variables$Query$TopPraises _instance;

  final TRes Function(Variables$Query$TopPraises) _then;

  static const _undefined = {};

  TRes call({Object? first = _undefined}) => _then(Variables$Query$TopPraises(
      first: first == _undefined ? _instance.first : (first as int?)));
}

class _CopyWithStubImpl$Variables$Query$TopPraises<TRes>
    implements CopyWith$Variables$Query$TopPraises<TRes> {
  _CopyWithStubImpl$Variables$Query$TopPraises(this._res);

  TRes _res;

  call({int? first}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$TopPraises {
  Query$TopPraises({required this.posts, required this.$__typename});

  @override
  factory Query$TopPraises.fromJson(Map<String, dynamic> json) =>
      _$Query$TopPraisesFromJson(json);

  final Query$TopPraises$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopPraisesToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopPraises) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$TopPraises on Query$TopPraises {
  CopyWith$Query$TopPraises<Query$TopPraises> get copyWith =>
      CopyWith$Query$TopPraises(this, (i) => i);
}

abstract class CopyWith$Query$TopPraises<TRes> {
  factory CopyWith$Query$TopPraises(
          Query$TopPraises instance, TRes Function(Query$TopPraises) then) =
      _CopyWithImpl$Query$TopPraises;

  factory CopyWith$Query$TopPraises.stub(TRes res) =
      _CopyWithStubImpl$Query$TopPraises;

  TRes call({Query$TopPraises$posts? posts, String? $__typename});
  CopyWith$Query$TopPraises$posts<TRes> get posts;
}

class _CopyWithImpl$Query$TopPraises<TRes>
    implements CopyWith$Query$TopPraises<TRes> {
  _CopyWithImpl$Query$TopPraises(this._instance, this._then);

  final Query$TopPraises _instance;

  final TRes Function(Query$TopPraises) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$TopPraises(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$TopPraises$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$TopPraises$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$TopPraises$posts(local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$TopPraises<TRes>
    implements CopyWith$Query$TopPraises<TRes> {
  _CopyWithStubImpl$Query$TopPraises(this._res);

  TRes _res;

  call({Query$TopPraises$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$TopPraises$posts<TRes> get posts =>
      CopyWith$Query$TopPraises$posts.stub(_res);
}

const documentNodeQueryTopPraises = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TopPraises'),
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
                          FieldNode(
                              name: NameNode(value: 'title'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'content'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'hashtags'),
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
                              name: NameNode(value: 'owner'),
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
                                    name: NameNode(value: 'name'),
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
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$TopPraises _parserFn$Query$TopPraises(Map<String, dynamic> data) =>
    Query$TopPraises.fromJson(data);

class Options$Query$TopPraises extends graphql.QueryOptions<Query$TopPraises> {
  Options$Query$TopPraises(
      {String? operationName,
      Variables$Query$TopPraises? variables,
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
            document: documentNodeQueryTopPraises,
            parserFn: _parserFn$Query$TopPraises);
}

class WatchOptions$Query$TopPraises
    extends graphql.WatchQueryOptions<Query$TopPraises> {
  WatchOptions$Query$TopPraises(
      {String? operationName,
      Variables$Query$TopPraises? variables,
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
            document: documentNodeQueryTopPraises,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$TopPraises);
}

class FetchMoreOptions$Query$TopPraises extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TopPraises(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$TopPraises? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryTopPraises);
}

extension ClientExtension$Query$TopPraises on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TopPraises>> query$TopPraises(
          [Options$Query$TopPraises? options]) async =>
      await this.query(options ?? Options$Query$TopPraises());
  graphql.ObservableQuery<Query$TopPraises> watchQuery$TopPraises(
          [WatchOptions$Query$TopPraises? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$TopPraises());
  void writeQuery$TopPraises(
          {required Query$TopPraises data,
          Variables$Query$TopPraises? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryTopPraises),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$TopPraises? readQuery$TopPraises(
      {Variables$Query$TopPraises? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryTopPraises),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$TopPraises.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TopPraises> useQuery$TopPraises(
        [Options$Query$TopPraises? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$TopPraises());
graphql.ObservableQuery<Query$TopPraises> useWatchQuery$TopPraises(
        [WatchOptions$Query$TopPraises? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$TopPraises());

class Query$TopPraises$Widget extends graphql_flutter.Query<Query$TopPraises> {
  Query$TopPraises$Widget(
      {widgets.Key? key,
      Options$Query$TopPraises? options,
      required graphql_flutter.QueryBuilder<Query$TopPraises> builder})
      : super(
            key: key,
            options: options ?? Options$Query$TopPraises(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$TopPraises$posts {
  Query$TopPraises$posts({this.edges, required this.$__typename});

  @override
  factory Query$TopPraises$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$TopPraises$postsFromJson(json);

  final List<Query$TopPraises$posts$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopPraises$postsToJson(this);
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
    if (!(other is Query$TopPraises$posts) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$TopPraises$posts on Query$TopPraises$posts {
  CopyWith$Query$TopPraises$posts<Query$TopPraises$posts> get copyWith =>
      CopyWith$Query$TopPraises$posts(this, (i) => i);
}

abstract class CopyWith$Query$TopPraises$posts<TRes> {
  factory CopyWith$Query$TopPraises$posts(Query$TopPraises$posts instance,
          TRes Function(Query$TopPraises$posts) then) =
      _CopyWithImpl$Query$TopPraises$posts;

  factory CopyWith$Query$TopPraises$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$TopPraises$posts;

  TRes call({List<Query$TopPraises$posts$edges?>? edges, String? $__typename});
  TRes edges(
      Iterable<Query$TopPraises$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$TopPraises$posts$edges<
                      Query$TopPraises$posts$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$TopPraises$posts<TRes>
    implements CopyWith$Query$TopPraises$posts<TRes> {
  _CopyWithImpl$Query$TopPraises$posts(this._instance, this._then);

  final Query$TopPraises$posts _instance;

  final TRes Function(Query$TopPraises$posts) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$TopPraises$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$TopPraises$posts$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$TopPraises$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$TopPraises$posts$edges<
                          Query$TopPraises$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$TopPraises$posts$edges(e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$TopPraises$posts<TRes>
    implements CopyWith$Query$TopPraises$posts<TRes> {
  _CopyWithStubImpl$Query$TopPraises$posts(this._res);

  TRes _res;

  call({List<Query$TopPraises$posts$edges?>? edges, String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$TopPraises$posts$edges {
  Query$TopPraises$posts$edges({this.node, required this.$__typename});

  @override
  factory Query$TopPraises$posts$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$TopPraises$posts$edgesFromJson(json);

  final Query$TopPraises$posts$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopPraises$posts$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopPraises$posts$edges) ||
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

extension UtilityExtension$Query$TopPraises$posts$edges
    on Query$TopPraises$posts$edges {
  CopyWith$Query$TopPraises$posts$edges<Query$TopPraises$posts$edges>
      get copyWith => CopyWith$Query$TopPraises$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$TopPraises$posts$edges<TRes> {
  factory CopyWith$Query$TopPraises$posts$edges(
          Query$TopPraises$posts$edges instance,
          TRes Function(Query$TopPraises$posts$edges) then) =
      _CopyWithImpl$Query$TopPraises$posts$edges;

  factory CopyWith$Query$TopPraises$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$TopPraises$posts$edges;

  TRes call({Query$TopPraises$posts$edges$node? node, String? $__typename});
  CopyWith$Query$TopPraises$posts$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$TopPraises$posts$edges<TRes>
    implements CopyWith$Query$TopPraises$posts$edges<TRes> {
  _CopyWithImpl$Query$TopPraises$posts$edges(this._instance, this._then);

  final Query$TopPraises$posts$edges _instance;

  final TRes Function(Query$TopPraises$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$TopPraises$posts$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$TopPraises$posts$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$TopPraises$posts$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$TopPraises$posts$edges$node.stub(_then(_instance))
        : CopyWith$Query$TopPraises$posts$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$TopPraises$posts$edges<TRes>
    implements CopyWith$Query$TopPraises$posts$edges<TRes> {
  _CopyWithStubImpl$Query$TopPraises$posts$edges(this._res);

  TRes _res;

  call({Query$TopPraises$posts$edges$node? node, String? $__typename}) => _res;
  CopyWith$Query$TopPraises$posts$edges$node<TRes> get node =>
      CopyWith$Query$TopPraises$posts$edges$node.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$TopPraises$posts$edges$node {
  Query$TopPraises$posts$edges$node(
      {required this.title,
      required this.id,
      required this.content,
      this.hashtags,
      required this.owner,
      required this.$__typename});

  @override
  factory Query$TopPraises$posts$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$TopPraises$posts$edges$nodeFromJson(json);

  final String title;

  final String id;

  final String content;

  final List<Query$TopPraises$posts$edges$node$hashtags>? hashtags;

  final Query$TopPraises$posts$edges$node$owner owner;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$TopPraises$posts$edges$nodeToJson(this);
  int get hashCode {
    final l$title = title;
    final l$id = id;
    final l$content = content;
    final l$hashtags = hashtags;
    final l$owner = owner;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$id,
      l$content,
      l$hashtags == null ? null : Object.hashAll(l$hashtags.map((v) => v)),
      l$owner,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopPraises$posts$edges$node) ||
        runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) return false;
    final l$hashtags = hashtags;
    final lOther$hashtags = other.hashtags;
    if (l$hashtags != null && lOther$hashtags != null) {
      if (l$hashtags.length != lOther$hashtags.length) return false;
      for (int i = 0; i < l$hashtags.length; i++) {
        final l$hashtags$entry = l$hashtags[i];
        final lOther$hashtags$entry = lOther$hashtags[i];
        if (l$hashtags$entry != lOther$hashtags$entry) return false;
      }
    } else if (l$hashtags != lOther$hashtags) {
      return false;
    }

    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$TopPraises$posts$edges$node
    on Query$TopPraises$posts$edges$node {
  CopyWith$Query$TopPraises$posts$edges$node<Query$TopPraises$posts$edges$node>
      get copyWith =>
          CopyWith$Query$TopPraises$posts$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$TopPraises$posts$edges$node<TRes> {
  factory CopyWith$Query$TopPraises$posts$edges$node(
          Query$TopPraises$posts$edges$node instance,
          TRes Function(Query$TopPraises$posts$edges$node) then) =
      _CopyWithImpl$Query$TopPraises$posts$edges$node;

  factory CopyWith$Query$TopPraises$posts$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$TopPraises$posts$edges$node;

  TRes call(
      {String? title,
      String? id,
      String? content,
      List<Query$TopPraises$posts$edges$node$hashtags>? hashtags,
      Query$TopPraises$posts$edges$node$owner? owner,
      String? $__typename});
  TRes hashtags(
      Iterable<Query$TopPraises$posts$edges$node$hashtags>? Function(
              Iterable<
                  CopyWith$Query$TopPraises$posts$edges$node$hashtags<
                      Query$TopPraises$posts$edges$node$hashtags>>?)
          _fn);
  CopyWith$Query$TopPraises$posts$edges$node$owner<TRes> get owner;
}

class _CopyWithImpl$Query$TopPraises$posts$edges$node<TRes>
    implements CopyWith$Query$TopPraises$posts$edges$node<TRes> {
  _CopyWithImpl$Query$TopPraises$posts$edges$node(this._instance, this._then);

  final Query$TopPraises$posts$edges$node _instance;

  final TRes Function(Query$TopPraises$posts$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? id = _undefined,
          Object? content = _undefined,
          Object? hashtags = _undefined,
          Object? owner = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopPraises$posts$edges$node(
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          hashtags: hashtags == _undefined
              ? _instance.hashtags
              : (hashtags as List<Query$TopPraises$posts$edges$node$hashtags>?),
          owner: owner == _undefined || owner == null
              ? _instance.owner
              : (owner as Query$TopPraises$posts$edges$node$owner),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes hashtags(
          Iterable<Query$TopPraises$posts$edges$node$hashtags>? Function(
                  Iterable<
                      CopyWith$Query$TopPraises$posts$edges$node$hashtags<
                          Query$TopPraises$posts$edges$node$hashtags>>?)
              _fn) =>
      call(
          hashtags: _fn(_instance.hashtags?.map((e) =>
              CopyWith$Query$TopPraises$posts$edges$node$hashtags(
                  e, (i) => i)))?.toList());
  CopyWith$Query$TopPraises$posts$edges$node$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$TopPraises$posts$edges$node$owner(
        local$owner, (e) => call(owner: e));
  }
}

class _CopyWithStubImpl$Query$TopPraises$posts$edges$node<TRes>
    implements CopyWith$Query$TopPraises$posts$edges$node<TRes> {
  _CopyWithStubImpl$Query$TopPraises$posts$edges$node(this._res);

  TRes _res;

  call(
          {String? title,
          String? id,
          String? content,
          List<Query$TopPraises$posts$edges$node$hashtags>? hashtags,
          Query$TopPraises$posts$edges$node$owner? owner,
          String? $__typename}) =>
      _res;
  hashtags(_fn) => _res;
  CopyWith$Query$TopPraises$posts$edges$node$owner<TRes> get owner =>
      CopyWith$Query$TopPraises$posts$edges$node$owner.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$TopPraises$posts$edges$node$hashtags {
  Query$TopPraises$posts$edges$node$hashtags(
      {required this.id, required this.title, required this.$__typename});

  @override
  factory Query$TopPraises$posts$edges$node$hashtags.fromJson(
          Map<String, dynamic> json) =>
      _$Query$TopPraises$posts$edges$node$hashtagsFromJson(json);

  final String id;

  final String title;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$TopPraises$posts$edges$node$hashtagsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopPraises$posts$edges$node$hashtags) ||
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

extension UtilityExtension$Query$TopPraises$posts$edges$node$hashtags
    on Query$TopPraises$posts$edges$node$hashtags {
  CopyWith$Query$TopPraises$posts$edges$node$hashtags<
          Query$TopPraises$posts$edges$node$hashtags>
      get copyWith =>
          CopyWith$Query$TopPraises$posts$edges$node$hashtags(this, (i) => i);
}

abstract class CopyWith$Query$TopPraises$posts$edges$node$hashtags<TRes> {
  factory CopyWith$Query$TopPraises$posts$edges$node$hashtags(
          Query$TopPraises$posts$edges$node$hashtags instance,
          TRes Function(Query$TopPraises$posts$edges$node$hashtags) then) =
      _CopyWithImpl$Query$TopPraises$posts$edges$node$hashtags;

  factory CopyWith$Query$TopPraises$posts$edges$node$hashtags.stub(TRes res) =
      _CopyWithStubImpl$Query$TopPraises$posts$edges$node$hashtags;

  TRes call({String? id, String? title, String? $__typename});
}

class _CopyWithImpl$Query$TopPraises$posts$edges$node$hashtags<TRes>
    implements CopyWith$Query$TopPraises$posts$edges$node$hashtags<TRes> {
  _CopyWithImpl$Query$TopPraises$posts$edges$node$hashtags(
      this._instance, this._then);

  final Query$TopPraises$posts$edges$node$hashtags _instance;

  final TRes Function(Query$TopPraises$posts$edges$node$hashtags) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopPraises$posts$edges$node$hashtags(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$TopPraises$posts$edges$node$hashtags<TRes>
    implements CopyWith$Query$TopPraises$posts$edges$node$hashtags<TRes> {
  _CopyWithStubImpl$Query$TopPraises$posts$edges$node$hashtags(this._res);

  TRes _res;

  call({String? id, String? title, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$TopPraises$posts$edges$node$owner {
  Query$TopPraises$posts$edges$node$owner(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Query$TopPraises$posts$edges$node$owner.fromJson(
          Map<String, dynamic> json) =>
      _$Query$TopPraises$posts$edges$node$ownerFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$TopPraises$posts$edges$node$ownerToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopPraises$posts$edges$node$owner) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$TopPraises$posts$edges$node$owner
    on Query$TopPraises$posts$edges$node$owner {
  CopyWith$Query$TopPraises$posts$edges$node$owner<
          Query$TopPraises$posts$edges$node$owner>
      get copyWith =>
          CopyWith$Query$TopPraises$posts$edges$node$owner(this, (i) => i);
}

abstract class CopyWith$Query$TopPraises$posts$edges$node$owner<TRes> {
  factory CopyWith$Query$TopPraises$posts$edges$node$owner(
          Query$TopPraises$posts$edges$node$owner instance,
          TRes Function(Query$TopPraises$posts$edges$node$owner) then) =
      _CopyWithImpl$Query$TopPraises$posts$edges$node$owner;

  factory CopyWith$Query$TopPraises$posts$edges$node$owner.stub(TRes res) =
      _CopyWithStubImpl$Query$TopPraises$posts$edges$node$owner;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$TopPraises$posts$edges$node$owner<TRes>
    implements CopyWith$Query$TopPraises$posts$edges$node$owner<TRes> {
  _CopyWithImpl$Query$TopPraises$posts$edges$node$owner(
      this._instance, this._then);

  final Query$TopPraises$posts$edges$node$owner _instance;

  final TRes Function(Query$TopPraises$posts$edges$node$owner) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopPraises$posts$edges$node$owner(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$TopPraises$posts$edges$node$owner<TRes>
    implements CopyWith$Query$TopPraises$posts$edges$node$owner<TRes> {
  _CopyWithStubImpl$Query$TopPraises$posts$edges$node$owner(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
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
                          FieldNode(
                              name: NameNode(value: 'title'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'content'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'owner'),
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
                                    name: NameNode(value: 'name'),
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
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
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

  final Query$TopLetters$posts$edges$node? node;

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

  TRes call({Query$TopLetters$posts$edges$node? node, String? $__typename});
  CopyWith$Query$TopLetters$posts$edges$node<TRes> get node;
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
              : (node as Query$TopLetters$posts$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$TopLetters$posts$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$TopLetters$posts$edges$node.stub(_then(_instance))
        : CopyWith$Query$TopLetters$posts$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$TopLetters$posts$edges<TRes>
    implements CopyWith$Query$TopLetters$posts$edges<TRes> {
  _CopyWithStubImpl$Query$TopLetters$posts$edges(this._res);

  TRes _res;

  call({Query$TopLetters$posts$edges$node? node, String? $__typename}) => _res;
  CopyWith$Query$TopLetters$posts$edges$node<TRes> get node =>
      CopyWith$Query$TopLetters$posts$edges$node.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$TopLetters$posts$edges$node {
  Query$TopLetters$posts$edges$node(
      {required this.title,
      required this.id,
      required this.content,
      required this.owner,
      required this.$__typename});

  @override
  factory Query$TopLetters$posts$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$TopLetters$posts$edges$nodeFromJson(json);

  final String title;

  final String id;

  final String content;

  final Query$TopLetters$posts$edges$node$owner owner;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$TopLetters$posts$edges$nodeToJson(this);
  int get hashCode {
    final l$title = title;
    final l$id = id;
    final l$content = content;
    final l$owner = owner;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$id, l$content, l$owner, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopLetters$posts$edges$node) ||
        runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) return false;
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$TopLetters$posts$edges$node
    on Query$TopLetters$posts$edges$node {
  CopyWith$Query$TopLetters$posts$edges$node<Query$TopLetters$posts$edges$node>
      get copyWith =>
          CopyWith$Query$TopLetters$posts$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$TopLetters$posts$edges$node<TRes> {
  factory CopyWith$Query$TopLetters$posts$edges$node(
          Query$TopLetters$posts$edges$node instance,
          TRes Function(Query$TopLetters$posts$edges$node) then) =
      _CopyWithImpl$Query$TopLetters$posts$edges$node;

  factory CopyWith$Query$TopLetters$posts$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$TopLetters$posts$edges$node;

  TRes call(
      {String? title,
      String? id,
      String? content,
      Query$TopLetters$posts$edges$node$owner? owner,
      String? $__typename});
  CopyWith$Query$TopLetters$posts$edges$node$owner<TRes> get owner;
}

class _CopyWithImpl$Query$TopLetters$posts$edges$node<TRes>
    implements CopyWith$Query$TopLetters$posts$edges$node<TRes> {
  _CopyWithImpl$Query$TopLetters$posts$edges$node(this._instance, this._then);

  final Query$TopLetters$posts$edges$node _instance;

  final TRes Function(Query$TopLetters$posts$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? id = _undefined,
          Object? content = _undefined,
          Object? owner = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopLetters$posts$edges$node(
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          owner: owner == _undefined || owner == null
              ? _instance.owner
              : (owner as Query$TopLetters$posts$edges$node$owner),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$TopLetters$posts$edges$node$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$TopLetters$posts$edges$node$owner(
        local$owner, (e) => call(owner: e));
  }
}

class _CopyWithStubImpl$Query$TopLetters$posts$edges$node<TRes>
    implements CopyWith$Query$TopLetters$posts$edges$node<TRes> {
  _CopyWithStubImpl$Query$TopLetters$posts$edges$node(this._res);

  TRes _res;

  call(
          {String? title,
          String? id,
          String? content,
          Query$TopLetters$posts$edges$node$owner? owner,
          String? $__typename}) =>
      _res;
  CopyWith$Query$TopLetters$posts$edges$node$owner<TRes> get owner =>
      CopyWith$Query$TopLetters$posts$edges$node$owner.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$TopLetters$posts$edges$node$owner {
  Query$TopLetters$posts$edges$node$owner(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Query$TopLetters$posts$edges$node$owner.fromJson(
          Map<String, dynamic> json) =>
      _$Query$TopLetters$posts$edges$node$ownerFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$TopLetters$posts$edges$node$ownerToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopLetters$posts$edges$node$owner) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$TopLetters$posts$edges$node$owner
    on Query$TopLetters$posts$edges$node$owner {
  CopyWith$Query$TopLetters$posts$edges$node$owner<
          Query$TopLetters$posts$edges$node$owner>
      get copyWith =>
          CopyWith$Query$TopLetters$posts$edges$node$owner(this, (i) => i);
}

abstract class CopyWith$Query$TopLetters$posts$edges$node$owner<TRes> {
  factory CopyWith$Query$TopLetters$posts$edges$node$owner(
          Query$TopLetters$posts$edges$node$owner instance,
          TRes Function(Query$TopLetters$posts$edges$node$owner) then) =
      _CopyWithImpl$Query$TopLetters$posts$edges$node$owner;

  factory CopyWith$Query$TopLetters$posts$edges$node$owner.stub(TRes res) =
      _CopyWithStubImpl$Query$TopLetters$posts$edges$node$owner;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$TopLetters$posts$edges$node$owner<TRes>
    implements CopyWith$Query$TopLetters$posts$edges$node$owner<TRes> {
  _CopyWithImpl$Query$TopLetters$posts$edges$node$owner(
      this._instance, this._then);

  final Query$TopLetters$posts$edges$node$owner _instance;

  final TRes Function(Query$TopLetters$posts$edges$node$owner) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopLetters$posts$edges$node$owner(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$TopLetters$posts$edges$node$owner<TRes>
    implements CopyWith$Query$TopLetters$posts$edges$node$owner<TRes> {
  _CopyWithStubImpl$Query$TopLetters$posts$edges$node$owner(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}
