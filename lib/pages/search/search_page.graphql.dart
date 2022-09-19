import '../common/common.graphql.dart';
import '../home/home_page.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'search_page.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$TopPraises {
  Variables$Query$TopPraises({required this.first});

  @override
  factory Variables$Query$TopPraises.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$TopPraisesFromJson(json);

  final int first;

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
      first: first == _undefined || first == null
          ? _instance.first
          : (first as int)));
}

class _CopyWithStubImpl$Variables$Query$TopPraises<TRes>
    implements CopyWith$Variables$Query$TopPraises<TRes> {
  _CopyWithStubImpl$Variables$Query$TopPraises(this._res);

  TRes _res;

  call({int? first}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$TopPraises {
  Query$TopPraises({required this.topPraises, required this.$__typename});

  @override
  factory Query$TopPraises.fromJson(Map<String, dynamic> json) =>
      _$Query$TopPraisesFromJson(json);

  final List<Query$TopPraises$topPraises?> topPraises;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopPraisesToJson(this);
  int get hashCode {
    final l$topPraises = topPraises;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$topPraises.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopPraises) || runtimeType != other.runtimeType)
      return false;
    final l$topPraises = topPraises;
    final lOther$topPraises = other.topPraises;
    if (l$topPraises.length != lOther$topPraises.length) return false;
    for (int i = 0; i < l$topPraises.length; i++) {
      final l$topPraises$entry = l$topPraises[i];
      final lOther$topPraises$entry = lOther$topPraises[i];
      if (l$topPraises$entry != lOther$topPraises$entry) return false;
    }

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

  TRes call(
      {List<Query$TopPraises$topPraises?>? topPraises, String? $__typename});
  TRes topPraises(
      Iterable<Query$TopPraises$topPraises?> Function(
              Iterable<
                  CopyWith$Query$TopPraises$topPraises<
                      Query$TopPraises$topPraises>?>)
          _fn);
}

class _CopyWithImpl$Query$TopPraises<TRes>
    implements CopyWith$Query$TopPraises<TRes> {
  _CopyWithImpl$Query$TopPraises(this._instance, this._then);

  final Query$TopPraises _instance;

  final TRes Function(Query$TopPraises) _then;

  static const _undefined = {};

  TRes call(
          {Object? topPraises = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopPraises(
          topPraises: topPraises == _undefined || topPraises == null
              ? _instance.topPraises
              : (topPraises as List<Query$TopPraises$topPraises?>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes topPraises(
          Iterable<Query$TopPraises$topPraises?> Function(
                  Iterable<
                      CopyWith$Query$TopPraises$topPraises<
                          Query$TopPraises$topPraises>?>)
              _fn) =>
      call(
          topPraises: _fn(_instance.topPraises.map((e) => e == null
              ? null
              : CopyWith$Query$TopPraises$topPraises(e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$TopPraises<TRes>
    implements CopyWith$Query$TopPraises<TRes> {
  _CopyWithStubImpl$Query$TopPraises(this._res);

  TRes _res;

  call({List<Query$TopPraises$topPraises?>? topPraises, String? $__typename}) =>
      _res;
  topPraises(_fn) => _res;
}

const documentNodeQueryTopPraises = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TopPraises'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'topPraises'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first')))
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
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'count'),
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
Query$TopPraises _parserFn$Query$TopPraises(Map<String, dynamic> data) =>
    Query$TopPraises.fromJson(data);

class Options$Query$TopPraises extends graphql.QueryOptions<Query$TopPraises> {
  Options$Query$TopPraises(
      {String? operationName,
      required Variables$Query$TopPraises variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
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
      required Variables$Query$TopPraises variables,
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
      required Variables$Query$TopPraises variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryTopPraises);
}

extension ClientExtension$Query$TopPraises on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TopPraises>> query$TopPraises(
          Options$Query$TopPraises options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$TopPraises> watchQuery$TopPraises(
          WatchOptions$Query$TopPraises options) =>
      this.watchQuery(options);
  void writeQuery$TopPraises(
          {required Query$TopPraises data,
          required Variables$Query$TopPraises variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryTopPraises),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$TopPraises? readQuery$TopPraises(
      {required Variables$Query$TopPraises variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryTopPraises),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$TopPraises.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TopPraises> useQuery$TopPraises(
        Options$Query$TopPraises options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TopPraises> useWatchQuery$TopPraises(
        WatchOptions$Query$TopPraises options) =>
    graphql_flutter.useWatchQuery(options);

class Query$TopPraises$Widget extends graphql_flutter.Query<Query$TopPraises> {
  Query$TopPraises$Widget(
      {widgets.Key? key,
      required Options$Query$TopPraises options,
      required graphql_flutter.QueryBuilder<Query$TopPraises> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$TopPraises$topPraises {
  Query$TopPraises$topPraises(
      {required this.id,
      required this.title,
      required this.count,
      required this.$__typename});

  @override
  factory Query$TopPraises$topPraises.fromJson(Map<String, dynamic> json) =>
      _$Query$TopPraises$topPraisesFromJson(json);

  final String id;

  final String title;

  final int count;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$TopPraises$topPraisesToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$title, l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$TopPraises$topPraises) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$TopPraises$topPraises
    on Query$TopPraises$topPraises {
  CopyWith$Query$TopPraises$topPraises<Query$TopPraises$topPraises>
      get copyWith => CopyWith$Query$TopPraises$topPraises(this, (i) => i);
}

abstract class CopyWith$Query$TopPraises$topPraises<TRes> {
  factory CopyWith$Query$TopPraises$topPraises(
          Query$TopPraises$topPraises instance,
          TRes Function(Query$TopPraises$topPraises) then) =
      _CopyWithImpl$Query$TopPraises$topPraises;

  factory CopyWith$Query$TopPraises$topPraises.stub(TRes res) =
      _CopyWithStubImpl$Query$TopPraises$topPraises;

  TRes call({String? id, String? title, int? count, String? $__typename});
}

class _CopyWithImpl$Query$TopPraises$topPraises<TRes>
    implements CopyWith$Query$TopPraises$topPraises<TRes> {
  _CopyWithImpl$Query$TopPraises$topPraises(this._instance, this._then);

  final Query$TopPraises$topPraises _instance;

  final TRes Function(Query$TopPraises$topPraises) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? count = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopPraises$topPraises(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          count: count == _undefined || count == null
              ? _instance.count
              : (count as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$TopPraises$topPraises<TRes>
    implements CopyWith$Query$TopPraises$topPraises<TRes> {
  _CopyWithStubImpl$Query$TopPraises$topPraises(this._res);

  TRes _res;

  call({String? id, String? title, int? count, String? $__typename}) => _res;
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

@JsonSerializable(explicitToJson: true)
class Variables$Query$SearchCategories {
  Variables$Query$SearchCategories({this.searchText});

  @override
  factory Variables$Query$SearchCategories.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Query$SearchCategoriesFromJson(json);

  final String? searchText;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$SearchCategoriesToJson(this);
  int get hashCode {
    final l$searchText = searchText;
    return Object.hashAll([l$searchText]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$SearchCategories) ||
        runtimeType != other.runtimeType) return false;
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) return false;
    return true;
  }

  CopyWith$Variables$Query$SearchCategories<Variables$Query$SearchCategories>
      get copyWith => CopyWith$Variables$Query$SearchCategories(this, (i) => i);
}

abstract class CopyWith$Variables$Query$SearchCategories<TRes> {
  factory CopyWith$Variables$Query$SearchCategories(
          Variables$Query$SearchCategories instance,
          TRes Function(Variables$Query$SearchCategories) then) =
      _CopyWithImpl$Variables$Query$SearchCategories;

  factory CopyWith$Variables$Query$SearchCategories.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchCategories;

  TRes call({String? searchText});
}

class _CopyWithImpl$Variables$Query$SearchCategories<TRes>
    implements CopyWith$Variables$Query$SearchCategories<TRes> {
  _CopyWithImpl$Variables$Query$SearchCategories(this._instance, this._then);

  final Variables$Query$SearchCategories _instance;

  final TRes Function(Variables$Query$SearchCategories) _then;

  static const _undefined = {};

  TRes call({Object? searchText = _undefined}) =>
      _then(Variables$Query$SearchCategories(
          searchText: searchText == _undefined
              ? _instance.searchText
              : (searchText as String?)));
}

class _CopyWithStubImpl$Variables$Query$SearchCategories<TRes>
    implements CopyWith$Variables$Query$SearchCategories<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchCategories(this._res);

  TRes _res;

  call({String? searchText}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCategories {
  Query$SearchCategories({required this.categories, required this.$__typename});

  @override
  factory Query$SearchCategories.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchCategoriesFromJson(json);

  final Query$SearchCategories$categories categories;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchCategoriesToJson(this);
  int get hashCode {
    final l$categories = categories;
    final l$$__typename = $__typename;
    return Object.hashAll([l$categories, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchCategories) || runtimeType != other.runtimeType)
      return false;
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != lOther$categories) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchCategories on Query$SearchCategories {
  CopyWith$Query$SearchCategories<Query$SearchCategories> get copyWith =>
      CopyWith$Query$SearchCategories(this, (i) => i);
}

abstract class CopyWith$Query$SearchCategories<TRes> {
  factory CopyWith$Query$SearchCategories(Query$SearchCategories instance,
          TRes Function(Query$SearchCategories) then) =
      _CopyWithImpl$Query$SearchCategories;

  factory CopyWith$Query$SearchCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCategories;

  TRes call(
      {Query$SearchCategories$categories? categories, String? $__typename});
  CopyWith$Query$SearchCategories$categories<TRes> get categories;
}

class _CopyWithImpl$Query$SearchCategories<TRes>
    implements CopyWith$Query$SearchCategories<TRes> {
  _CopyWithImpl$Query$SearchCategories(this._instance, this._then);

  final Query$SearchCategories _instance;

  final TRes Function(Query$SearchCategories) _then;

  static const _undefined = {};

  TRes call(
          {Object? categories = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchCategories(
          categories: categories == _undefined || categories == null
              ? _instance.categories
              : (categories as Query$SearchCategories$categories),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchCategories$categories<TRes> get categories {
    final local$categories = _instance.categories;
    return CopyWith$Query$SearchCategories$categories(
        local$categories, (e) => call(categories: e));
  }
}

class _CopyWithStubImpl$Query$SearchCategories<TRes>
    implements CopyWith$Query$SearchCategories<TRes> {
  _CopyWithStubImpl$Query$SearchCategories(this._res);

  TRes _res;

  call({Query$SearchCategories$categories? categories, String? $__typename}) =>
      _res;
  CopyWith$Query$SearchCategories$categories<TRes> get categories =>
      CopyWith$Query$SearchCategories$categories.stub(_res);
}

const documentNodeQuerySearchCategories = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchCategories'),
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
            name: NameNode(value: 'categories'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'nameContainsFold'),
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
]);
Query$SearchCategories _parserFn$Query$SearchCategories(
        Map<String, dynamic> data) =>
    Query$SearchCategories.fromJson(data);

class Options$Query$SearchCategories
    extends graphql.QueryOptions<Query$SearchCategories> {
  Options$Query$SearchCategories(
      {String? operationName,
      Variables$Query$SearchCategories? variables,
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
            document: documentNodeQuerySearchCategories,
            parserFn: _parserFn$Query$SearchCategories);
}

class WatchOptions$Query$SearchCategories
    extends graphql.WatchQueryOptions<Query$SearchCategories> {
  WatchOptions$Query$SearchCategories(
      {String? operationName,
      Variables$Query$SearchCategories? variables,
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
            document: documentNodeQuerySearchCategories,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$SearchCategories);
}

class FetchMoreOptions$Query$SearchCategories extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchCategories(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$SearchCategories? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerySearchCategories);
}

extension ClientExtension$Query$SearchCategories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchCategories>> query$SearchCategories(
          [Options$Query$SearchCategories? options]) async =>
      await this.query(options ?? Options$Query$SearchCategories());
  graphql.ObservableQuery<Query$SearchCategories> watchQuery$SearchCategories(
          [WatchOptions$Query$SearchCategories? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchCategories());
  void writeQuery$SearchCategories(
          {required Query$SearchCategories data,
          Variables$Query$SearchCategories? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQuerySearchCategories),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$SearchCategories? readQuery$SearchCategories(
      {Variables$Query$SearchCategories? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerySearchCategories),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$SearchCategories.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchCategories>
    useQuery$SearchCategories([Options$Query$SearchCategories? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$SearchCategories());
graphql.ObservableQuery<Query$SearchCategories> useWatchQuery$SearchCategories(
        [WatchOptions$Query$SearchCategories? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$SearchCategories());

class Query$SearchCategories$Widget
    extends graphql_flutter.Query<Query$SearchCategories> {
  Query$SearchCategories$Widget(
      {widgets.Key? key,
      Options$Query$SearchCategories? options,
      required graphql_flutter.QueryBuilder<Query$SearchCategories> builder})
      : super(
            key: key,
            options: options ?? Options$Query$SearchCategories(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCategories$categories {
  Query$SearchCategories$categories({this.edges, required this.$__typename});

  @override
  factory Query$SearchCategories$categories.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchCategories$categoriesFromJson(json);

  final List<Query$SearchCategories$categories$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchCategories$categoriesToJson(this);
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
    if (!(other is Query$SearchCategories$categories) ||
        runtimeType != other.runtimeType) return false;
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

extension UtilityExtension$Query$SearchCategories$categories
    on Query$SearchCategories$categories {
  CopyWith$Query$SearchCategories$categories<Query$SearchCategories$categories>
      get copyWith =>
          CopyWith$Query$SearchCategories$categories(this, (i) => i);
}

abstract class CopyWith$Query$SearchCategories$categories<TRes> {
  factory CopyWith$Query$SearchCategories$categories(
          Query$SearchCategories$categories instance,
          TRes Function(Query$SearchCategories$categories) then) =
      _CopyWithImpl$Query$SearchCategories$categories;

  factory CopyWith$Query$SearchCategories$categories.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCategories$categories;

  TRes call(
      {List<Query$SearchCategories$categories$edges?>? edges,
      String? $__typename});
  TRes edges(
      Iterable<Query$SearchCategories$categories$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchCategories$categories$edges<
                      Query$SearchCategories$categories$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchCategories$categories<TRes>
    implements CopyWith$Query$SearchCategories$categories<TRes> {
  _CopyWithImpl$Query$SearchCategories$categories(this._instance, this._then);

  final Query$SearchCategories$categories _instance;

  final TRes Function(Query$SearchCategories$categories) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchCategories$categories(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$SearchCategories$categories$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$SearchCategories$categories$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchCategories$categories$edges<
                          Query$SearchCategories$categories$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchCategories$categories$edges(
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$SearchCategories$categories<TRes>
    implements CopyWith$Query$SearchCategories$categories<TRes> {
  _CopyWithStubImpl$Query$SearchCategories$categories(this._res);

  TRes _res;

  call(
          {List<Query$SearchCategories$categories$edges?>? edges,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCategories$categories$edges {
  Query$SearchCategories$categories$edges(
      {this.node, required this.$__typename});

  @override
  factory Query$SearchCategories$categories$edges.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchCategories$categories$edgesFromJson(json);

  final Query$SearchCategories$categories$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchCategories$categories$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchCategories$categories$edges) ||
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

extension UtilityExtension$Query$SearchCategories$categories$edges
    on Query$SearchCategories$categories$edges {
  CopyWith$Query$SearchCategories$categories$edges<
          Query$SearchCategories$categories$edges>
      get copyWith =>
          CopyWith$Query$SearchCategories$categories$edges(this, (i) => i);
}

abstract class CopyWith$Query$SearchCategories$categories$edges<TRes> {
  factory CopyWith$Query$SearchCategories$categories$edges(
          Query$SearchCategories$categories$edges instance,
          TRes Function(Query$SearchCategories$categories$edges) then) =
      _CopyWithImpl$Query$SearchCategories$categories$edges;

  factory CopyWith$Query$SearchCategories$categories$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCategories$categories$edges;

  TRes call(
      {Query$SearchCategories$categories$edges$node? node,
      String? $__typename});
  CopyWith$Query$SearchCategories$categories$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchCategories$categories$edges<TRes>
    implements CopyWith$Query$SearchCategories$categories$edges<TRes> {
  _CopyWithImpl$Query$SearchCategories$categories$edges(
      this._instance, this._then);

  final Query$SearchCategories$categories$edges _instance;

  final TRes Function(Query$SearchCategories$categories$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchCategories$categories$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$SearchCategories$categories$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchCategories$categories$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$SearchCategories$categories$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$SearchCategories$categories$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SearchCategories$categories$edges<TRes>
    implements CopyWith$Query$SearchCategories$categories$edges<TRes> {
  _CopyWithStubImpl$Query$SearchCategories$categories$edges(this._res);

  TRes _res;

  call(
          {Query$SearchCategories$categories$edges$node? node,
          String? $__typename}) =>
      _res;
  CopyWith$Query$SearchCategories$categories$edges$node<TRes> get node =>
      CopyWith$Query$SearchCategories$categories$edges$node.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCategories$categories$edges$node {
  Query$SearchCategories$categories$edges$node(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Query$SearchCategories$categories$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchCategories$categories$edges$nodeFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchCategories$categories$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchCategories$categories$edges$node) ||
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

extension UtilityExtension$Query$SearchCategories$categories$edges$node
    on Query$SearchCategories$categories$edges$node {
  CopyWith$Query$SearchCategories$categories$edges$node<
          Query$SearchCategories$categories$edges$node>
      get copyWith =>
          CopyWith$Query$SearchCategories$categories$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$SearchCategories$categories$edges$node<TRes> {
  factory CopyWith$Query$SearchCategories$categories$edges$node(
          Query$SearchCategories$categories$edges$node instance,
          TRes Function(Query$SearchCategories$categories$edges$node) then) =
      _CopyWithImpl$Query$SearchCategories$categories$edges$node;

  factory CopyWith$Query$SearchCategories$categories$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCategories$categories$edges$node;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$SearchCategories$categories$edges$node<TRes>
    implements CopyWith$Query$SearchCategories$categories$edges$node<TRes> {
  _CopyWithImpl$Query$SearchCategories$categories$edges$node(
      this._instance, this._then);

  final Query$SearchCategories$categories$edges$node _instance;

  final TRes Function(Query$SearchCategories$categories$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchCategories$categories$edges$node(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchCategories$categories$edges$node<TRes>
    implements CopyWith$Query$SearchCategories$categories$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchCategories$categories$edges$node(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$CategoryLetters {
  Variables$Query$CategoryLetters({this.categoryID, this.first});

  @override
  factory Variables$Query$CategoryLetters.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$CategoryLettersFromJson(json);

  final String? categoryID;

  final int? first;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$CategoryLettersToJson(this);
  int get hashCode {
    final l$categoryID = categoryID;
    final l$first = first;
    return Object.hashAll([l$categoryID, l$first]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$CategoryLetters) ||
        runtimeType != other.runtimeType) return false;
    final l$categoryID = categoryID;
    final lOther$categoryID = other.categoryID;
    if (l$categoryID != lOther$categoryID) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    return true;
  }

  CopyWith$Variables$Query$CategoryLetters<Variables$Query$CategoryLetters>
      get copyWith => CopyWith$Variables$Query$CategoryLetters(this, (i) => i);
}

abstract class CopyWith$Variables$Query$CategoryLetters<TRes> {
  factory CopyWith$Variables$Query$CategoryLetters(
          Variables$Query$CategoryLetters instance,
          TRes Function(Variables$Query$CategoryLetters) then) =
      _CopyWithImpl$Variables$Query$CategoryLetters;

  factory CopyWith$Variables$Query$CategoryLetters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CategoryLetters;

  TRes call({String? categoryID, int? first});
}

class _CopyWithImpl$Variables$Query$CategoryLetters<TRes>
    implements CopyWith$Variables$Query$CategoryLetters<TRes> {
  _CopyWithImpl$Variables$Query$CategoryLetters(this._instance, this._then);

  final Variables$Query$CategoryLetters _instance;

  final TRes Function(Variables$Query$CategoryLetters) _then;

  static const _undefined = {};

  TRes call({Object? categoryID = _undefined, Object? first = _undefined}) =>
      _then(Variables$Query$CategoryLetters(
          categoryID: categoryID == _undefined
              ? _instance.categoryID
              : (categoryID as String?),
          first: first == _undefined ? _instance.first : (first as int?)));
}

class _CopyWithStubImpl$Variables$Query$CategoryLetters<TRes>
    implements CopyWith$Variables$Query$CategoryLetters<TRes> {
  _CopyWithStubImpl$Variables$Query$CategoryLetters(this._res);

  TRes _res;

  call({String? categoryID, int? first}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$CategoryLetters {
  Query$CategoryLetters({required this.posts, required this.$__typename});

  @override
  factory Query$CategoryLetters.fromJson(Map<String, dynamic> json) =>
      _$Query$CategoryLettersFromJson(json);

  final Query$CategoryLetters$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$CategoryLettersToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$CategoryLetters) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$CategoryLetters on Query$CategoryLetters {
  CopyWith$Query$CategoryLetters<Query$CategoryLetters> get copyWith =>
      CopyWith$Query$CategoryLetters(this, (i) => i);
}

abstract class CopyWith$Query$CategoryLetters<TRes> {
  factory CopyWith$Query$CategoryLetters(Query$CategoryLetters instance,
          TRes Function(Query$CategoryLetters) then) =
      _CopyWithImpl$Query$CategoryLetters;

  factory CopyWith$Query$CategoryLetters.stub(TRes res) =
      _CopyWithStubImpl$Query$CategoryLetters;

  TRes call({Query$CategoryLetters$posts? posts, String? $__typename});
  CopyWith$Query$CategoryLetters$posts<TRes> get posts;
}

class _CopyWithImpl$Query$CategoryLetters<TRes>
    implements CopyWith$Query$CategoryLetters<TRes> {
  _CopyWithImpl$Query$CategoryLetters(this._instance, this._then);

  final Query$CategoryLetters _instance;

  final TRes Function(Query$CategoryLetters) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$CategoryLetters(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$CategoryLetters$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$CategoryLetters$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$CategoryLetters$posts(
        local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$CategoryLetters<TRes>
    implements CopyWith$Query$CategoryLetters<TRes> {
  _CopyWithStubImpl$Query$CategoryLetters(this._res);

  TRes _res;

  call({Query$CategoryLetters$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$CategoryLetters$posts<TRes> get posts =>
      CopyWith$Query$CategoryLetters$posts.stub(_res);
}

const documentNodeQueryCategoryLetters = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CategoryLetters'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'categoryID')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
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
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'type'),
                        value: EnumValueNode(name: NameNode(value: 'letter'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'hasCategoryWith'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'id'),
                              value: VariableNode(
                                  name: NameNode(value: 'categoryID')))
                        ]))
                  ])),
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
Query$CategoryLetters _parserFn$Query$CategoryLetters(
        Map<String, dynamic> data) =>
    Query$CategoryLetters.fromJson(data);

class Options$Query$CategoryLetters
    extends graphql.QueryOptions<Query$CategoryLetters> {
  Options$Query$CategoryLetters(
      {String? operationName,
      Variables$Query$CategoryLetters? variables,
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
            document: documentNodeQueryCategoryLetters,
            parserFn: _parserFn$Query$CategoryLetters);
}

class WatchOptions$Query$CategoryLetters
    extends graphql.WatchQueryOptions<Query$CategoryLetters> {
  WatchOptions$Query$CategoryLetters(
      {String? operationName,
      Variables$Query$CategoryLetters? variables,
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
            document: documentNodeQueryCategoryLetters,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$CategoryLetters);
}

class FetchMoreOptions$Query$CategoryLetters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CategoryLetters(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$CategoryLetters? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryCategoryLetters);
}

extension ClientExtension$Query$CategoryLetters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CategoryLetters>> query$CategoryLetters(
          [Options$Query$CategoryLetters? options]) async =>
      await this.query(options ?? Options$Query$CategoryLetters());
  graphql.ObservableQuery<Query$CategoryLetters> watchQuery$CategoryLetters(
          [WatchOptions$Query$CategoryLetters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CategoryLetters());
  void writeQuery$CategoryLetters(
          {required Query$CategoryLetters data,
          Variables$Query$CategoryLetters? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryCategoryLetters),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$CategoryLetters? readQuery$CategoryLetters(
      {Variables$Query$CategoryLetters? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryCategoryLetters),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$CategoryLetters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CategoryLetters> useQuery$CategoryLetters(
        [Options$Query$CategoryLetters? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$CategoryLetters());
graphql.ObservableQuery<Query$CategoryLetters> useWatchQuery$CategoryLetters(
        [WatchOptions$Query$CategoryLetters? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$CategoryLetters());

class Query$CategoryLetters$Widget
    extends graphql_flutter.Query<Query$CategoryLetters> {
  Query$CategoryLetters$Widget(
      {widgets.Key? key,
      Options$Query$CategoryLetters? options,
      required graphql_flutter.QueryBuilder<Query$CategoryLetters> builder})
      : super(
            key: key,
            options: options ?? Options$Query$CategoryLetters(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$CategoryLetters$posts {
  Query$CategoryLetters$posts({this.edges, required this.$__typename});

  @override
  factory Query$CategoryLetters$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$CategoryLetters$postsFromJson(json);

  final List<Query$CategoryLetters$posts$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$CategoryLetters$postsToJson(this);
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
    if (!(other is Query$CategoryLetters$posts) ||
        runtimeType != other.runtimeType) return false;
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

extension UtilityExtension$Query$CategoryLetters$posts
    on Query$CategoryLetters$posts {
  CopyWith$Query$CategoryLetters$posts<Query$CategoryLetters$posts>
      get copyWith => CopyWith$Query$CategoryLetters$posts(this, (i) => i);
}

abstract class CopyWith$Query$CategoryLetters$posts<TRes> {
  factory CopyWith$Query$CategoryLetters$posts(
          Query$CategoryLetters$posts instance,
          TRes Function(Query$CategoryLetters$posts) then) =
      _CopyWithImpl$Query$CategoryLetters$posts;

  factory CopyWith$Query$CategoryLetters$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$CategoryLetters$posts;

  TRes call(
      {List<Query$CategoryLetters$posts$edges?>? edges, String? $__typename});
  TRes edges(
      Iterable<Query$CategoryLetters$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$CategoryLetters$posts$edges<
                      Query$CategoryLetters$posts$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$CategoryLetters$posts<TRes>
    implements CopyWith$Query$CategoryLetters$posts<TRes> {
  _CopyWithImpl$Query$CategoryLetters$posts(this._instance, this._then);

  final Query$CategoryLetters$posts _instance;

  final TRes Function(Query$CategoryLetters$posts) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$CategoryLetters$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$CategoryLetters$posts$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$CategoryLetters$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$CategoryLetters$posts$edges<
                          Query$CategoryLetters$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
                  ? null
                  : CopyWith$Query$CategoryLetters$posts$edges(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Query$CategoryLetters$posts<TRes>
    implements CopyWith$Query$CategoryLetters$posts<TRes> {
  _CopyWithStubImpl$Query$CategoryLetters$posts(this._res);

  TRes _res;

  call(
          {List<Query$CategoryLetters$posts$edges?>? edges,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$CategoryLetters$posts$edges {
  Query$CategoryLetters$posts$edges({this.node, required this.$__typename});

  @override
  factory Query$CategoryLetters$posts$edges.fromJson(
          Map<String, dynamic> json) =>
      _$Query$CategoryLetters$posts$edgesFromJson(json);

  final Fragment$LetterSummary? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$CategoryLetters$posts$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$CategoryLetters$posts$edges) ||
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

extension UtilityExtension$Query$CategoryLetters$posts$edges
    on Query$CategoryLetters$posts$edges {
  CopyWith$Query$CategoryLetters$posts$edges<Query$CategoryLetters$posts$edges>
      get copyWith =>
          CopyWith$Query$CategoryLetters$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$CategoryLetters$posts$edges<TRes> {
  factory CopyWith$Query$CategoryLetters$posts$edges(
          Query$CategoryLetters$posts$edges instance,
          TRes Function(Query$CategoryLetters$posts$edges) then) =
      _CopyWithImpl$Query$CategoryLetters$posts$edges;

  factory CopyWith$Query$CategoryLetters$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$CategoryLetters$posts$edges;

  TRes call({Fragment$LetterSummary? node, String? $__typename});
  CopyWith$Fragment$LetterSummary<TRes> get node;
}

class _CopyWithImpl$Query$CategoryLetters$posts$edges<TRes>
    implements CopyWith$Query$CategoryLetters$posts$edges<TRes> {
  _CopyWithImpl$Query$CategoryLetters$posts$edges(this._instance, this._then);

  final Query$CategoryLetters$posts$edges _instance;

  final TRes Function(Query$CategoryLetters$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$CategoryLetters$posts$edges(
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

class _CopyWithStubImpl$Query$CategoryLetters$posts$edges<TRes>
    implements CopyWith$Query$CategoryLetters$posts$edges<TRes> {
  _CopyWithStubImpl$Query$CategoryLetters$posts$edges(this._res);

  TRes _res;

  call({Fragment$LetterSummary? node, String? $__typename}) => _res;
  CopyWith$Fragment$LetterSummary<TRes> get node =>
      CopyWith$Fragment$LetterSummary.stub(_res);
}
