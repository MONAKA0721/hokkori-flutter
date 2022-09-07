import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'home_page.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$Posts {
  Query$Posts({required this.posts, required this.$__typename});

  @override
  factory Query$Posts.fromJson(Map<String, dynamic> json) =>
      _$Query$PostsFromJson(json);

  final Query$Posts$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$PostsToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Posts) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$Posts on Query$Posts {
  CopyWith$Query$Posts<Query$Posts> get copyWith =>
      CopyWith$Query$Posts(this, (i) => i);
}

abstract class CopyWith$Query$Posts<TRes> {
  factory CopyWith$Query$Posts(
          Query$Posts instance, TRes Function(Query$Posts) then) =
      _CopyWithImpl$Query$Posts;

  factory CopyWith$Query$Posts.stub(TRes res) = _CopyWithStubImpl$Query$Posts;

  TRes call({Query$Posts$posts? posts, String? $__typename});
  CopyWith$Query$Posts$posts<TRes> get posts;
}

class _CopyWithImpl$Query$Posts<TRes> implements CopyWith$Query$Posts<TRes> {
  _CopyWithImpl$Query$Posts(this._instance, this._then);

  final Query$Posts _instance;

  final TRes Function(Query$Posts) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Posts(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$Posts$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$Posts$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$Posts$posts(local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$Posts<TRes>
    implements CopyWith$Query$Posts<TRes> {
  _CopyWithStubImpl$Query$Posts(this._res);

  TRes _res;

  call({Query$Posts$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$Posts$posts<TRes> get posts =>
      CopyWith$Query$Posts$posts.stub(_res);
}

const documentNodeQueryPosts = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Posts'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'posts'),
            alias: null,
            arguments: [
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
Query$Posts _parserFn$Query$Posts(Map<String, dynamic> data) =>
    Query$Posts.fromJson(data);

class Options$Query$Posts extends graphql.QueryOptions<Query$Posts> {
  Options$Query$Posts(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryPosts,
            parserFn: _parserFn$Query$Posts);
}

class WatchOptions$Query$Posts extends graphql.WatchQueryOptions<Query$Posts> {
  WatchOptions$Query$Posts(
      {String? operationName,
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
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryPosts,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$Posts);
}

class FetchMoreOptions$Query$Posts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Posts({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: documentNodeQueryPosts);
}

extension ClientExtension$Query$Posts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Posts>> query$Posts(
          [Options$Query$Posts? options]) async =>
      await this.query(options ?? Options$Query$Posts());
  graphql.ObservableQuery<Query$Posts> watchQuery$Posts(
          [WatchOptions$Query$Posts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Posts());
  void writeQuery$Posts({required Query$Posts data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryPosts)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$Posts? readQuery$Posts({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryPosts)),
        optimistic: optimistic);
    return result == null ? null : Query$Posts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Posts> useQuery$Posts(
        [Options$Query$Posts? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Posts());
graphql.ObservableQuery<Query$Posts> useWatchQuery$Posts(
        [WatchOptions$Query$Posts? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Posts());

class Query$Posts$Widget extends graphql_flutter.Query<Query$Posts> {
  Query$Posts$Widget(
      {widgets.Key? key,
      Options$Query$Posts? options,
      required graphql_flutter.QueryBuilder<Query$Posts> builder})
      : super(
            key: key,
            options: options ?? Options$Query$Posts(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$Posts$posts {
  Query$Posts$posts({this.edges, required this.$__typename});

  @override
  factory Query$Posts$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$Posts$postsFromJson(json);

  final List<Query$Posts$posts$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Posts$postsToJson(this);
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
    if (!(other is Query$Posts$posts) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$Posts$posts on Query$Posts$posts {
  CopyWith$Query$Posts$posts<Query$Posts$posts> get copyWith =>
      CopyWith$Query$Posts$posts(this, (i) => i);
}

abstract class CopyWith$Query$Posts$posts<TRes> {
  factory CopyWith$Query$Posts$posts(
          Query$Posts$posts instance, TRes Function(Query$Posts$posts) then) =
      _CopyWithImpl$Query$Posts$posts;

  factory CopyWith$Query$Posts$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$Posts$posts;

  TRes call({List<Query$Posts$posts$edges?>? edges, String? $__typename});
  TRes edges(
      Iterable<Query$Posts$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$Posts$posts$edges<Query$Posts$posts$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Posts$posts<TRes>
    implements CopyWith$Query$Posts$posts<TRes> {
  _CopyWithImpl$Query$Posts$posts(this._instance, this._then);

  final Query$Posts$posts _instance;

  final TRes Function(Query$Posts$posts) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Posts$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$Posts$posts$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$Posts$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Posts$posts$edges<
                          Query$Posts$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Posts$posts$edges(e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$Posts$posts<TRes>
    implements CopyWith$Query$Posts$posts<TRes> {
  _CopyWithStubImpl$Query$Posts$posts(this._res);

  TRes _res;

  call({List<Query$Posts$posts$edges?>? edges, String? $__typename}) => _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$Posts$posts$edges {
  Query$Posts$posts$edges({this.node, required this.$__typename});

  @override
  factory Query$Posts$posts$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$Posts$posts$edgesFromJson(json);

  final Query$Posts$posts$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Posts$posts$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Posts$posts$edges) || runtimeType != other.runtimeType)
      return false;
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Posts$posts$edges on Query$Posts$posts$edges {
  CopyWith$Query$Posts$posts$edges<Query$Posts$posts$edges> get copyWith =>
      CopyWith$Query$Posts$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$Posts$posts$edges<TRes> {
  factory CopyWith$Query$Posts$posts$edges(Query$Posts$posts$edges instance,
          TRes Function(Query$Posts$posts$edges) then) =
      _CopyWithImpl$Query$Posts$posts$edges;

  factory CopyWith$Query$Posts$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Posts$posts$edges;

  TRes call({Query$Posts$posts$edges$node? node, String? $__typename});
  CopyWith$Query$Posts$posts$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Posts$posts$edges<TRes>
    implements CopyWith$Query$Posts$posts$edges<TRes> {
  _CopyWithImpl$Query$Posts$posts$edges(this._instance, this._then);

  final Query$Posts$posts$edges _instance;

  final TRes Function(Query$Posts$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Posts$posts$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$Posts$posts$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$Posts$posts$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Posts$posts$edges$node.stub(_then(_instance))
        : CopyWith$Query$Posts$posts$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Posts$posts$edges<TRes>
    implements CopyWith$Query$Posts$posts$edges<TRes> {
  _CopyWithStubImpl$Query$Posts$posts$edges(this._res);

  TRes _res;

  call({Query$Posts$posts$edges$node? node, String? $__typename}) => _res;
  CopyWith$Query$Posts$posts$edges$node<TRes> get node =>
      CopyWith$Query$Posts$posts$edges$node.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$Posts$posts$edges$node {
  Query$Posts$posts$edges$node(
      {required this.title,
      required this.id,
      required this.content,
      required this.owner,
      required this.$__typename});

  @override
  factory Query$Posts$posts$edges$node.fromJson(Map<String, dynamic> json) =>
      _$Query$Posts$posts$edges$nodeFromJson(json);

  final String title;

  final String id;

  final String content;

  final Query$Posts$posts$edges$node$owner owner;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Posts$posts$edges$nodeToJson(this);
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
    if (!(other is Query$Posts$posts$edges$node) ||
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

extension UtilityExtension$Query$Posts$posts$edges$node
    on Query$Posts$posts$edges$node {
  CopyWith$Query$Posts$posts$edges$node<Query$Posts$posts$edges$node>
      get copyWith => CopyWith$Query$Posts$posts$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$Posts$posts$edges$node<TRes> {
  factory CopyWith$Query$Posts$posts$edges$node(
          Query$Posts$posts$edges$node instance,
          TRes Function(Query$Posts$posts$edges$node) then) =
      _CopyWithImpl$Query$Posts$posts$edges$node;

  factory CopyWith$Query$Posts$posts$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Posts$posts$edges$node;

  TRes call(
      {String? title,
      String? id,
      String? content,
      Query$Posts$posts$edges$node$owner? owner,
      String? $__typename});
  CopyWith$Query$Posts$posts$edges$node$owner<TRes> get owner;
}

class _CopyWithImpl$Query$Posts$posts$edges$node<TRes>
    implements CopyWith$Query$Posts$posts$edges$node<TRes> {
  _CopyWithImpl$Query$Posts$posts$edges$node(this._instance, this._then);

  final Query$Posts$posts$edges$node _instance;

  final TRes Function(Query$Posts$posts$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? id = _undefined,
          Object? content = _undefined,
          Object? owner = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$Posts$posts$edges$node(
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          owner: owner == _undefined || owner == null
              ? _instance.owner
              : (owner as Query$Posts$posts$edges$node$owner),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$Posts$posts$edges$node$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$Posts$posts$edges$node$owner(
        local$owner, (e) => call(owner: e));
  }
}

class _CopyWithStubImpl$Query$Posts$posts$edges$node<TRes>
    implements CopyWith$Query$Posts$posts$edges$node<TRes> {
  _CopyWithStubImpl$Query$Posts$posts$edges$node(this._res);

  TRes _res;

  call(
          {String? title,
          String? id,
          String? content,
          Query$Posts$posts$edges$node$owner? owner,
          String? $__typename}) =>
      _res;
  CopyWith$Query$Posts$posts$edges$node$owner<TRes> get owner =>
      CopyWith$Query$Posts$posts$edges$node$owner.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$Posts$posts$edges$node$owner {
  Query$Posts$posts$edges$node$owner(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Query$Posts$posts$edges$node$owner.fromJson(
          Map<String, dynamic> json) =>
      _$Query$Posts$posts$edges$node$ownerFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$Posts$posts$edges$node$ownerToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Posts$posts$edges$node$owner) ||
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

extension UtilityExtension$Query$Posts$posts$edges$node$owner
    on Query$Posts$posts$edges$node$owner {
  CopyWith$Query$Posts$posts$edges$node$owner<
          Query$Posts$posts$edges$node$owner>
      get copyWith =>
          CopyWith$Query$Posts$posts$edges$node$owner(this, (i) => i);
}

abstract class CopyWith$Query$Posts$posts$edges$node$owner<TRes> {
  factory CopyWith$Query$Posts$posts$edges$node$owner(
          Query$Posts$posts$edges$node$owner instance,
          TRes Function(Query$Posts$posts$edges$node$owner) then) =
      _CopyWithImpl$Query$Posts$posts$edges$node$owner;

  factory CopyWith$Query$Posts$posts$edges$node$owner.stub(TRes res) =
      _CopyWithStubImpl$Query$Posts$posts$edges$node$owner;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$Posts$posts$edges$node$owner<TRes>
    implements CopyWith$Query$Posts$posts$edges$node$owner<TRes> {
  _CopyWithImpl$Query$Posts$posts$edges$node$owner(this._instance, this._then);

  final Query$Posts$posts$edges$node$owner _instance;

  final TRes Function(Query$Posts$posts$edges$node$owner) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$Posts$posts$edges$node$owner(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Posts$posts$edges$node$owner<TRes>
    implements CopyWith$Query$Posts$posts$edges$node$owner<TRes> {
  _CopyWithStubImpl$Query$Posts$posts$edges$node$owner(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}
