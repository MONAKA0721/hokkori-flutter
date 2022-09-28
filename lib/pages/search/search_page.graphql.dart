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
