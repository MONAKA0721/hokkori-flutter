import '../common/common.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'search_page.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$LikedPraises {
  Variables$Query$LikedPraises({required this.first});

  @override
  factory Variables$Query$LikedPraises.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$LikedPraisesFromJson(json);

  final int first;

  Map<String, dynamic> toJson() => _$Variables$Query$LikedPraisesToJson(this);
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$LikedPraises) ||
        runtimeType != other.runtimeType) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    return true;
  }

  CopyWith$Variables$Query$LikedPraises<Variables$Query$LikedPraises>
      get copyWith => CopyWith$Variables$Query$LikedPraises(this, (i) => i);
}

abstract class CopyWith$Variables$Query$LikedPraises<TRes> {
  factory CopyWith$Variables$Query$LikedPraises(
          Variables$Query$LikedPraises instance,
          TRes Function(Variables$Query$LikedPraises) then) =
      _CopyWithImpl$Variables$Query$LikedPraises;

  factory CopyWith$Variables$Query$LikedPraises.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LikedPraises;

  TRes call({int? first});
}

class _CopyWithImpl$Variables$Query$LikedPraises<TRes>
    implements CopyWith$Variables$Query$LikedPraises<TRes> {
  _CopyWithImpl$Variables$Query$LikedPraises(this._instance, this._then);

  final Variables$Query$LikedPraises _instance;

  final TRes Function(Variables$Query$LikedPraises) _then;

  static const _undefined = {};

  TRes call({Object? first = _undefined}) => _then(Variables$Query$LikedPraises(
      first: first == _undefined || first == null
          ? _instance.first
          : (first as int)));
}

class _CopyWithStubImpl$Variables$Query$LikedPraises<TRes>
    implements CopyWith$Variables$Query$LikedPraises<TRes> {
  _CopyWithStubImpl$Variables$Query$LikedPraises(this._res);

  TRes _res;

  call({int? first}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$LikedPraises {
  Query$LikedPraises({required this.likedPosts, required this.$__typename});

  @override
  factory Query$LikedPraises.fromJson(Map<String, dynamic> json) =>
      _$Query$LikedPraisesFromJson(json);

  final List<Query$LikedPraises$likedPosts?> likedPosts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$LikedPraisesToJson(this);
  int get hashCode {
    final l$likedPosts = likedPosts;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$likedPosts.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$LikedPraises) || runtimeType != other.runtimeType)
      return false;
    final l$likedPosts = likedPosts;
    final lOther$likedPosts = other.likedPosts;
    if (l$likedPosts.length != lOther$likedPosts.length) return false;
    for (int i = 0; i < l$likedPosts.length; i++) {
      final l$likedPosts$entry = l$likedPosts[i];
      final lOther$likedPosts$entry = lOther$likedPosts[i];
      if (l$likedPosts$entry != lOther$likedPosts$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$LikedPraises on Query$LikedPraises {
  CopyWith$Query$LikedPraises<Query$LikedPraises> get copyWith =>
      CopyWith$Query$LikedPraises(this, (i) => i);
}

abstract class CopyWith$Query$LikedPraises<TRes> {
  factory CopyWith$Query$LikedPraises(
          Query$LikedPraises instance, TRes Function(Query$LikedPraises) then) =
      _CopyWithImpl$Query$LikedPraises;

  factory CopyWith$Query$LikedPraises.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedPraises;

  TRes call(
      {List<Query$LikedPraises$likedPosts?>? likedPosts, String? $__typename});
  TRes likedPosts(
      Iterable<Query$LikedPraises$likedPosts?> Function(
              Iterable<
                  CopyWith$Query$LikedPraises$likedPosts<
                      Query$LikedPraises$likedPosts>?>)
          _fn);
}

class _CopyWithImpl$Query$LikedPraises<TRes>
    implements CopyWith$Query$LikedPraises<TRes> {
  _CopyWithImpl$Query$LikedPraises(this._instance, this._then);

  final Query$LikedPraises _instance;

  final TRes Function(Query$LikedPraises) _then;

  static const _undefined = {};

  TRes call(
          {Object? likedPosts = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$LikedPraises(
          likedPosts: likedPosts == _undefined || likedPosts == null
              ? _instance.likedPosts
              : (likedPosts as List<Query$LikedPraises$likedPosts?>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes likedPosts(
          Iterable<Query$LikedPraises$likedPosts?> Function(
                  Iterable<
                      CopyWith$Query$LikedPraises$likedPosts<
                          Query$LikedPraises$likedPosts>?>)
              _fn) =>
      call(
          likedPosts: _fn(_instance.likedPosts.map((e) => e == null
              ? null
              : CopyWith$Query$LikedPraises$likedPosts(e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$LikedPraises<TRes>
    implements CopyWith$Query$LikedPraises<TRes> {
  _CopyWithStubImpl$Query$LikedPraises(this._res);

  TRes _res;

  call(
          {List<Query$LikedPraises$likedPosts?>? likedPosts,
          String? $__typename}) =>
      _res;
  likedPosts(_fn) => _res;
}

const documentNodeQueryLikedPraises = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LikedPraises'),
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
            name: NameNode(value: 'likedPosts'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first'))),
              ArgumentNode(
                  name: NameNode(value: 'type'),
                  value: EnumValueNode(name: NameNode(value: 'praise')))
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
Query$LikedPraises _parserFn$Query$LikedPraises(Map<String, dynamic> data) =>
    Query$LikedPraises.fromJson(data);

class Options$Query$LikedPraises
    extends graphql.QueryOptions<Query$LikedPraises> {
  Options$Query$LikedPraises(
      {String? operationName,
      required Variables$Query$LikedPraises variables,
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
            document: documentNodeQueryLikedPraises,
            parserFn: _parserFn$Query$LikedPraises);
}

class WatchOptions$Query$LikedPraises
    extends graphql.WatchQueryOptions<Query$LikedPraises> {
  WatchOptions$Query$LikedPraises(
      {String? operationName,
      required Variables$Query$LikedPraises variables,
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
            document: documentNodeQueryLikedPraises,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$LikedPraises);
}

class FetchMoreOptions$Query$LikedPraises extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LikedPraises(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$LikedPraises variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryLikedPraises);
}

extension ClientExtension$Query$LikedPraises on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LikedPraises>> query$LikedPraises(
          Options$Query$LikedPraises options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$LikedPraises> watchQuery$LikedPraises(
          WatchOptions$Query$LikedPraises options) =>
      this.watchQuery(options);
  void writeQuery$LikedPraises(
          {required Query$LikedPraises data,
          required Variables$Query$LikedPraises variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryLikedPraises),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$LikedPraises? readQuery$LikedPraises(
      {required Variables$Query$LikedPraises variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryLikedPraises),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$LikedPraises.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LikedPraises> useQuery$LikedPraises(
        Options$Query$LikedPraises options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$LikedPraises> useWatchQuery$LikedPraises(
        WatchOptions$Query$LikedPraises options) =>
    graphql_flutter.useWatchQuery(options);

class Query$LikedPraises$Widget
    extends graphql_flutter.Query<Query$LikedPraises> {
  Query$LikedPraises$Widget(
      {widgets.Key? key,
      required Options$Query$LikedPraises options,
      required graphql_flutter.QueryBuilder<Query$LikedPraises> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$LikedPraises$likedPosts {
  Query$LikedPraises$likedPosts(
      {required this.id, required this.title, required this.$__typename});

  @override
  factory Query$LikedPraises$likedPosts.fromJson(Map<String, dynamic> json) =>
      _$Query$LikedPraises$likedPostsFromJson(json);

  final String id;

  final String title;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$LikedPraises$likedPostsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$LikedPraises$likedPosts) ||
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

extension UtilityExtension$Query$LikedPraises$likedPosts
    on Query$LikedPraises$likedPosts {
  CopyWith$Query$LikedPraises$likedPosts<Query$LikedPraises$likedPosts>
      get copyWith => CopyWith$Query$LikedPraises$likedPosts(this, (i) => i);
}

abstract class CopyWith$Query$LikedPraises$likedPosts<TRes> {
  factory CopyWith$Query$LikedPraises$likedPosts(
          Query$LikedPraises$likedPosts instance,
          TRes Function(Query$LikedPraises$likedPosts) then) =
      _CopyWithImpl$Query$LikedPraises$likedPosts;

  factory CopyWith$Query$LikedPraises$likedPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedPraises$likedPosts;

  TRes call({String? id, String? title, String? $__typename});
}

class _CopyWithImpl$Query$LikedPraises$likedPosts<TRes>
    implements CopyWith$Query$LikedPraises$likedPosts<TRes> {
  _CopyWithImpl$Query$LikedPraises$likedPosts(this._instance, this._then);

  final Query$LikedPraises$likedPosts _instance;

  final TRes Function(Query$LikedPraises$likedPosts) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$LikedPraises$likedPosts(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$LikedPraises$likedPosts<TRes>
    implements CopyWith$Query$LikedPraises$likedPosts<TRes> {
  _CopyWithStubImpl$Query$LikedPraises$likedPosts(this._res);

  TRes _res;

  call({String? id, String? title, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$LikedLetters {
  Variables$Query$LikedLetters({required this.first});

  @override
  factory Variables$Query$LikedLetters.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$LikedLettersFromJson(json);

  final int first;

  Map<String, dynamic> toJson() => _$Variables$Query$LikedLettersToJson(this);
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$LikedLetters) ||
        runtimeType != other.runtimeType) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    return true;
  }

  CopyWith$Variables$Query$LikedLetters<Variables$Query$LikedLetters>
      get copyWith => CopyWith$Variables$Query$LikedLetters(this, (i) => i);
}

abstract class CopyWith$Variables$Query$LikedLetters<TRes> {
  factory CopyWith$Variables$Query$LikedLetters(
          Variables$Query$LikedLetters instance,
          TRes Function(Variables$Query$LikedLetters) then) =
      _CopyWithImpl$Variables$Query$LikedLetters;

  factory CopyWith$Variables$Query$LikedLetters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LikedLetters;

  TRes call({int? first});
}

class _CopyWithImpl$Variables$Query$LikedLetters<TRes>
    implements CopyWith$Variables$Query$LikedLetters<TRes> {
  _CopyWithImpl$Variables$Query$LikedLetters(this._instance, this._then);

  final Variables$Query$LikedLetters _instance;

  final TRes Function(Variables$Query$LikedLetters) _then;

  static const _undefined = {};

  TRes call({Object? first = _undefined}) => _then(Variables$Query$LikedLetters(
      first: first == _undefined || first == null
          ? _instance.first
          : (first as int)));
}

class _CopyWithStubImpl$Variables$Query$LikedLetters<TRes>
    implements CopyWith$Variables$Query$LikedLetters<TRes> {
  _CopyWithStubImpl$Variables$Query$LikedLetters(this._res);

  TRes _res;

  call({int? first}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$LikedLetters {
  Query$LikedLetters({required this.likedPosts, required this.$__typename});

  @override
  factory Query$LikedLetters.fromJson(Map<String, dynamic> json) =>
      _$Query$LikedLettersFromJson(json);

  final List<Fragment$LetterSummary?> likedPosts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$LikedLettersToJson(this);
  int get hashCode {
    final l$likedPosts = likedPosts;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$likedPosts.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$LikedLetters) || runtimeType != other.runtimeType)
      return false;
    final l$likedPosts = likedPosts;
    final lOther$likedPosts = other.likedPosts;
    if (l$likedPosts.length != lOther$likedPosts.length) return false;
    for (int i = 0; i < l$likedPosts.length; i++) {
      final l$likedPosts$entry = l$likedPosts[i];
      final lOther$likedPosts$entry = lOther$likedPosts[i];
      if (l$likedPosts$entry != lOther$likedPosts$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$LikedLetters on Query$LikedLetters {
  CopyWith$Query$LikedLetters<Query$LikedLetters> get copyWith =>
      CopyWith$Query$LikedLetters(this, (i) => i);
}

abstract class CopyWith$Query$LikedLetters<TRes> {
  factory CopyWith$Query$LikedLetters(
          Query$LikedLetters instance, TRes Function(Query$LikedLetters) then) =
      _CopyWithImpl$Query$LikedLetters;

  factory CopyWith$Query$LikedLetters.stub(TRes res) =
      _CopyWithStubImpl$Query$LikedLetters;

  TRes call({List<Fragment$LetterSummary?>? likedPosts, String? $__typename});
  TRes likedPosts(
      Iterable<Fragment$LetterSummary?> Function(
              Iterable<
                  CopyWith$Fragment$LetterSummary<Fragment$LetterSummary>?>)
          _fn);
}

class _CopyWithImpl$Query$LikedLetters<TRes>
    implements CopyWith$Query$LikedLetters<TRes> {
  _CopyWithImpl$Query$LikedLetters(this._instance, this._then);

  final Query$LikedLetters _instance;

  final TRes Function(Query$LikedLetters) _then;

  static const _undefined = {};

  TRes call(
          {Object? likedPosts = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$LikedLetters(
          likedPosts: likedPosts == _undefined || likedPosts == null
              ? _instance.likedPosts
              : (likedPosts as List<Fragment$LetterSummary?>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes likedPosts(
          Iterable<Fragment$LetterSummary?> Function(
                  Iterable<
                      CopyWith$Fragment$LetterSummary<Fragment$LetterSummary>?>)
              _fn) =>
      call(
          likedPosts: _fn(_instance.likedPosts.map((e) => e == null
              ? null
              : CopyWith$Fragment$LetterSummary(e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$LikedLetters<TRes>
    implements CopyWith$Query$LikedLetters<TRes> {
  _CopyWithStubImpl$Query$LikedLetters(this._res);

  TRes _res;

  call({List<Fragment$LetterSummary?>? likedPosts, String? $__typename}) =>
      _res;
  likedPosts(_fn) => _res;
}

const documentNodeQueryLikedLetters = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LikedLetters'),
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
            name: NameNode(value: 'likedPosts'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first'))),
              ArgumentNode(
                  name: NameNode(value: 'type'),
                  value: EnumValueNode(name: NameNode(value: 'letter')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'LetterSummary'), directives: []),
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
Query$LikedLetters _parserFn$Query$LikedLetters(Map<String, dynamic> data) =>
    Query$LikedLetters.fromJson(data);

class Options$Query$LikedLetters
    extends graphql.QueryOptions<Query$LikedLetters> {
  Options$Query$LikedLetters(
      {String? operationName,
      required Variables$Query$LikedLetters variables,
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
            document: documentNodeQueryLikedLetters,
            parserFn: _parserFn$Query$LikedLetters);
}

class WatchOptions$Query$LikedLetters
    extends graphql.WatchQueryOptions<Query$LikedLetters> {
  WatchOptions$Query$LikedLetters(
      {String? operationName,
      required Variables$Query$LikedLetters variables,
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
            document: documentNodeQueryLikedLetters,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$LikedLetters);
}

class FetchMoreOptions$Query$LikedLetters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LikedLetters(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$LikedLetters variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryLikedLetters);
}

extension ClientExtension$Query$LikedLetters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LikedLetters>> query$LikedLetters(
          Options$Query$LikedLetters options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$LikedLetters> watchQuery$LikedLetters(
          WatchOptions$Query$LikedLetters options) =>
      this.watchQuery(options);
  void writeQuery$LikedLetters(
          {required Query$LikedLetters data,
          required Variables$Query$LikedLetters variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryLikedLetters),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$LikedLetters? readQuery$LikedLetters(
      {required Variables$Query$LikedLetters variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryLikedLetters),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$LikedLetters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LikedLetters> useQuery$LikedLetters(
        Options$Query$LikedLetters options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$LikedLetters> useWatchQuery$LikedLetters(
        WatchOptions$Query$LikedLetters options) =>
    graphql_flutter.useWatchQuery(options);

class Query$LikedLetters$Widget
    extends graphql_flutter.Query<Query$LikedLetters> {
  Query$LikedLetters$Widget(
      {widgets.Key? key,
      required Options$Query$LikedLetters options,
      required graphql_flutter.QueryBuilder<Query$LikedLetters> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$SearchCandidates {
  Variables$Query$SearchCandidates({this.searchText});

  @override
  factory Variables$Query$SearchCandidates.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Query$SearchCandidatesFromJson(json);

  final String? searchText;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$SearchCandidatesToJson(this);
  int get hashCode {
    final l$searchText = searchText;
    return Object.hashAll([l$searchText]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$SearchCandidates) ||
        runtimeType != other.runtimeType) return false;
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) return false;
    return true;
  }

  CopyWith$Variables$Query$SearchCandidates<Variables$Query$SearchCandidates>
      get copyWith => CopyWith$Variables$Query$SearchCandidates(this, (i) => i);
}

abstract class CopyWith$Variables$Query$SearchCandidates<TRes> {
  factory CopyWith$Variables$Query$SearchCandidates(
          Variables$Query$SearchCandidates instance,
          TRes Function(Variables$Query$SearchCandidates) then) =
      _CopyWithImpl$Variables$Query$SearchCandidates;

  factory CopyWith$Variables$Query$SearchCandidates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchCandidates;

  TRes call({String? searchText});
}

class _CopyWithImpl$Variables$Query$SearchCandidates<TRes>
    implements CopyWith$Variables$Query$SearchCandidates<TRes> {
  _CopyWithImpl$Variables$Query$SearchCandidates(this._instance, this._then);

  final Variables$Query$SearchCandidates _instance;

  final TRes Function(Variables$Query$SearchCandidates) _then;

  static const _undefined = {};

  TRes call({Object? searchText = _undefined}) =>
      _then(Variables$Query$SearchCandidates(
          searchText: searchText == _undefined
              ? _instance.searchText
              : (searchText as String?)));
}

class _CopyWithStubImpl$Variables$Query$SearchCandidates<TRes>
    implements CopyWith$Variables$Query$SearchCandidates<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchCandidates(this._res);

  TRes _res;

  call({String? searchText}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCandidates {
  Query$SearchCandidates(
      {required this.categories,
      required this.hashtags,
      required this.$__typename});

  @override
  factory Query$SearchCandidates.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchCandidatesFromJson(json);

  final Query$SearchCandidates$categories categories;

  final Query$SearchCandidates$hashtags hashtags;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchCandidatesToJson(this);
  int get hashCode {
    final l$categories = categories;
    final l$hashtags = hashtags;
    final l$$__typename = $__typename;
    return Object.hashAll([l$categories, l$hashtags, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchCandidates) || runtimeType != other.runtimeType)
      return false;
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != lOther$categories) return false;
    final l$hashtags = hashtags;
    final lOther$hashtags = other.hashtags;
    if (l$hashtags != lOther$hashtags) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchCandidates on Query$SearchCandidates {
  CopyWith$Query$SearchCandidates<Query$SearchCandidates> get copyWith =>
      CopyWith$Query$SearchCandidates(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates<TRes> {
  factory CopyWith$Query$SearchCandidates(Query$SearchCandidates instance,
          TRes Function(Query$SearchCandidates) then) =
      _CopyWithImpl$Query$SearchCandidates;

  factory CopyWith$Query$SearchCandidates.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates;

  TRes call(
      {Query$SearchCandidates$categories? categories,
      Query$SearchCandidates$hashtags? hashtags,
      String? $__typename});
  CopyWith$Query$SearchCandidates$categories<TRes> get categories;
  CopyWith$Query$SearchCandidates$hashtags<TRes> get hashtags;
}

class _CopyWithImpl$Query$SearchCandidates<TRes>
    implements CopyWith$Query$SearchCandidates<TRes> {
  _CopyWithImpl$Query$SearchCandidates(this._instance, this._then);

  final Query$SearchCandidates _instance;

  final TRes Function(Query$SearchCandidates) _then;

  static const _undefined = {};

  TRes call(
          {Object? categories = _undefined,
          Object? hashtags = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates(
          categories: categories == _undefined || categories == null
              ? _instance.categories
              : (categories as Query$SearchCandidates$categories),
          hashtags: hashtags == _undefined || hashtags == null
              ? _instance.hashtags
              : (hashtags as Query$SearchCandidates$hashtags),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchCandidates$categories<TRes> get categories {
    final local$categories = _instance.categories;
    return CopyWith$Query$SearchCandidates$categories(
        local$categories, (e) => call(categories: e));
  }

  CopyWith$Query$SearchCandidates$hashtags<TRes> get hashtags {
    final local$hashtags = _instance.hashtags;
    return CopyWith$Query$SearchCandidates$hashtags(
        local$hashtags, (e) => call(hashtags: e));
  }
}

class _CopyWithStubImpl$Query$SearchCandidates<TRes>
    implements CopyWith$Query$SearchCandidates<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates(this._res);

  TRes _res;

  call(
          {Query$SearchCandidates$categories? categories,
          Query$SearchCandidates$hashtags? hashtags,
          String? $__typename}) =>
      _res;
  CopyWith$Query$SearchCandidates$categories<TRes> get categories =>
      CopyWith$Query$SearchCandidates$categories.stub(_res);
  CopyWith$Query$SearchCandidates$hashtags<TRes> get hashtags =>
      CopyWith$Query$SearchCandidates$hashtags.stub(_res);
}

const documentNodeQuerySearchCandidates = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchCandidates'),
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
            name: NameNode(value: 'hashtags'),
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
Query$SearchCandidates _parserFn$Query$SearchCandidates(
        Map<String, dynamic> data) =>
    Query$SearchCandidates.fromJson(data);

class Options$Query$SearchCandidates
    extends graphql.QueryOptions<Query$SearchCandidates> {
  Options$Query$SearchCandidates(
      {String? operationName,
      Variables$Query$SearchCandidates? variables,
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
            document: documentNodeQuerySearchCandidates,
            parserFn: _parserFn$Query$SearchCandidates);
}

class WatchOptions$Query$SearchCandidates
    extends graphql.WatchQueryOptions<Query$SearchCandidates> {
  WatchOptions$Query$SearchCandidates(
      {String? operationName,
      Variables$Query$SearchCandidates? variables,
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
            document: documentNodeQuerySearchCandidates,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$SearchCandidates);
}

class FetchMoreOptions$Query$SearchCandidates extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchCandidates(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$SearchCandidates? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerySearchCandidates);
}

extension ClientExtension$Query$SearchCandidates on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchCandidates>> query$SearchCandidates(
          [Options$Query$SearchCandidates? options]) async =>
      await this.query(options ?? Options$Query$SearchCandidates());
  graphql.ObservableQuery<Query$SearchCandidates> watchQuery$SearchCandidates(
          [WatchOptions$Query$SearchCandidates? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchCandidates());
  void writeQuery$SearchCandidates(
          {required Query$SearchCandidates data,
          Variables$Query$SearchCandidates? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQuerySearchCandidates),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$SearchCandidates? readQuery$SearchCandidates(
      {Variables$Query$SearchCandidates? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerySearchCandidates),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
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
  Query$SearchCandidates$Widget(
      {widgets.Key? key,
      Options$Query$SearchCandidates? options,
      required graphql_flutter.QueryBuilder<Query$SearchCandidates> builder})
      : super(
            key: key,
            options: options ?? Options$Query$SearchCandidates(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCandidates$categories {
  Query$SearchCandidates$categories({this.edges, required this.$__typename});

  @override
  factory Query$SearchCandidates$categories.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchCandidates$categoriesFromJson(json);

  final List<Query$SearchCandidates$categories$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchCandidates$categoriesToJson(this);
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
    if (!(other is Query$SearchCandidates$categories) ||
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

extension UtilityExtension$Query$SearchCandidates$categories
    on Query$SearchCandidates$categories {
  CopyWith$Query$SearchCandidates$categories<Query$SearchCandidates$categories>
      get copyWith =>
          CopyWith$Query$SearchCandidates$categories(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates$categories<TRes> {
  factory CopyWith$Query$SearchCandidates$categories(
          Query$SearchCandidates$categories instance,
          TRes Function(Query$SearchCandidates$categories) then) =
      _CopyWithImpl$Query$SearchCandidates$categories;

  factory CopyWith$Query$SearchCandidates$categories.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$categories;

  TRes call(
      {List<Query$SearchCandidates$categories$edges?>? edges,
      String? $__typename});
  TRes edges(
      Iterable<Query$SearchCandidates$categories$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchCandidates$categories$edges<
                      Query$SearchCandidates$categories$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchCandidates$categories<TRes>
    implements CopyWith$Query$SearchCandidates$categories<TRes> {
  _CopyWithImpl$Query$SearchCandidates$categories(this._instance, this._then);

  final Query$SearchCandidates$categories _instance;

  final TRes Function(Query$SearchCandidates$categories) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates$categories(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$SearchCandidates$categories$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
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
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$SearchCandidates$categories<TRes>
    implements CopyWith$Query$SearchCandidates$categories<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$categories(this._res);

  TRes _res;

  call(
          {List<Query$SearchCandidates$categories$edges?>? edges,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCandidates$categories$edges {
  Query$SearchCandidates$categories$edges(
      {this.node, required this.$__typename});

  @override
  factory Query$SearchCandidates$categories$edges.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchCandidates$categories$edgesFromJson(json);

  final Query$SearchCandidates$categories$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchCandidates$categories$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchCandidates$categories$edges) ||
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

extension UtilityExtension$Query$SearchCandidates$categories$edges
    on Query$SearchCandidates$categories$edges {
  CopyWith$Query$SearchCandidates$categories$edges<
          Query$SearchCandidates$categories$edges>
      get copyWith =>
          CopyWith$Query$SearchCandidates$categories$edges(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates$categories$edges<TRes> {
  factory CopyWith$Query$SearchCandidates$categories$edges(
          Query$SearchCandidates$categories$edges instance,
          TRes Function(Query$SearchCandidates$categories$edges) then) =
      _CopyWithImpl$Query$SearchCandidates$categories$edges;

  factory CopyWith$Query$SearchCandidates$categories$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$categories$edges;

  TRes call(
      {Query$SearchCandidates$categories$edges$node? node,
      String? $__typename});
  CopyWith$Query$SearchCandidates$categories$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchCandidates$categories$edges<TRes>
    implements CopyWith$Query$SearchCandidates$categories$edges<TRes> {
  _CopyWithImpl$Query$SearchCandidates$categories$edges(
      this._instance, this._then);

  final Query$SearchCandidates$categories$edges _instance;

  final TRes Function(Query$SearchCandidates$categories$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates$categories$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$SearchCandidates$categories$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
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

  call(
          {Query$SearchCandidates$categories$edges$node? node,
          String? $__typename}) =>
      _res;
  CopyWith$Query$SearchCandidates$categories$edges$node<TRes> get node =>
      CopyWith$Query$SearchCandidates$categories$edges$node.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCandidates$categories$edges$node {
  Query$SearchCandidates$categories$edges$node(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Query$SearchCandidates$categories$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchCandidates$categories$edges$nodeFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchCandidates$categories$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchCandidates$categories$edges$node) ||
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

extension UtilityExtension$Query$SearchCandidates$categories$edges$node
    on Query$SearchCandidates$categories$edges$node {
  CopyWith$Query$SearchCandidates$categories$edges$node<
          Query$SearchCandidates$categories$edges$node>
      get copyWith =>
          CopyWith$Query$SearchCandidates$categories$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates$categories$edges$node<TRes> {
  factory CopyWith$Query$SearchCandidates$categories$edges$node(
          Query$SearchCandidates$categories$edges$node instance,
          TRes Function(Query$SearchCandidates$categories$edges$node) then) =
      _CopyWithImpl$Query$SearchCandidates$categories$edges$node;

  factory CopyWith$Query$SearchCandidates$categories$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$categories$edges$node;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$SearchCandidates$categories$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$categories$edges$node<TRes> {
  _CopyWithImpl$Query$SearchCandidates$categories$edges$node(
      this._instance, this._then);

  final Query$SearchCandidates$categories$edges$node _instance;

  final TRes Function(Query$SearchCandidates$categories$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates$categories$edges$node(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchCandidates$categories$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$categories$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$categories$edges$node(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCandidates$hashtags {
  Query$SearchCandidates$hashtags({this.edges, required this.$__typename});

  @override
  factory Query$SearchCandidates$hashtags.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchCandidates$hashtagsFromJson(json);

  final List<Query$SearchCandidates$hashtags$edges?>? edges;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchCandidates$hashtagsToJson(this);
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
    if (!(other is Query$SearchCandidates$hashtags) ||
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

extension UtilityExtension$Query$SearchCandidates$hashtags
    on Query$SearchCandidates$hashtags {
  CopyWith$Query$SearchCandidates$hashtags<Query$SearchCandidates$hashtags>
      get copyWith => CopyWith$Query$SearchCandidates$hashtags(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates$hashtags<TRes> {
  factory CopyWith$Query$SearchCandidates$hashtags(
          Query$SearchCandidates$hashtags instance,
          TRes Function(Query$SearchCandidates$hashtags) then) =
      _CopyWithImpl$Query$SearchCandidates$hashtags;

  factory CopyWith$Query$SearchCandidates$hashtags.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$hashtags;

  TRes call(
      {List<Query$SearchCandidates$hashtags$edges?>? edges,
      String? $__typename});
  TRes edges(
      Iterable<Query$SearchCandidates$hashtags$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchCandidates$hashtags$edges<
                      Query$SearchCandidates$hashtags$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchCandidates$hashtags<TRes>
    implements CopyWith$Query$SearchCandidates$hashtags<TRes> {
  _CopyWithImpl$Query$SearchCandidates$hashtags(this._instance, this._then);

  final Query$SearchCandidates$hashtags _instance;

  final TRes Function(Query$SearchCandidates$hashtags) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates$hashtags(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$SearchCandidates$hashtags$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$SearchCandidates$hashtags$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchCandidates$hashtags$edges<
                          Query$SearchCandidates$hashtags$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchCandidates$hashtags$edges(
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$SearchCandidates$hashtags<TRes>
    implements CopyWith$Query$SearchCandidates$hashtags<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$hashtags(this._res);

  TRes _res;

  call(
          {List<Query$SearchCandidates$hashtags$edges?>? edges,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCandidates$hashtags$edges {
  Query$SearchCandidates$hashtags$edges({this.node, required this.$__typename});

  @override
  factory Query$SearchCandidates$hashtags$edges.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchCandidates$hashtags$edgesFromJson(json);

  final Query$SearchCandidates$hashtags$edges$node? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchCandidates$hashtags$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchCandidates$hashtags$edges) ||
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

extension UtilityExtension$Query$SearchCandidates$hashtags$edges
    on Query$SearchCandidates$hashtags$edges {
  CopyWith$Query$SearchCandidates$hashtags$edges<
          Query$SearchCandidates$hashtags$edges>
      get copyWith =>
          CopyWith$Query$SearchCandidates$hashtags$edges(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates$hashtags$edges<TRes> {
  factory CopyWith$Query$SearchCandidates$hashtags$edges(
          Query$SearchCandidates$hashtags$edges instance,
          TRes Function(Query$SearchCandidates$hashtags$edges) then) =
      _CopyWithImpl$Query$SearchCandidates$hashtags$edges;

  factory CopyWith$Query$SearchCandidates$hashtags$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$hashtags$edges;

  TRes call(
      {Query$SearchCandidates$hashtags$edges$node? node, String? $__typename});
  CopyWith$Query$SearchCandidates$hashtags$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchCandidates$hashtags$edges<TRes>
    implements CopyWith$Query$SearchCandidates$hashtags$edges<TRes> {
  _CopyWithImpl$Query$SearchCandidates$hashtags$edges(
      this._instance, this._then);

  final Query$SearchCandidates$hashtags$edges _instance;

  final TRes Function(Query$SearchCandidates$hashtags$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates$hashtags$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$SearchCandidates$hashtags$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchCandidates$hashtags$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$SearchCandidates$hashtags$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$SearchCandidates$hashtags$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SearchCandidates$hashtags$edges<TRes>
    implements CopyWith$Query$SearchCandidates$hashtags$edges<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$hashtags$edges(this._res);

  TRes _res;

  call(
          {Query$SearchCandidates$hashtags$edges$node? node,
          String? $__typename}) =>
      _res;
  CopyWith$Query$SearchCandidates$hashtags$edges$node<TRes> get node =>
      CopyWith$Query$SearchCandidates$hashtags$edges$node.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchCandidates$hashtags$edges$node {
  Query$SearchCandidates$hashtags$edges$node(
      {required this.id, required this.title, required this.$__typename});

  @override
  factory Query$SearchCandidates$hashtags$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchCandidates$hashtags$edges$nodeFromJson(json);

  final String id;

  final String title;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchCandidates$hashtags$edges$nodeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchCandidates$hashtags$edges$node) ||
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

extension UtilityExtension$Query$SearchCandidates$hashtags$edges$node
    on Query$SearchCandidates$hashtags$edges$node {
  CopyWith$Query$SearchCandidates$hashtags$edges$node<
          Query$SearchCandidates$hashtags$edges$node>
      get copyWith =>
          CopyWith$Query$SearchCandidates$hashtags$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates$hashtags$edges$node<TRes> {
  factory CopyWith$Query$SearchCandidates$hashtags$edges$node(
          Query$SearchCandidates$hashtags$edges$node instance,
          TRes Function(Query$SearchCandidates$hashtags$edges$node) then) =
      _CopyWithImpl$Query$SearchCandidates$hashtags$edges$node;

  factory CopyWith$Query$SearchCandidates$hashtags$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$hashtags$edges$node;

  TRes call({String? id, String? title, String? $__typename});
}

class _CopyWithImpl$Query$SearchCandidates$hashtags$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$hashtags$edges$node<TRes> {
  _CopyWithImpl$Query$SearchCandidates$hashtags$edges$node(
      this._instance, this._then);

  final Query$SearchCandidates$hashtags$edges$node _instance;

  final TRes Function(Query$SearchCandidates$hashtags$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates$hashtags$edges$node(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchCandidates$hashtags$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$hashtags$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$hashtags$edges$node(this._res);

  TRes _res;

  call({String? id, String? title, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$CategoryPraises {
  Variables$Query$CategoryPraises({this.categoryID, this.first, this.after});

  @override
  factory Variables$Query$CategoryPraises.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$CategoryPraisesFromJson(json);

  final String? categoryID;

  final int? first;

  final String? after;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$CategoryPraisesToJson(this);
  int get hashCode {
    final l$categoryID = categoryID;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([l$categoryID, l$first, l$after]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$CategoryPraises) ||
        runtimeType != other.runtimeType) return false;
    final l$categoryID = categoryID;
    final lOther$categoryID = other.categoryID;
    if (l$categoryID != lOther$categoryID) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
    return true;
  }

  CopyWith$Variables$Query$CategoryPraises<Variables$Query$CategoryPraises>
      get copyWith => CopyWith$Variables$Query$CategoryPraises(this, (i) => i);
}

abstract class CopyWith$Variables$Query$CategoryPraises<TRes> {
  factory CopyWith$Variables$Query$CategoryPraises(
          Variables$Query$CategoryPraises instance,
          TRes Function(Variables$Query$CategoryPraises) then) =
      _CopyWithImpl$Variables$Query$CategoryPraises;

  factory CopyWith$Variables$Query$CategoryPraises.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CategoryPraises;

  TRes call({String? categoryID, int? first, String? after});
}

class _CopyWithImpl$Variables$Query$CategoryPraises<TRes>
    implements CopyWith$Variables$Query$CategoryPraises<TRes> {
  _CopyWithImpl$Variables$Query$CategoryPraises(this._instance, this._then);

  final Variables$Query$CategoryPraises _instance;

  final TRes Function(Variables$Query$CategoryPraises) _then;

  static const _undefined = {};

  TRes call(
          {Object? categoryID = _undefined,
          Object? first = _undefined,
          Object? after = _undefined}) =>
      _then(Variables$Query$CategoryPraises(
          categoryID: categoryID == _undefined
              ? _instance.categoryID
              : (categoryID as String?),
          first: first == _undefined ? _instance.first : (first as int?),
          after: after == _undefined ? _instance.after : (after as String?)));
}

class _CopyWithStubImpl$Variables$Query$CategoryPraises<TRes>
    implements CopyWith$Variables$Query$CategoryPraises<TRes> {
  _CopyWithStubImpl$Variables$Query$CategoryPraises(this._res);

  TRes _res;

  call({String? categoryID, int? first, String? after}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$CategoryPraises {
  Query$CategoryPraises({required this.posts, required this.$__typename});

  @override
  factory Query$CategoryPraises.fromJson(Map<String, dynamic> json) =>
      _$Query$CategoryPraisesFromJson(json);

  final Query$CategoryPraises$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$CategoryPraisesToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$CategoryPraises) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$CategoryPraises on Query$CategoryPraises {
  CopyWith$Query$CategoryPraises<Query$CategoryPraises> get copyWith =>
      CopyWith$Query$CategoryPraises(this, (i) => i);
}

abstract class CopyWith$Query$CategoryPraises<TRes> {
  factory CopyWith$Query$CategoryPraises(Query$CategoryPraises instance,
          TRes Function(Query$CategoryPraises) then) =
      _CopyWithImpl$Query$CategoryPraises;

  factory CopyWith$Query$CategoryPraises.stub(TRes res) =
      _CopyWithStubImpl$Query$CategoryPraises;

  TRes call({Query$CategoryPraises$posts? posts, String? $__typename});
  CopyWith$Query$CategoryPraises$posts<TRes> get posts;
}

class _CopyWithImpl$Query$CategoryPraises<TRes>
    implements CopyWith$Query$CategoryPraises<TRes> {
  _CopyWithImpl$Query$CategoryPraises(this._instance, this._then);

  final Query$CategoryPraises _instance;

  final TRes Function(Query$CategoryPraises) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$CategoryPraises(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$CategoryPraises$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$CategoryPraises$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$CategoryPraises$posts(
        local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$CategoryPraises<TRes>
    implements CopyWith$Query$CategoryPraises<TRes> {
  _CopyWithStubImpl$Query$CategoryPraises(this._res);

  TRes _res;

  call({Query$CategoryPraises$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$CategoryPraises$posts<TRes> get posts =>
      CopyWith$Query$CategoryPraises$posts.stub(_res);
}

const documentNodeQueryCategoryPraises = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CategoryPraises'),
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
                        value: EnumValueNode(name: NameNode(value: 'praise'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'hasCategoryWith'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'id'),
                              value: VariableNode(
                                  name: NameNode(value: 'categoryID')))
                        ]))
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
Query$CategoryPraises _parserFn$Query$CategoryPraises(
        Map<String, dynamic> data) =>
    Query$CategoryPraises.fromJson(data);

class Options$Query$CategoryPraises
    extends graphql.QueryOptions<Query$CategoryPraises> {
  Options$Query$CategoryPraises(
      {String? operationName,
      Variables$Query$CategoryPraises? variables,
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
            document: documentNodeQueryCategoryPraises,
            parserFn: _parserFn$Query$CategoryPraises);
}

class WatchOptions$Query$CategoryPraises
    extends graphql.WatchQueryOptions<Query$CategoryPraises> {
  WatchOptions$Query$CategoryPraises(
      {String? operationName,
      Variables$Query$CategoryPraises? variables,
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
            document: documentNodeQueryCategoryPraises,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$CategoryPraises);
}

class FetchMoreOptions$Query$CategoryPraises extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CategoryPraises(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$CategoryPraises? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryCategoryPraises);
}

extension ClientExtension$Query$CategoryPraises on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CategoryPraises>> query$CategoryPraises(
          [Options$Query$CategoryPraises? options]) async =>
      await this.query(options ?? Options$Query$CategoryPraises());
  graphql.ObservableQuery<Query$CategoryPraises> watchQuery$CategoryPraises(
          [WatchOptions$Query$CategoryPraises? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CategoryPraises());
  void writeQuery$CategoryPraises(
          {required Query$CategoryPraises data,
          Variables$Query$CategoryPraises? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryCategoryPraises),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$CategoryPraises? readQuery$CategoryPraises(
      {Variables$Query$CategoryPraises? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryCategoryPraises),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$CategoryPraises.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CategoryPraises> useQuery$CategoryPraises(
        [Options$Query$CategoryPraises? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$CategoryPraises());
graphql.ObservableQuery<Query$CategoryPraises> useWatchQuery$CategoryPraises(
        [WatchOptions$Query$CategoryPraises? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$CategoryPraises());

class Query$CategoryPraises$Widget
    extends graphql_flutter.Query<Query$CategoryPraises> {
  Query$CategoryPraises$Widget(
      {widgets.Key? key,
      Options$Query$CategoryPraises? options,
      required graphql_flutter.QueryBuilder<Query$CategoryPraises> builder})
      : super(
            key: key,
            options: options ?? Options$Query$CategoryPraises(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$CategoryPraises$posts {
  Query$CategoryPraises$posts(
      {this.edges, required this.pageInfo, required this.$__typename});

  @override
  factory Query$CategoryPraises$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$CategoryPraises$postsFromJson(json);

  final List<Query$CategoryPraises$posts$edges?>? edges;

  final Query$CategoryPraises$posts$pageInfo pageInfo;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$CategoryPraises$postsToJson(this);
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
    if (!(other is Query$CategoryPraises$posts) ||
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

    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$CategoryPraises$posts
    on Query$CategoryPraises$posts {
  CopyWith$Query$CategoryPraises$posts<Query$CategoryPraises$posts>
      get copyWith => CopyWith$Query$CategoryPraises$posts(this, (i) => i);
}

abstract class CopyWith$Query$CategoryPraises$posts<TRes> {
  factory CopyWith$Query$CategoryPraises$posts(
          Query$CategoryPraises$posts instance,
          TRes Function(Query$CategoryPraises$posts) then) =
      _CopyWithImpl$Query$CategoryPraises$posts;

  factory CopyWith$Query$CategoryPraises$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$CategoryPraises$posts;

  TRes call(
      {List<Query$CategoryPraises$posts$edges?>? edges,
      Query$CategoryPraises$posts$pageInfo? pageInfo,
      String? $__typename});
  TRes edges(
      Iterable<Query$CategoryPraises$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$CategoryPraises$posts$edges<
                      Query$CategoryPraises$posts$edges>?>?)
          _fn);
  CopyWith$Query$CategoryPraises$posts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$CategoryPraises$posts<TRes>
    implements CopyWith$Query$CategoryPraises$posts<TRes> {
  _CopyWithImpl$Query$CategoryPraises$posts(this._instance, this._then);

  final Query$CategoryPraises$posts _instance;

  final TRes Function(Query$CategoryPraises$posts) _then;

  static const _undefined = {};

  TRes call(
          {Object? edges = _undefined,
          Object? pageInfo = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$CategoryPraises$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$CategoryPraises$posts$edges?>?),
          pageInfo: pageInfo == _undefined || pageInfo == null
              ? _instance.pageInfo
              : (pageInfo as Query$CategoryPraises$posts$pageInfo),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$CategoryPraises$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$CategoryPraises$posts$edges<
                          Query$CategoryPraises$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
                  ? null
                  : CopyWith$Query$CategoryPraises$posts$edges(e, (i) => i)))
              ?.toList());
  CopyWith$Query$CategoryPraises$posts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$CategoryPraises$posts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$CategoryPraises$posts<TRes>
    implements CopyWith$Query$CategoryPraises$posts<TRes> {
  _CopyWithStubImpl$Query$CategoryPraises$posts(this._res);

  TRes _res;

  call(
          {List<Query$CategoryPraises$posts$edges?>? edges,
          Query$CategoryPraises$posts$pageInfo? pageInfo,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$CategoryPraises$posts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$CategoryPraises$posts$pageInfo.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$CategoryPraises$posts$edges {
  Query$CategoryPraises$posts$edges({this.node, required this.$__typename});

  @override
  factory Query$CategoryPraises$posts$edges.fromJson(
          Map<String, dynamic> json) =>
      _$Query$CategoryPraises$posts$edgesFromJson(json);

  final Fragment$PraiseSummary? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$CategoryPraises$posts$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$CategoryPraises$posts$edges) ||
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

extension UtilityExtension$Query$CategoryPraises$posts$edges
    on Query$CategoryPraises$posts$edges {
  CopyWith$Query$CategoryPraises$posts$edges<Query$CategoryPraises$posts$edges>
      get copyWith =>
          CopyWith$Query$CategoryPraises$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$CategoryPraises$posts$edges<TRes> {
  factory CopyWith$Query$CategoryPraises$posts$edges(
          Query$CategoryPraises$posts$edges instance,
          TRes Function(Query$CategoryPraises$posts$edges) then) =
      _CopyWithImpl$Query$CategoryPraises$posts$edges;

  factory CopyWith$Query$CategoryPraises$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$CategoryPraises$posts$edges;

  TRes call({Fragment$PraiseSummary? node, String? $__typename});
  CopyWith$Fragment$PraiseSummary<TRes> get node;
}

class _CopyWithImpl$Query$CategoryPraises$posts$edges<TRes>
    implements CopyWith$Query$CategoryPraises$posts$edges<TRes> {
  _CopyWithImpl$Query$CategoryPraises$posts$edges(this._instance, this._then);

  final Query$CategoryPraises$posts$edges _instance;

  final TRes Function(Query$CategoryPraises$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$CategoryPraises$posts$edges(
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

class _CopyWithStubImpl$Query$CategoryPraises$posts$edges<TRes>
    implements CopyWith$Query$CategoryPraises$posts$edges<TRes> {
  _CopyWithStubImpl$Query$CategoryPraises$posts$edges(this._res);

  TRes _res;

  call({Fragment$PraiseSummary? node, String? $__typename}) => _res;
  CopyWith$Fragment$PraiseSummary<TRes> get node =>
      CopyWith$Fragment$PraiseSummary.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$CategoryPraises$posts$pageInfo {
  Query$CategoryPraises$posts$pageInfo(
      {this.endCursor, required this.hasNextPage, required this.$__typename});

  @override
  factory Query$CategoryPraises$posts$pageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Query$CategoryPraises$posts$pageInfoFromJson(json);

  final String? endCursor;

  final bool hasNextPage;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$CategoryPraises$posts$pageInfoToJson(this);
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$endCursor, l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$CategoryPraises$posts$pageInfo) ||
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

extension UtilityExtension$Query$CategoryPraises$posts$pageInfo
    on Query$CategoryPraises$posts$pageInfo {
  CopyWith$Query$CategoryPraises$posts$pageInfo<
          Query$CategoryPraises$posts$pageInfo>
      get copyWith =>
          CopyWith$Query$CategoryPraises$posts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$CategoryPraises$posts$pageInfo<TRes> {
  factory CopyWith$Query$CategoryPraises$posts$pageInfo(
          Query$CategoryPraises$posts$pageInfo instance,
          TRes Function(Query$CategoryPraises$posts$pageInfo) then) =
      _CopyWithImpl$Query$CategoryPraises$posts$pageInfo;

  factory CopyWith$Query$CategoryPraises$posts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$CategoryPraises$posts$pageInfo;

  TRes call({String? endCursor, bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$CategoryPraises$posts$pageInfo<TRes>
    implements CopyWith$Query$CategoryPraises$posts$pageInfo<TRes> {
  _CopyWithImpl$Query$CategoryPraises$posts$pageInfo(
      this._instance, this._then);

  final Query$CategoryPraises$posts$pageInfo _instance;

  final TRes Function(Query$CategoryPraises$posts$pageInfo) _then;

  static const _undefined = {};

  TRes call(
          {Object? endCursor = _undefined,
          Object? hasNextPage = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$CategoryPraises$posts$pageInfo(
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

class _CopyWithStubImpl$Query$CategoryPraises$posts$pageInfo<TRes>
    implements CopyWith$Query$CategoryPraises$posts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$CategoryPraises$posts$pageInfo(this._res);

  TRes _res;

  call({String? endCursor, bool? hasNextPage, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$HashtagPraises {
  Variables$Query$HashtagPraises(
      {this.hashtagID, this.first, this.after, this.searchText});

  @override
  factory Variables$Query$HashtagPraises.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$HashtagPraisesFromJson(json);

  final String? hashtagID;

  final int? first;

  final String? after;

  final String? searchText;

  Map<String, dynamic> toJson() => _$Variables$Query$HashtagPraisesToJson(this);
  int get hashCode {
    final l$hashtagID = hashtagID;
    final l$first = first;
    final l$after = after;
    final l$searchText = searchText;
    return Object.hashAll([l$hashtagID, l$first, l$after, l$searchText]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$HashtagPraises) ||
        runtimeType != other.runtimeType) return false;
    final l$hashtagID = hashtagID;
    final lOther$hashtagID = other.hashtagID;
    if (l$hashtagID != lOther$hashtagID) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) return false;
    return true;
  }

  CopyWith$Variables$Query$HashtagPraises<Variables$Query$HashtagPraises>
      get copyWith => CopyWith$Variables$Query$HashtagPraises(this, (i) => i);
}

abstract class CopyWith$Variables$Query$HashtagPraises<TRes> {
  factory CopyWith$Variables$Query$HashtagPraises(
          Variables$Query$HashtagPraises instance,
          TRes Function(Variables$Query$HashtagPraises) then) =
      _CopyWithImpl$Variables$Query$HashtagPraises;

  factory CopyWith$Variables$Query$HashtagPraises.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$HashtagPraises;

  TRes call({String? hashtagID, int? first, String? after, String? searchText});
}

class _CopyWithImpl$Variables$Query$HashtagPraises<TRes>
    implements CopyWith$Variables$Query$HashtagPraises<TRes> {
  _CopyWithImpl$Variables$Query$HashtagPraises(this._instance, this._then);

  final Variables$Query$HashtagPraises _instance;

  final TRes Function(Variables$Query$HashtagPraises) _then;

  static const _undefined = {};

  TRes call(
          {Object? hashtagID = _undefined,
          Object? first = _undefined,
          Object? after = _undefined,
          Object? searchText = _undefined}) =>
      _then(Variables$Query$HashtagPraises(
          hashtagID: hashtagID == _undefined
              ? _instance.hashtagID
              : (hashtagID as String?),
          first: first == _undefined ? _instance.first : (first as int?),
          after: after == _undefined ? _instance.after : (after as String?),
          searchText: searchText == _undefined
              ? _instance.searchText
              : (searchText as String?)));
}

class _CopyWithStubImpl$Variables$Query$HashtagPraises<TRes>
    implements CopyWith$Variables$Query$HashtagPraises<TRes> {
  _CopyWithStubImpl$Variables$Query$HashtagPraises(this._res);

  TRes _res;

  call({String? hashtagID, int? first, String? after, String? searchText}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Query$HashtagPraises {
  Query$HashtagPraises({required this.posts, required this.$__typename});

  @override
  factory Query$HashtagPraises.fromJson(Map<String, dynamic> json) =>
      _$Query$HashtagPraisesFromJson(json);

  final Query$HashtagPraises$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HashtagPraisesToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HashtagPraises) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$HashtagPraises on Query$HashtagPraises {
  CopyWith$Query$HashtagPraises<Query$HashtagPraises> get copyWith =>
      CopyWith$Query$HashtagPraises(this, (i) => i);
}

abstract class CopyWith$Query$HashtagPraises<TRes> {
  factory CopyWith$Query$HashtagPraises(Query$HashtagPraises instance,
          TRes Function(Query$HashtagPraises) then) =
      _CopyWithImpl$Query$HashtagPraises;

  factory CopyWith$Query$HashtagPraises.stub(TRes res) =
      _CopyWithStubImpl$Query$HashtagPraises;

  TRes call({Query$HashtagPraises$posts? posts, String? $__typename});
  CopyWith$Query$HashtagPraises$posts<TRes> get posts;
}

class _CopyWithImpl$Query$HashtagPraises<TRes>
    implements CopyWith$Query$HashtagPraises<TRes> {
  _CopyWithImpl$Query$HashtagPraises(this._instance, this._then);

  final Query$HashtagPraises _instance;

  final TRes Function(Query$HashtagPraises) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$HashtagPraises(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$HashtagPraises$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$HashtagPraises$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$HashtagPraises$posts(
        local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$HashtagPraises<TRes>
    implements CopyWith$Query$HashtagPraises<TRes> {
  _CopyWithStubImpl$Query$HashtagPraises(this._res);

  TRes _res;

  call({Query$HashtagPraises$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$HashtagPraises$posts<TRes> get posts =>
      CopyWith$Query$HashtagPraises$posts.stub(_res);
}

const documentNodeQueryHashtagPraises = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'HashtagPraises'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hashtagID')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
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
            directives: []),
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
                        value: EnumValueNode(name: NameNode(value: 'praise'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'or'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'hasHashtagsWith'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'id'),
                                      value: VariableNode(
                                          name: NameNode(value: 'hashtagID')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'titleContainsFold'),
                                value: VariableNode(
                                    name: NameNode(value: 'searchText')))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'contentContainsFold'),
                                value: VariableNode(
                                    name: NameNode(value: 'searchText')))
                          ])
                        ]))
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
Query$HashtagPraises _parserFn$Query$HashtagPraises(
        Map<String, dynamic> data) =>
    Query$HashtagPraises.fromJson(data);

class Options$Query$HashtagPraises
    extends graphql.QueryOptions<Query$HashtagPraises> {
  Options$Query$HashtagPraises(
      {String? operationName,
      Variables$Query$HashtagPraises? variables,
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
            document: documentNodeQueryHashtagPraises,
            parserFn: _parserFn$Query$HashtagPraises);
}

class WatchOptions$Query$HashtagPraises
    extends graphql.WatchQueryOptions<Query$HashtagPraises> {
  WatchOptions$Query$HashtagPraises(
      {String? operationName,
      Variables$Query$HashtagPraises? variables,
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
            document: documentNodeQueryHashtagPraises,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$HashtagPraises);
}

class FetchMoreOptions$Query$HashtagPraises extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$HashtagPraises(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$HashtagPraises? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryHashtagPraises);
}

extension ClientExtension$Query$HashtagPraises on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$HashtagPraises>> query$HashtagPraises(
          [Options$Query$HashtagPraises? options]) async =>
      await this.query(options ?? Options$Query$HashtagPraises());
  graphql.ObservableQuery<Query$HashtagPraises> watchQuery$HashtagPraises(
          [WatchOptions$Query$HashtagPraises? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$HashtagPraises());
  void writeQuery$HashtagPraises(
          {required Query$HashtagPraises data,
          Variables$Query$HashtagPraises? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryHashtagPraises),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$HashtagPraises? readQuery$HashtagPraises(
      {Variables$Query$HashtagPraises? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryHashtagPraises),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$HashtagPraises.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$HashtagPraises> useQuery$HashtagPraises(
        [Options$Query$HashtagPraises? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$HashtagPraises());
graphql.ObservableQuery<Query$HashtagPraises> useWatchQuery$HashtagPraises(
        [WatchOptions$Query$HashtagPraises? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$HashtagPraises());

class Query$HashtagPraises$Widget
    extends graphql_flutter.Query<Query$HashtagPraises> {
  Query$HashtagPraises$Widget(
      {widgets.Key? key,
      Options$Query$HashtagPraises? options,
      required graphql_flutter.QueryBuilder<Query$HashtagPraises> builder})
      : super(
            key: key,
            options: options ?? Options$Query$HashtagPraises(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$HashtagPraises$posts {
  Query$HashtagPraises$posts(
      {this.edges, required this.pageInfo, required this.$__typename});

  @override
  factory Query$HashtagPraises$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$HashtagPraises$postsFromJson(json);

  final List<Query$HashtagPraises$posts$edges?>? edges;

  final Query$HashtagPraises$posts$pageInfo pageInfo;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HashtagPraises$postsToJson(this);
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
    if (!(other is Query$HashtagPraises$posts) ||
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

    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$HashtagPraises$posts
    on Query$HashtagPraises$posts {
  CopyWith$Query$HashtagPraises$posts<Query$HashtagPraises$posts>
      get copyWith => CopyWith$Query$HashtagPraises$posts(this, (i) => i);
}

abstract class CopyWith$Query$HashtagPraises$posts<TRes> {
  factory CopyWith$Query$HashtagPraises$posts(
          Query$HashtagPraises$posts instance,
          TRes Function(Query$HashtagPraises$posts) then) =
      _CopyWithImpl$Query$HashtagPraises$posts;

  factory CopyWith$Query$HashtagPraises$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$HashtagPraises$posts;

  TRes call(
      {List<Query$HashtagPraises$posts$edges?>? edges,
      Query$HashtagPraises$posts$pageInfo? pageInfo,
      String? $__typename});
  TRes edges(
      Iterable<Query$HashtagPraises$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$HashtagPraises$posts$edges<
                      Query$HashtagPraises$posts$edges>?>?)
          _fn);
  CopyWith$Query$HashtagPraises$posts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$HashtagPraises$posts<TRes>
    implements CopyWith$Query$HashtagPraises$posts<TRes> {
  _CopyWithImpl$Query$HashtagPraises$posts(this._instance, this._then);

  final Query$HashtagPraises$posts _instance;

  final TRes Function(Query$HashtagPraises$posts) _then;

  static const _undefined = {};

  TRes call(
          {Object? edges = _undefined,
          Object? pageInfo = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$HashtagPraises$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$HashtagPraises$posts$edges?>?),
          pageInfo: pageInfo == _undefined || pageInfo == null
              ? _instance.pageInfo
              : (pageInfo as Query$HashtagPraises$posts$pageInfo),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$HashtagPraises$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$HashtagPraises$posts$edges<
                          Query$HashtagPraises$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
                  ? null
                  : CopyWith$Query$HashtagPraises$posts$edges(e, (i) => i)))
              ?.toList());
  CopyWith$Query$HashtagPraises$posts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$HashtagPraises$posts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$HashtagPraises$posts<TRes>
    implements CopyWith$Query$HashtagPraises$posts<TRes> {
  _CopyWithStubImpl$Query$HashtagPraises$posts(this._res);

  TRes _res;

  call(
          {List<Query$HashtagPraises$posts$edges?>? edges,
          Query$HashtagPraises$posts$pageInfo? pageInfo,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$HashtagPraises$posts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$HashtagPraises$posts$pageInfo.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$HashtagPraises$posts$edges {
  Query$HashtagPraises$posts$edges({this.node, required this.$__typename});

  @override
  factory Query$HashtagPraises$posts$edges.fromJson(
          Map<String, dynamic> json) =>
      _$Query$HashtagPraises$posts$edgesFromJson(json);

  final Fragment$PraiseSummary? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$HashtagPraises$posts$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HashtagPraises$posts$edges) ||
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

extension UtilityExtension$Query$HashtagPraises$posts$edges
    on Query$HashtagPraises$posts$edges {
  CopyWith$Query$HashtagPraises$posts$edges<Query$HashtagPraises$posts$edges>
      get copyWith => CopyWith$Query$HashtagPraises$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$HashtagPraises$posts$edges<TRes> {
  factory CopyWith$Query$HashtagPraises$posts$edges(
          Query$HashtagPraises$posts$edges instance,
          TRes Function(Query$HashtagPraises$posts$edges) then) =
      _CopyWithImpl$Query$HashtagPraises$posts$edges;

  factory CopyWith$Query$HashtagPraises$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$HashtagPraises$posts$edges;

  TRes call({Fragment$PraiseSummary? node, String? $__typename});
  CopyWith$Fragment$PraiseSummary<TRes> get node;
}

class _CopyWithImpl$Query$HashtagPraises$posts$edges<TRes>
    implements CopyWith$Query$HashtagPraises$posts$edges<TRes> {
  _CopyWithImpl$Query$HashtagPraises$posts$edges(this._instance, this._then);

  final Query$HashtagPraises$posts$edges _instance;

  final TRes Function(Query$HashtagPraises$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$HashtagPraises$posts$edges(
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

class _CopyWithStubImpl$Query$HashtagPraises$posts$edges<TRes>
    implements CopyWith$Query$HashtagPraises$posts$edges<TRes> {
  _CopyWithStubImpl$Query$HashtagPraises$posts$edges(this._res);

  TRes _res;

  call({Fragment$PraiseSummary? node, String? $__typename}) => _res;
  CopyWith$Fragment$PraiseSummary<TRes> get node =>
      CopyWith$Fragment$PraiseSummary.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$HashtagPraises$posts$pageInfo {
  Query$HashtagPraises$posts$pageInfo(
      {this.endCursor, required this.hasNextPage, required this.$__typename});

  @override
  factory Query$HashtagPraises$posts$pageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Query$HashtagPraises$posts$pageInfoFromJson(json);

  final String? endCursor;

  final bool hasNextPage;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$HashtagPraises$posts$pageInfoToJson(this);
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$endCursor, l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HashtagPraises$posts$pageInfo) ||
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

extension UtilityExtension$Query$HashtagPraises$posts$pageInfo
    on Query$HashtagPraises$posts$pageInfo {
  CopyWith$Query$HashtagPraises$posts$pageInfo<
          Query$HashtagPraises$posts$pageInfo>
      get copyWith =>
          CopyWith$Query$HashtagPraises$posts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$HashtagPraises$posts$pageInfo<TRes> {
  factory CopyWith$Query$HashtagPraises$posts$pageInfo(
          Query$HashtagPraises$posts$pageInfo instance,
          TRes Function(Query$HashtagPraises$posts$pageInfo) then) =
      _CopyWithImpl$Query$HashtagPraises$posts$pageInfo;

  factory CopyWith$Query$HashtagPraises$posts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$HashtagPraises$posts$pageInfo;

  TRes call({String? endCursor, bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$HashtagPraises$posts$pageInfo<TRes>
    implements CopyWith$Query$HashtagPraises$posts$pageInfo<TRes> {
  _CopyWithImpl$Query$HashtagPraises$posts$pageInfo(this._instance, this._then);

  final Query$HashtagPraises$posts$pageInfo _instance;

  final TRes Function(Query$HashtagPraises$posts$pageInfo) _then;

  static const _undefined = {};

  TRes call(
          {Object? endCursor = _undefined,
          Object? hasNextPage = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$HashtagPraises$posts$pageInfo(
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

class _CopyWithStubImpl$Query$HashtagPraises$posts$pageInfo<TRes>
    implements CopyWith$Query$HashtagPraises$posts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$HashtagPraises$posts$pageInfo(this._res);

  TRes _res;

  call({String? endCursor, bool? hasNextPage, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$CategoryLetters {
  Variables$Query$CategoryLetters({this.categoryID, this.first, this.after});

  @override
  factory Variables$Query$CategoryLetters.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$CategoryLettersFromJson(json);

  final String? categoryID;

  final int? first;

  final String? after;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$CategoryLettersToJson(this);
  int get hashCode {
    final l$categoryID = categoryID;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([l$categoryID, l$first, l$after]);
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
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
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

  TRes call({String? categoryID, int? first, String? after});
}

class _CopyWithImpl$Variables$Query$CategoryLetters<TRes>
    implements CopyWith$Variables$Query$CategoryLetters<TRes> {
  _CopyWithImpl$Variables$Query$CategoryLetters(this._instance, this._then);

  final Variables$Query$CategoryLetters _instance;

  final TRes Function(Variables$Query$CategoryLetters) _then;

  static const _undefined = {};

  TRes call(
          {Object? categoryID = _undefined,
          Object? first = _undefined,
          Object? after = _undefined}) =>
      _then(Variables$Query$CategoryLetters(
          categoryID: categoryID == _undefined
              ? _instance.categoryID
              : (categoryID as String?),
          first: first == _undefined ? _instance.first : (first as int?),
          after: after == _undefined ? _instance.after : (after as String?)));
}

class _CopyWithStubImpl$Variables$Query$CategoryLetters<TRes>
    implements CopyWith$Variables$Query$CategoryLetters<TRes> {
  _CopyWithStubImpl$Variables$Query$CategoryLetters(this._res);

  TRes _res;

  call({String? categoryID, int? first, String? after}) => _res;
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
                        value: EnumValueNode(name: NameNode(value: 'letter'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'hasCategoryWith'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'id'),
                              value: VariableNode(
                                  name: NameNode(value: 'categoryID')))
                        ]))
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
  Query$CategoryLetters$posts(
      {this.edges, required this.pageInfo, required this.$__typename});

  @override
  factory Query$CategoryLetters$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$CategoryLetters$postsFromJson(json);

  final List<Query$CategoryLetters$posts$edges?>? edges;

  final Query$CategoryLetters$posts$pageInfo pageInfo;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$CategoryLetters$postsToJson(this);
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

    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) return false;
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
      {List<Query$CategoryLetters$posts$edges?>? edges,
      Query$CategoryLetters$posts$pageInfo? pageInfo,
      String? $__typename});
  TRes edges(
      Iterable<Query$CategoryLetters$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$CategoryLetters$posts$edges<
                      Query$CategoryLetters$posts$edges>?>?)
          _fn);
  CopyWith$Query$CategoryLetters$posts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$CategoryLetters$posts<TRes>
    implements CopyWith$Query$CategoryLetters$posts<TRes> {
  _CopyWithImpl$Query$CategoryLetters$posts(this._instance, this._then);

  final Query$CategoryLetters$posts _instance;

  final TRes Function(Query$CategoryLetters$posts) _then;

  static const _undefined = {};

  TRes call(
          {Object? edges = _undefined,
          Object? pageInfo = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$CategoryLetters$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$CategoryLetters$posts$edges?>?),
          pageInfo: pageInfo == _undefined || pageInfo == null
              ? _instance.pageInfo
              : (pageInfo as Query$CategoryLetters$posts$pageInfo),
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
  CopyWith$Query$CategoryLetters$posts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$CategoryLetters$posts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$CategoryLetters$posts<TRes>
    implements CopyWith$Query$CategoryLetters$posts<TRes> {
  _CopyWithStubImpl$Query$CategoryLetters$posts(this._res);

  TRes _res;

  call(
          {List<Query$CategoryLetters$posts$edges?>? edges,
          Query$CategoryLetters$posts$pageInfo? pageInfo,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$CategoryLetters$posts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$CategoryLetters$posts$pageInfo.stub(_res);
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

@JsonSerializable(explicitToJson: true)
class Query$CategoryLetters$posts$pageInfo {
  Query$CategoryLetters$posts$pageInfo(
      {this.endCursor, required this.hasNextPage, required this.$__typename});

  @override
  factory Query$CategoryLetters$posts$pageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Query$CategoryLetters$posts$pageInfoFromJson(json);

  final String? endCursor;

  final bool hasNextPage;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$CategoryLetters$posts$pageInfoToJson(this);
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$endCursor, l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$CategoryLetters$posts$pageInfo) ||
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

extension UtilityExtension$Query$CategoryLetters$posts$pageInfo
    on Query$CategoryLetters$posts$pageInfo {
  CopyWith$Query$CategoryLetters$posts$pageInfo<
          Query$CategoryLetters$posts$pageInfo>
      get copyWith =>
          CopyWith$Query$CategoryLetters$posts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$CategoryLetters$posts$pageInfo<TRes> {
  factory CopyWith$Query$CategoryLetters$posts$pageInfo(
          Query$CategoryLetters$posts$pageInfo instance,
          TRes Function(Query$CategoryLetters$posts$pageInfo) then) =
      _CopyWithImpl$Query$CategoryLetters$posts$pageInfo;

  factory CopyWith$Query$CategoryLetters$posts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$CategoryLetters$posts$pageInfo;

  TRes call({String? endCursor, bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$CategoryLetters$posts$pageInfo<TRes>
    implements CopyWith$Query$CategoryLetters$posts$pageInfo<TRes> {
  _CopyWithImpl$Query$CategoryLetters$posts$pageInfo(
      this._instance, this._then);

  final Query$CategoryLetters$posts$pageInfo _instance;

  final TRes Function(Query$CategoryLetters$posts$pageInfo) _then;

  static const _undefined = {};

  TRes call(
          {Object? endCursor = _undefined,
          Object? hasNextPage = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$CategoryLetters$posts$pageInfo(
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

class _CopyWithStubImpl$Query$CategoryLetters$posts$pageInfo<TRes>
    implements CopyWith$Query$CategoryLetters$posts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$CategoryLetters$posts$pageInfo(this._res);

  TRes _res;

  call({String? endCursor, bool? hasNextPage, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$HashtagLetters {
  Variables$Query$HashtagLetters(
      {this.hashtagID, this.first, this.after, this.searchText});

  @override
  factory Variables$Query$HashtagLetters.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$HashtagLettersFromJson(json);

  final String? hashtagID;

  final int? first;

  final String? after;

  final String? searchText;

  Map<String, dynamic> toJson() => _$Variables$Query$HashtagLettersToJson(this);
  int get hashCode {
    final l$hashtagID = hashtagID;
    final l$first = first;
    final l$after = after;
    final l$searchText = searchText;
    return Object.hashAll([l$hashtagID, l$first, l$after, l$searchText]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$HashtagLetters) ||
        runtimeType != other.runtimeType) return false;
    final l$hashtagID = hashtagID;
    final lOther$hashtagID = other.hashtagID;
    if (l$hashtagID != lOther$hashtagID) return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) return false;
    return true;
  }

  CopyWith$Variables$Query$HashtagLetters<Variables$Query$HashtagLetters>
      get copyWith => CopyWith$Variables$Query$HashtagLetters(this, (i) => i);
}

abstract class CopyWith$Variables$Query$HashtagLetters<TRes> {
  factory CopyWith$Variables$Query$HashtagLetters(
          Variables$Query$HashtagLetters instance,
          TRes Function(Variables$Query$HashtagLetters) then) =
      _CopyWithImpl$Variables$Query$HashtagLetters;

  factory CopyWith$Variables$Query$HashtagLetters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$HashtagLetters;

  TRes call({String? hashtagID, int? first, String? after, String? searchText});
}

class _CopyWithImpl$Variables$Query$HashtagLetters<TRes>
    implements CopyWith$Variables$Query$HashtagLetters<TRes> {
  _CopyWithImpl$Variables$Query$HashtagLetters(this._instance, this._then);

  final Variables$Query$HashtagLetters _instance;

  final TRes Function(Variables$Query$HashtagLetters) _then;

  static const _undefined = {};

  TRes call(
          {Object? hashtagID = _undefined,
          Object? first = _undefined,
          Object? after = _undefined,
          Object? searchText = _undefined}) =>
      _then(Variables$Query$HashtagLetters(
          hashtagID: hashtagID == _undefined
              ? _instance.hashtagID
              : (hashtagID as String?),
          first: first == _undefined ? _instance.first : (first as int?),
          after: after == _undefined ? _instance.after : (after as String?),
          searchText: searchText == _undefined
              ? _instance.searchText
              : (searchText as String?)));
}

class _CopyWithStubImpl$Variables$Query$HashtagLetters<TRes>
    implements CopyWith$Variables$Query$HashtagLetters<TRes> {
  _CopyWithStubImpl$Variables$Query$HashtagLetters(this._res);

  TRes _res;

  call({String? hashtagID, int? first, String? after, String? searchText}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Query$HashtagLetters {
  Query$HashtagLetters({required this.posts, required this.$__typename});

  @override
  factory Query$HashtagLetters.fromJson(Map<String, dynamic> json) =>
      _$Query$HashtagLettersFromJson(json);

  final Query$HashtagLetters$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HashtagLettersToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HashtagLetters) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$HashtagLetters on Query$HashtagLetters {
  CopyWith$Query$HashtagLetters<Query$HashtagLetters> get copyWith =>
      CopyWith$Query$HashtagLetters(this, (i) => i);
}

abstract class CopyWith$Query$HashtagLetters<TRes> {
  factory CopyWith$Query$HashtagLetters(Query$HashtagLetters instance,
          TRes Function(Query$HashtagLetters) then) =
      _CopyWithImpl$Query$HashtagLetters;

  factory CopyWith$Query$HashtagLetters.stub(TRes res) =
      _CopyWithStubImpl$Query$HashtagLetters;

  TRes call({Query$HashtagLetters$posts? posts, String? $__typename});
  CopyWith$Query$HashtagLetters$posts<TRes> get posts;
}

class _CopyWithImpl$Query$HashtagLetters<TRes>
    implements CopyWith$Query$HashtagLetters<TRes> {
  _CopyWithImpl$Query$HashtagLetters(this._instance, this._then);

  final Query$HashtagLetters _instance;

  final TRes Function(Query$HashtagLetters) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$HashtagLetters(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$HashtagLetters$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$HashtagLetters$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$HashtagLetters$posts(
        local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$HashtagLetters<TRes>
    implements CopyWith$Query$HashtagLetters<TRes> {
  _CopyWithStubImpl$Query$HashtagLetters(this._res);

  TRes _res;

  call({Query$HashtagLetters$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$HashtagLetters$posts<TRes> get posts =>
      CopyWith$Query$HashtagLetters$posts.stub(_res);
}

const documentNodeQueryHashtagLetters = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'HashtagLetters'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hashtagID')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
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
            directives: []),
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
                        value: EnumValueNode(name: NameNode(value: 'letter'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'or'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'hasHashtagsWith'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'id'),
                                      value: VariableNode(
                                          name: NameNode(value: 'hashtagID')))
                                ]))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'titleContainsFold'),
                                value: VariableNode(
                                    name: NameNode(value: 'searchText')))
                          ]),
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'contentContainsFold'),
                                value: VariableNode(
                                    name: NameNode(value: 'searchText')))
                          ])
                        ]))
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
  fragmentDefinitionLetterSummary,
]);
Query$HashtagLetters _parserFn$Query$HashtagLetters(
        Map<String, dynamic> data) =>
    Query$HashtagLetters.fromJson(data);

class Options$Query$HashtagLetters
    extends graphql.QueryOptions<Query$HashtagLetters> {
  Options$Query$HashtagLetters(
      {String? operationName,
      Variables$Query$HashtagLetters? variables,
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
            document: documentNodeQueryHashtagLetters,
            parserFn: _parserFn$Query$HashtagLetters);
}

class WatchOptions$Query$HashtagLetters
    extends graphql.WatchQueryOptions<Query$HashtagLetters> {
  WatchOptions$Query$HashtagLetters(
      {String? operationName,
      Variables$Query$HashtagLetters? variables,
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
            document: documentNodeQueryHashtagLetters,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$HashtagLetters);
}

class FetchMoreOptions$Query$HashtagLetters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$HashtagLetters(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$HashtagLetters? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryHashtagLetters);
}

extension ClientExtension$Query$HashtagLetters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$HashtagLetters>> query$HashtagLetters(
          [Options$Query$HashtagLetters? options]) async =>
      await this.query(options ?? Options$Query$HashtagLetters());
  graphql.ObservableQuery<Query$HashtagLetters> watchQuery$HashtagLetters(
          [WatchOptions$Query$HashtagLetters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$HashtagLetters());
  void writeQuery$HashtagLetters(
          {required Query$HashtagLetters data,
          Variables$Query$HashtagLetters? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryHashtagLetters),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$HashtagLetters? readQuery$HashtagLetters(
      {Variables$Query$HashtagLetters? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryHashtagLetters),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$HashtagLetters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$HashtagLetters> useQuery$HashtagLetters(
        [Options$Query$HashtagLetters? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$HashtagLetters());
graphql.ObservableQuery<Query$HashtagLetters> useWatchQuery$HashtagLetters(
        [WatchOptions$Query$HashtagLetters? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$HashtagLetters());

class Query$HashtagLetters$Widget
    extends graphql_flutter.Query<Query$HashtagLetters> {
  Query$HashtagLetters$Widget(
      {widgets.Key? key,
      Options$Query$HashtagLetters? options,
      required graphql_flutter.QueryBuilder<Query$HashtagLetters> builder})
      : super(
            key: key,
            options: options ?? Options$Query$HashtagLetters(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$HashtagLetters$posts {
  Query$HashtagLetters$posts(
      {this.edges, required this.pageInfo, required this.$__typename});

  @override
  factory Query$HashtagLetters$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$HashtagLetters$postsFromJson(json);

  final List<Query$HashtagLetters$posts$edges?>? edges;

  final Query$HashtagLetters$posts$pageInfo pageInfo;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HashtagLetters$postsToJson(this);
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
    if (!(other is Query$HashtagLetters$posts) ||
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

    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$HashtagLetters$posts
    on Query$HashtagLetters$posts {
  CopyWith$Query$HashtagLetters$posts<Query$HashtagLetters$posts>
      get copyWith => CopyWith$Query$HashtagLetters$posts(this, (i) => i);
}

abstract class CopyWith$Query$HashtagLetters$posts<TRes> {
  factory CopyWith$Query$HashtagLetters$posts(
          Query$HashtagLetters$posts instance,
          TRes Function(Query$HashtagLetters$posts) then) =
      _CopyWithImpl$Query$HashtagLetters$posts;

  factory CopyWith$Query$HashtagLetters$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$HashtagLetters$posts;

  TRes call(
      {List<Query$HashtagLetters$posts$edges?>? edges,
      Query$HashtagLetters$posts$pageInfo? pageInfo,
      String? $__typename});
  TRes edges(
      Iterable<Query$HashtagLetters$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$HashtagLetters$posts$edges<
                      Query$HashtagLetters$posts$edges>?>?)
          _fn);
  CopyWith$Query$HashtagLetters$posts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$HashtagLetters$posts<TRes>
    implements CopyWith$Query$HashtagLetters$posts<TRes> {
  _CopyWithImpl$Query$HashtagLetters$posts(this._instance, this._then);

  final Query$HashtagLetters$posts _instance;

  final TRes Function(Query$HashtagLetters$posts) _then;

  static const _undefined = {};

  TRes call(
          {Object? edges = _undefined,
          Object? pageInfo = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$HashtagLetters$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$HashtagLetters$posts$edges?>?),
          pageInfo: pageInfo == _undefined || pageInfo == null
              ? _instance.pageInfo
              : (pageInfo as Query$HashtagLetters$posts$pageInfo),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$HashtagLetters$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$HashtagLetters$posts$edges<
                          Query$HashtagLetters$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
                  ? null
                  : CopyWith$Query$HashtagLetters$posts$edges(e, (i) => i)))
              ?.toList());
  CopyWith$Query$HashtagLetters$posts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$HashtagLetters$posts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$HashtagLetters$posts<TRes>
    implements CopyWith$Query$HashtagLetters$posts<TRes> {
  _CopyWithStubImpl$Query$HashtagLetters$posts(this._res);

  TRes _res;

  call(
          {List<Query$HashtagLetters$posts$edges?>? edges,
          Query$HashtagLetters$posts$pageInfo? pageInfo,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$HashtagLetters$posts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$HashtagLetters$posts$pageInfo.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$HashtagLetters$posts$edges {
  Query$HashtagLetters$posts$edges({this.node, required this.$__typename});

  @override
  factory Query$HashtagLetters$posts$edges.fromJson(
          Map<String, dynamic> json) =>
      _$Query$HashtagLetters$posts$edgesFromJson(json);

  final Fragment$LetterSummary? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$HashtagLetters$posts$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HashtagLetters$posts$edges) ||
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

extension UtilityExtension$Query$HashtagLetters$posts$edges
    on Query$HashtagLetters$posts$edges {
  CopyWith$Query$HashtagLetters$posts$edges<Query$HashtagLetters$posts$edges>
      get copyWith => CopyWith$Query$HashtagLetters$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$HashtagLetters$posts$edges<TRes> {
  factory CopyWith$Query$HashtagLetters$posts$edges(
          Query$HashtagLetters$posts$edges instance,
          TRes Function(Query$HashtagLetters$posts$edges) then) =
      _CopyWithImpl$Query$HashtagLetters$posts$edges;

  factory CopyWith$Query$HashtagLetters$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$HashtagLetters$posts$edges;

  TRes call({Fragment$LetterSummary? node, String? $__typename});
  CopyWith$Fragment$LetterSummary<TRes> get node;
}

class _CopyWithImpl$Query$HashtagLetters$posts$edges<TRes>
    implements CopyWith$Query$HashtagLetters$posts$edges<TRes> {
  _CopyWithImpl$Query$HashtagLetters$posts$edges(this._instance, this._then);

  final Query$HashtagLetters$posts$edges _instance;

  final TRes Function(Query$HashtagLetters$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$HashtagLetters$posts$edges(
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

class _CopyWithStubImpl$Query$HashtagLetters$posts$edges<TRes>
    implements CopyWith$Query$HashtagLetters$posts$edges<TRes> {
  _CopyWithStubImpl$Query$HashtagLetters$posts$edges(this._res);

  TRes _res;

  call({Fragment$LetterSummary? node, String? $__typename}) => _res;
  CopyWith$Fragment$LetterSummary<TRes> get node =>
      CopyWith$Fragment$LetterSummary.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$HashtagLetters$posts$pageInfo {
  Query$HashtagLetters$posts$pageInfo(
      {this.endCursor, required this.hasNextPage, required this.$__typename});

  @override
  factory Query$HashtagLetters$posts$pageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Query$HashtagLetters$posts$pageInfoFromJson(json);

  final String? endCursor;

  final bool hasNextPage;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$HashtagLetters$posts$pageInfoToJson(this);
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$endCursor, l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HashtagLetters$posts$pageInfo) ||
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

extension UtilityExtension$Query$HashtagLetters$posts$pageInfo
    on Query$HashtagLetters$posts$pageInfo {
  CopyWith$Query$HashtagLetters$posts$pageInfo<
          Query$HashtagLetters$posts$pageInfo>
      get copyWith =>
          CopyWith$Query$HashtagLetters$posts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$HashtagLetters$posts$pageInfo<TRes> {
  factory CopyWith$Query$HashtagLetters$posts$pageInfo(
          Query$HashtagLetters$posts$pageInfo instance,
          TRes Function(Query$HashtagLetters$posts$pageInfo) then) =
      _CopyWithImpl$Query$HashtagLetters$posts$pageInfo;

  factory CopyWith$Query$HashtagLetters$posts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$HashtagLetters$posts$pageInfo;

  TRes call({String? endCursor, bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$HashtagLetters$posts$pageInfo<TRes>
    implements CopyWith$Query$HashtagLetters$posts$pageInfo<TRes> {
  _CopyWithImpl$Query$HashtagLetters$posts$pageInfo(this._instance, this._then);

  final Query$HashtagLetters$posts$pageInfo _instance;

  final TRes Function(Query$HashtagLetters$posts$pageInfo) _then;

  static const _undefined = {};

  TRes call(
          {Object? endCursor = _undefined,
          Object? hasNextPage = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$HashtagLetters$posts$pageInfo(
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

class _CopyWithStubImpl$Query$HashtagLetters$posts$pageInfo<TRes>
    implements CopyWith$Query$HashtagLetters$posts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$HashtagLetters$posts$pageInfo(this._res);

  TRes _res;

  call({String? endCursor, bool? hasNextPage, String? $__typename}) => _res;
}
