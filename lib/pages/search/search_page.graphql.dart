import '../common/common.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$LikedPraises {
  factory Variables$Query$LikedPraises({required int first}) =>
      Variables$Query$LikedPraises._({
        r'first': first,
      });

  Variables$Query$LikedPraises._(this._$data);

  factory Variables$Query$LikedPraises.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    return Variables$Query$LikedPraises._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    return result$data;
  }

  CopyWith$Variables$Query$LikedPraises<Variables$Query$LikedPraises>
      get copyWith => CopyWith$Variables$Query$LikedPraises(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$LikedPraises) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }
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

  TRes call({Object? first = _undefined}) =>
      _then(Variables$Query$LikedPraises._({
        ..._instance._$data,
        if (first != _undefined && first != null) 'first': (first as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$LikedPraises<TRes>
    implements CopyWith$Variables$Query$LikedPraises<TRes> {
  _CopyWithStubImpl$Variables$Query$LikedPraises(this._res);

  TRes _res;

  call({int? first}) => _res;
}

class Query$LikedPraises {
  Query$LikedPraises({required this.likedPosts, required this.$__typename});

  factory Query$LikedPraises.fromJson(Map<String, dynamic> json) {
    final l$likedPosts = json['likedPosts'];
    final l$$__typename = json['__typename'];
    return Query$LikedPraises(
        likedPosts: (l$likedPosts as List<dynamic>)
            .map((e) => e == null
                ? null
                : Query$LikedPraises$likedPosts.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Query$LikedPraises$likedPosts?> likedPosts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$likedPosts = likedPosts;
    _resultData['likedPosts'] = l$likedPosts.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$likedPosts = likedPosts;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$likedPosts.map((v) => v)), l$$__typename]);
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
    if (l$likedPosts.length != lOther$likedPosts.length) {
      return false;
    }
    for (int i = 0; i < l$likedPosts.length; i++) {
      final l$likedPosts$entry = l$likedPosts[i];
      final lOther$likedPosts$entry = lOther$likedPosts[i];
      if (l$likedPosts$entry != lOther$likedPosts$entry) {
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

class Query$LikedPraises$likedPosts {
  Query$LikedPraises$likedPosts(
      {required this.id, required this.title, required this.$__typename});

  factory Query$LikedPraises$likedPosts.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$LikedPraises$likedPosts(
        id: (l$id as String),
        title: (l$title as String),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$id, l$title, l$$__typename]);
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

class Variables$Query$LikedLetters {
  factory Variables$Query$LikedLetters({required int first}) =>
      Variables$Query$LikedLetters._({
        r'first': first,
      });

  Variables$Query$LikedLetters._(this._$data);

  factory Variables$Query$LikedLetters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    return Variables$Query$LikedLetters._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    return result$data;
  }

  CopyWith$Variables$Query$LikedLetters<Variables$Query$LikedLetters>
      get copyWith => CopyWith$Variables$Query$LikedLetters(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$LikedLetters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }
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

  TRes call({Object? first = _undefined}) =>
      _then(Variables$Query$LikedLetters._({
        ..._instance._$data,
        if (first != _undefined && first != null) 'first': (first as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$LikedLetters<TRes>
    implements CopyWith$Variables$Query$LikedLetters<TRes> {
  _CopyWithStubImpl$Variables$Query$LikedLetters(this._res);

  TRes _res;

  call({int? first}) => _res;
}

class Query$LikedLetters {
  Query$LikedLetters({required this.likedPosts, required this.$__typename});

  factory Query$LikedLetters.fromJson(Map<String, dynamic> json) {
    final l$likedPosts = json['likedPosts'];
    final l$$__typename = json['__typename'];
    return Query$LikedLetters(
        likedPosts: (l$likedPosts as List<dynamic>)
            .map((e) => e == null
                ? null
                : Fragment$LetterSummary.fromJson((e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Fragment$LetterSummary?> likedPosts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$likedPosts = likedPosts;
    _resultData['likedPosts'] = l$likedPosts.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$likedPosts = likedPosts;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$likedPosts.map((v) => v)), l$$__typename]);
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
    if (l$likedPosts.length != lOther$likedPosts.length) {
      return false;
    }
    for (int i = 0; i < l$likedPosts.length; i++) {
      final l$likedPosts$entry = l$likedPosts[i];
      final lOther$likedPosts$entry = lOther$likedPosts[i];
      if (l$likedPosts$entry != lOther$likedPosts$entry) {
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

class Variables$Query$TopicWorks {
  factory Variables$Query$TopicWorks({required int first}) =>
      Variables$Query$TopicWorks._({
        r'first': first,
      });

  Variables$Query$TopicWorks._(this._$data);

  factory Variables$Query$TopicWorks.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    return Variables$Query$TopicWorks._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    return result$data;
  }

  CopyWith$Variables$Query$TopicWorks<Variables$Query$TopicWorks>
      get copyWith => CopyWith$Variables$Query$TopicWorks(this, (i) => i);
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
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }
}

abstract class CopyWith$Variables$Query$TopicWorks<TRes> {
  factory CopyWith$Variables$Query$TopicWorks(
          Variables$Query$TopicWorks instance,
          TRes Function(Variables$Query$TopicWorks) then) =
      _CopyWithImpl$Variables$Query$TopicWorks;

  factory CopyWith$Variables$Query$TopicWorks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TopicWorks;

  TRes call({int? first});
}

class _CopyWithImpl$Variables$Query$TopicWorks<TRes>
    implements CopyWith$Variables$Query$TopicWorks<TRes> {
  _CopyWithImpl$Variables$Query$TopicWorks(this._instance, this._then);

  final Variables$Query$TopicWorks _instance;

  final TRes Function(Variables$Query$TopicWorks) _then;

  static const _undefined = {};

  TRes call({Object? first = _undefined}) =>
      _then(Variables$Query$TopicWorks._({
        ..._instance._$data,
        if (first != _undefined && first != null) 'first': (first as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$TopicWorks<TRes>
    implements CopyWith$Variables$Query$TopicWorks<TRes> {
  _CopyWithStubImpl$Variables$Query$TopicWorks(this._res);

  TRes _res;

  call({int? first}) => _res;
}

class Query$TopicWorks {
  Query$TopicWorks({required this.topicWorks, required this.$__typename});

  factory Query$TopicWorks.fromJson(Map<String, dynamic> json) {
    final l$topicWorks = json['topicWorks'];
    final l$$__typename = json['__typename'];
    return Query$TopicWorks(
        topicWorks: (l$topicWorks as List<dynamic>)
            .map((e) => e == null
                ? null
                : Query$TopicWorks$topicWorks.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Query$TopicWorks$topicWorks?> topicWorks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topicWorks = topicWorks;
    _resultData['topicWorks'] = l$topicWorks.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topicWorks = topicWorks;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$topicWorks.map((v) => v)), l$$__typename]);
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
    if (l$topicWorks.length != lOther$topicWorks.length) {
      return false;
    }
    for (int i = 0; i < l$topicWorks.length; i++) {
      final l$topicWorks$entry = l$topicWorks[i];
      final lOther$topicWorks$entry = lOther$topicWorks[i];
      if (l$topicWorks$entry != lOther$topicWorks$entry) {
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

extension UtilityExtension$Query$TopicWorks on Query$TopicWorks {
  CopyWith$Query$TopicWorks<Query$TopicWorks> get copyWith =>
      CopyWith$Query$TopicWorks(this, (i) => i);
}

abstract class CopyWith$Query$TopicWorks<TRes> {
  factory CopyWith$Query$TopicWorks(
          Query$TopicWorks instance, TRes Function(Query$TopicWorks) then) =
      _CopyWithImpl$Query$TopicWorks;

  factory CopyWith$Query$TopicWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$TopicWorks;

  TRes call(
      {List<Query$TopicWorks$topicWorks?>? topicWorks, String? $__typename});
  TRes topicWorks(
      Iterable<Query$TopicWorks$topicWorks?> Function(
              Iterable<
                  CopyWith$Query$TopicWorks$topicWorks<
                      Query$TopicWorks$topicWorks>?>)
          _fn);
}

class _CopyWithImpl$Query$TopicWorks<TRes>
    implements CopyWith$Query$TopicWorks<TRes> {
  _CopyWithImpl$Query$TopicWorks(this._instance, this._then);

  final Query$TopicWorks _instance;

  final TRes Function(Query$TopicWorks) _then;

  static const _undefined = {};

  TRes call(
          {Object? topicWorks = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopicWorks(
          topicWorks: topicWorks == _undefined || topicWorks == null
              ? _instance.topicWorks
              : (topicWorks as List<Query$TopicWorks$topicWorks?>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes topicWorks(
          Iterable<Query$TopicWorks$topicWorks?> Function(
                  Iterable<
                      CopyWith$Query$TopicWorks$topicWorks<
                          Query$TopicWorks$topicWorks>?>)
              _fn) =>
      call(
          topicWorks: _fn(_instance.topicWorks.map((e) => e == null
              ? null
              : CopyWith$Query$TopicWorks$topicWorks(e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$TopicWorks<TRes>
    implements CopyWith$Query$TopicWorks<TRes> {
  _CopyWithStubImpl$Query$TopicWorks(this._res);

  TRes _res;

  call({List<Query$TopicWorks$topicWorks?>? topicWorks, String? $__typename}) =>
      _res;
  topicWorks(_fn) => _res;
}

const documentNodeQueryTopicWorks = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TopicWorks'),
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
            name: NameNode(value: 'topicWorks'),
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
]);
Query$TopicWorks _parserFn$Query$TopicWorks(Map<String, dynamic> data) =>
    Query$TopicWorks.fromJson(data);

class Options$Query$TopicWorks extends graphql.QueryOptions<Query$TopicWorks> {
  Options$Query$TopicWorks(
      {String? operationName,
      required Variables$Query$TopicWorks variables,
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
            document: documentNodeQueryTopicWorks,
            parserFn: _parserFn$Query$TopicWorks);
}

class WatchOptions$Query$TopicWorks
    extends graphql.WatchQueryOptions<Query$TopicWorks> {
  WatchOptions$Query$TopicWorks(
      {String? operationName,
      required Variables$Query$TopicWorks variables,
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
            document: documentNodeQueryTopicWorks,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$TopicWorks);
}

class FetchMoreOptions$Query$TopicWorks extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TopicWorks(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$TopicWorks variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryTopicWorks);
}

extension ClientExtension$Query$TopicWorks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TopicWorks>> query$TopicWorks(
          Options$Query$TopicWorks options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$TopicWorks> watchQuery$TopicWorks(
          WatchOptions$Query$TopicWorks options) =>
      this.watchQuery(options);
  void writeQuery$TopicWorks(
          {required Query$TopicWorks data,
          required Variables$Query$TopicWorks variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryTopicWorks),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$TopicWorks? readQuery$TopicWorks(
      {required Variables$Query$TopicWorks variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryTopicWorks),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$TopicWorks.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TopicWorks> useQuery$TopicWorks(
        Options$Query$TopicWorks options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TopicWorks> useWatchQuery$TopicWorks(
        WatchOptions$Query$TopicWorks options) =>
    graphql_flutter.useWatchQuery(options);

class Query$TopicWorks$Widget extends graphql_flutter.Query<Query$TopicWorks> {
  Query$TopicWorks$Widget(
      {widgets.Key? key,
      required Options$Query$TopicWorks options,
      required graphql_flutter.QueryBuilder<Query$TopicWorks> builder})
      : super(key: key, options: options, builder: builder);
}

class Query$TopicWorks$topicWorks {
  Query$TopicWorks$topicWorks(
      {required this.id,
      required this.title,
      this.thumbnail,
      required this.$__typename});

  factory Query$TopicWorks$topicWorks.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Query$TopicWorks$topicWorks(
        id: (l$id as String),
        title: (l$title as String),
        thumbnail: (l$thumbnail as String?),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$id, l$title, l$thumbnail, l$$__typename]);
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

extension UtilityExtension$Query$TopicWorks$topicWorks
    on Query$TopicWorks$topicWorks {
  CopyWith$Query$TopicWorks$topicWorks<Query$TopicWorks$topicWorks>
      get copyWith => CopyWith$Query$TopicWorks$topicWorks(this, (i) => i);
}

abstract class CopyWith$Query$TopicWorks$topicWorks<TRes> {
  factory CopyWith$Query$TopicWorks$topicWorks(
          Query$TopicWorks$topicWorks instance,
          TRes Function(Query$TopicWorks$topicWorks) then) =
      _CopyWithImpl$Query$TopicWorks$topicWorks;

  factory CopyWith$Query$TopicWorks$topicWorks.stub(TRes res) =
      _CopyWithStubImpl$Query$TopicWorks$topicWorks;

  TRes call(
      {String? id, String? title, String? thumbnail, String? $__typename});
}

class _CopyWithImpl$Query$TopicWorks$topicWorks<TRes>
    implements CopyWith$Query$TopicWorks$topicWorks<TRes> {
  _CopyWithImpl$Query$TopicWorks$topicWorks(this._instance, this._then);

  final Query$TopicWorks$topicWorks _instance;

  final TRes Function(Query$TopicWorks$topicWorks) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? thumbnail = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$TopicWorks$topicWorks(
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

class _CopyWithStubImpl$Query$TopicWorks$topicWorks<TRes>
    implements CopyWith$Query$TopicWorks$topicWorks<TRes> {
  _CopyWithStubImpl$Query$TopicWorks$topicWorks(this._res);

  TRes _res;

  call({String? id, String? title, String? thumbnail, String? $__typename}) =>
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
      get copyWith => CopyWith$Variables$Query$SearchCandidates(this, (i) => i);
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
  Query$SearchCandidates(
      {required this.works,
      required this.categories,
      required this.hashtags,
      required this.$__typename});

  factory Query$SearchCandidates.fromJson(Map<String, dynamic> json) {
    final l$works = json['works'];
    final l$categories = json['categories'];
    final l$hashtags = json['hashtags'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates(
        works: Query$SearchCandidates$works.fromJson(
            (l$works as Map<String, dynamic>)),
        categories: Query$SearchCandidates$categories.fromJson(
            (l$categories as Map<String, dynamic>)),
        hashtags: Query$SearchCandidates$hashtags.fromJson(
            (l$hashtags as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Query$SearchCandidates$works works;

  final Query$SearchCandidates$categories categories;

  final Query$SearchCandidates$hashtags hashtags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$works = works;
    _resultData['works'] = l$works.toJson();
    final l$categories = categories;
    _resultData['categories'] = l$categories.toJson();
    final l$hashtags = hashtags;
    _resultData['hashtags'] = l$hashtags.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$works = works;
    final l$categories = categories;
    final l$hashtags = hashtags;
    final l$$__typename = $__typename;
    return Object.hashAll([l$works, l$categories, l$hashtags, l$$__typename]);
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
    final l$works = works;
    final lOther$works = other.works;
    if (l$works != lOther$works) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != lOther$categories) {
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
      {Query$SearchCandidates$works? works,
      Query$SearchCandidates$categories? categories,
      Query$SearchCandidates$hashtags? hashtags,
      String? $__typename});
  CopyWith$Query$SearchCandidates$works<TRes> get works;
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
          {Object? works = _undefined,
          Object? categories = _undefined,
          Object? hashtags = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates(
          works: works == _undefined || works == null
              ? _instance.works
              : (works as Query$SearchCandidates$works),
          categories: categories == _undefined || categories == null
              ? _instance.categories
              : (categories as Query$SearchCandidates$categories),
          hashtags: hashtags == _undefined || hashtags == null
              ? _instance.hashtags
              : (hashtags as Query$SearchCandidates$hashtags),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchCandidates$works<TRes> get works {
    final local$works = _instance.works;
    return CopyWith$Query$SearchCandidates$works(
        local$works, (e) => call(works: e));
  }

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
          {Query$SearchCandidates$works? works,
          Query$SearchCandidates$categories? categories,
          Query$SearchCandidates$hashtags? hashtags,
          String? $__typename}) =>
      _res;
  CopyWith$Query$SearchCandidates$works<TRes> get works =>
      CopyWith$Query$SearchCandidates$works.stub(_res);
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
            name: NameNode(value: 'works'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: IntValueNode(value: '9')),
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
            name: NameNode(value: 'categories'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: IntValueNode(value: '9')),
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
                  name: NameNode(value: 'first'),
                  value: IntValueNode(value: '9')),
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

class Query$SearchCandidates$works {
  Query$SearchCandidates$works({this.edges, required this.$__typename});

  factory Query$SearchCandidates$works.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$works(
        edges: (l$edges as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$SearchCandidates$works$edges.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Query$SearchCandidates$works$edges?>? edges;

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
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchCandidates$works) ||
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

extension UtilityExtension$Query$SearchCandidates$works
    on Query$SearchCandidates$works {
  CopyWith$Query$SearchCandidates$works<Query$SearchCandidates$works>
      get copyWith => CopyWith$Query$SearchCandidates$works(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates$works<TRes> {
  factory CopyWith$Query$SearchCandidates$works(
          Query$SearchCandidates$works instance,
          TRes Function(Query$SearchCandidates$works) then) =
      _CopyWithImpl$Query$SearchCandidates$works;

  factory CopyWith$Query$SearchCandidates$works.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$works;

  TRes call(
      {List<Query$SearchCandidates$works$edges?>? edges, String? $__typename});
  TRes edges(
      Iterable<Query$SearchCandidates$works$edges?>? Function(
              Iterable<
                  CopyWith$Query$SearchCandidates$works$edges<
                      Query$SearchCandidates$works$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchCandidates$works<TRes>
    implements CopyWith$Query$SearchCandidates$works<TRes> {
  _CopyWithImpl$Query$SearchCandidates$works(this._instance, this._then);

  final Query$SearchCandidates$works _instance;

  final TRes Function(Query$SearchCandidates$works) _then;

  static const _undefined = {};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates$works(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$SearchCandidates$works$edges?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$SearchCandidates$works$edges?>? Function(
                  Iterable<
                      CopyWith$Query$SearchCandidates$works$edges<
                          Query$SearchCandidates$works$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
                  ? null
                  : CopyWith$Query$SearchCandidates$works$edges(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Query$SearchCandidates$works<TRes>
    implements CopyWith$Query$SearchCandidates$works<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$works(this._res);

  TRes _res;

  call(
          {List<Query$SearchCandidates$works$edges?>? edges,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
}

class Query$SearchCandidates$works$edges {
  Query$SearchCandidates$works$edges({this.node, required this.$__typename});

  factory Query$SearchCandidates$works$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$works$edges(
        node: l$node == null
            ? null
            : Query$SearchCandidates$works$edges$node.fromJson(
                (l$node as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Query$SearchCandidates$works$edges$node? node;

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
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchCandidates$works$edges) ||
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

extension UtilityExtension$Query$SearchCandidates$works$edges
    on Query$SearchCandidates$works$edges {
  CopyWith$Query$SearchCandidates$works$edges<
          Query$SearchCandidates$works$edges>
      get copyWith =>
          CopyWith$Query$SearchCandidates$works$edges(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates$works$edges<TRes> {
  factory CopyWith$Query$SearchCandidates$works$edges(
          Query$SearchCandidates$works$edges instance,
          TRes Function(Query$SearchCandidates$works$edges) then) =
      _CopyWithImpl$Query$SearchCandidates$works$edges;

  factory CopyWith$Query$SearchCandidates$works$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$works$edges;

  TRes call(
      {Query$SearchCandidates$works$edges$node? node, String? $__typename});
  CopyWith$Query$SearchCandidates$works$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$SearchCandidates$works$edges<TRes>
    implements CopyWith$Query$SearchCandidates$works$edges<TRes> {
  _CopyWithImpl$Query$SearchCandidates$works$edges(this._instance, this._then);

  final Query$SearchCandidates$works$edges _instance;

  final TRes Function(Query$SearchCandidates$works$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates$works$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$SearchCandidates$works$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchCandidates$works$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$SearchCandidates$works$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$SearchCandidates$works$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SearchCandidates$works$edges<TRes>
    implements CopyWith$Query$SearchCandidates$works$edges<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$works$edges(this._res);

  TRes _res;

  call({Query$SearchCandidates$works$edges$node? node, String? $__typename}) =>
      _res;
  CopyWith$Query$SearchCandidates$works$edges$node<TRes> get node =>
      CopyWith$Query$SearchCandidates$works$edges$node.stub(_res);
}

class Query$SearchCandidates$works$edges$node {
  Query$SearchCandidates$works$edges$node(
      {required this.id,
      required this.title,
      this.thumbnail,
      required this.$__typename});

  factory Query$SearchCandidates$works$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$works$edges$node(
        id: (l$id as String),
        title: (l$title as String),
        thumbnail: (l$thumbnail as String?),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$id, l$title, l$thumbnail, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchCandidates$works$edges$node) ||
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

extension UtilityExtension$Query$SearchCandidates$works$edges$node
    on Query$SearchCandidates$works$edges$node {
  CopyWith$Query$SearchCandidates$works$edges$node<
          Query$SearchCandidates$works$edges$node>
      get copyWith =>
          CopyWith$Query$SearchCandidates$works$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$SearchCandidates$works$edges$node<TRes> {
  factory CopyWith$Query$SearchCandidates$works$edges$node(
          Query$SearchCandidates$works$edges$node instance,
          TRes Function(Query$SearchCandidates$works$edges$node) then) =
      _CopyWithImpl$Query$SearchCandidates$works$edges$node;

  factory CopyWith$Query$SearchCandidates$works$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCandidates$works$edges$node;

  TRes call(
      {String? id, String? title, String? thumbnail, String? $__typename});
}

class _CopyWithImpl$Query$SearchCandidates$works$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$works$edges$node<TRes> {
  _CopyWithImpl$Query$SearchCandidates$works$edges$node(
      this._instance, this._then);

  final Query$SearchCandidates$works$edges$node _instance;

  final TRes Function(Query$SearchCandidates$works$edges$node) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? thumbnail = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchCandidates$works$edges$node(
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

class _CopyWithStubImpl$Query$SearchCandidates$works$edges$node<TRes>
    implements CopyWith$Query$SearchCandidates$works$edges$node<TRes> {
  _CopyWithStubImpl$Query$SearchCandidates$works$edges$node(this._res);

  TRes _res;

  call({String? id, String? title, String? thumbnail, String? $__typename}) =>
      _res;
}

class Query$SearchCandidates$categories {
  Query$SearchCandidates$categories({this.edges, required this.$__typename});

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
        $__typename: (l$$__typename as String));
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
      l$$__typename
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

class Query$SearchCandidates$categories$edges {
  Query$SearchCandidates$categories$edges(
      {this.node, required this.$__typename});

  factory Query$SearchCandidates$categories$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$categories$edges(
        node: l$node == null
            ? null
            : Query$SearchCandidates$categories$edges$node.fromJson(
                (l$node as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$node, l$$__typename]);
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

class Query$SearchCandidates$categories$edges$node {
  Query$SearchCandidates$categories$edges$node(
      {required this.id, required this.name, required this.$__typename});

  factory Query$SearchCandidates$categories$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$categories$edges$node(
        id: (l$id as String),
        name: (l$name as String),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
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

class Query$SearchCandidates$hashtags {
  Query$SearchCandidates$hashtags({this.edges, required this.$__typename});

  factory Query$SearchCandidates$hashtags.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$hashtags(
        edges: (l$edges as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$SearchCandidates$hashtags$edges.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Query$SearchCandidates$hashtags$edges?>? edges;

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
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchCandidates$hashtags) ||
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

class Query$SearchCandidates$hashtags$edges {
  Query$SearchCandidates$hashtags$edges({this.node, required this.$__typename});

  factory Query$SearchCandidates$hashtags$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$hashtags$edges(
        node: l$node == null
            ? null
            : Query$SearchCandidates$hashtags$edges$node.fromJson(
                (l$node as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final Query$SearchCandidates$hashtags$edges$node? node;

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
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchCandidates$hashtags$edges) ||
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

class Query$SearchCandidates$hashtags$edges$node {
  Query$SearchCandidates$hashtags$edges$node(
      {required this.id, required this.title, required this.$__typename});

  factory Query$SearchCandidates$hashtags$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$SearchCandidates$hashtags$edges$node(
        id: (l$id as String),
        title: (l$title as String),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$id, l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchCandidates$hashtags$edges$node) ||
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
      CopyWith$Variables$Query$Work(this, (i) => i);
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
  factory CopyWith$Variables$Query$Work(Variables$Query$Work instance,
          TRes Function(Variables$Query$Work) then) =
      _CopyWithImpl$Variables$Query$Work;

  factory CopyWith$Variables$Query$Work.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Work;

  TRes call({String? workID});
}

class _CopyWithImpl$Variables$Query$Work<TRes>
    implements CopyWith$Variables$Query$Work<TRes> {
  _CopyWithImpl$Variables$Query$Work(this._instance, this._then);

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
  Query$Work(
      {this.work, required this.workCategories, required this.$__typename});

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
                : Query$Work$workCategories.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
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
      l$$__typename
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
  CopyWith$Query$Work<Query$Work> get copyWith =>
      CopyWith$Query$Work(this, (i) => i);
}

abstract class CopyWith$Query$Work<TRes> {
  factory CopyWith$Query$Work(
          Query$Work instance, TRes Function(Query$Work) then) =
      _CopyWithImpl$Query$Work;

  factory CopyWith$Query$Work.stub(TRes res) = _CopyWithStubImpl$Query$Work;

  TRes call(
      {Query$Work$work? work,
      List<Query$Work$workCategories?>? workCategories,
      String? $__typename});
  CopyWith$Query$Work$work<TRes> get work;
  TRes workCategories(
      Iterable<Query$Work$workCategories?> Function(
              Iterable<
                  CopyWith$Query$Work$workCategories<
                      Query$Work$workCategories>?>)
          _fn);
}

class _CopyWithImpl$Query$Work<TRes> implements CopyWith$Query$Work<TRes> {
  _CopyWithImpl$Query$Work(this._instance, this._then);

  final Query$Work _instance;

  final TRes Function(Query$Work) _then;

  static const _undefined = {};

  TRes call(
          {Object? work = _undefined,
          Object? workCategories = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$Work(
          work:
              work == _undefined ? _instance.work : (work as Query$Work$work?),
          workCategories: workCategories == _undefined || workCategories == null
              ? _instance.workCategories
              : (workCategories as List<Query$Work$workCategories?>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
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
              : CopyWith$Query$Work$workCategories(e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$Work<TRes> implements CopyWith$Query$Work<TRes> {
  _CopyWithStubImpl$Query$Work(this._res);

  TRes _res;

  call(
          {Query$Work$work? work,
          List<Query$Work$workCategories?>? workCategories,
          String? $__typename}) =>
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
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'node'),
            alias: NameNode(value: 'work'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'workID')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'Work'), isNonNull: false)),
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
                        name: NameNode(value: 'posts'),
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
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'workCategories'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'workID'),
                  value: VariableNode(name: NameNode(value: 'workID')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'categoryID'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'categoryName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'postCount'),
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
  fragmentDefinitionPraiseSummary,
]);
Query$Work _parserFn$Query$Work(Map<String, dynamic> data) =>
    Query$Work.fromJson(data);

class Options$Query$Work extends graphql.QueryOptions<Query$Work> {
  Options$Query$Work(
      {String? operationName,
      required Variables$Query$Work variables,
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
            document: documentNodeQueryWork,
            parserFn: _parserFn$Query$Work);
}

class WatchOptions$Query$Work extends graphql.WatchQueryOptions<Query$Work> {
  WatchOptions$Query$Work(
      {String? operationName,
      required Variables$Query$Work variables,
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
            document: documentNodeQueryWork,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$Work);
}

class FetchMoreOptions$Query$Work extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Work(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$Work variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryWork);
}

extension ClientExtension$Query$Work on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Work>> query$Work(
          Options$Query$Work options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Work> watchQuery$Work(
          WatchOptions$Query$Work options) =>
      this.watchQuery(options);
  void writeQuery$Work(
          {required Query$Work data,
          required Variables$Query$Work variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryWork),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$Work? readQuery$Work(
      {required Variables$Query$Work variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryWork),
            variables: variables.toJson()),
        optimistic: optimistic);
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
  Query$Work$Widget(
      {widgets.Key? key,
      required Options$Query$Work options,
      required graphql_flutter.QueryBuilder<Query$Work> builder})
      : super(key: key, options: options, builder: builder);
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
      CopyWith$Query$Work$work(this, (i) => i);
}

abstract class CopyWith$Query$Work$work<TRes> {
  factory CopyWith$Query$Work$work(
          Query$Work$work instance, TRes Function(Query$Work$work) then) =
      _CopyWithImpl$Query$Work$work;

  factory CopyWith$Query$Work$work.stub(TRes res) =
      _CopyWithStubImpl$Query$Work$work;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Work$work<TRes>
    implements CopyWith$Query$Work$work<TRes> {
  _CopyWithImpl$Query$Work$work(this._instance, this._then);

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
  Query$Work$work$$Work(
      {required this.$__typename,
      required this.id,
      required this.title,
      this.thumbnail,
      this.posts});

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
            .toList());
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
      l$posts == null ? null : Object.hashAll(l$posts.map((v) => v))
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
      CopyWith$Query$Work$work$$Work(this, (i) => i);
}

abstract class CopyWith$Query$Work$work$$Work<TRes> {
  factory CopyWith$Query$Work$work$$Work(Query$Work$work$$Work instance,
          TRes Function(Query$Work$work$$Work) then) =
      _CopyWithImpl$Query$Work$work$$Work;

  factory CopyWith$Query$Work$work$$Work.stub(TRes res) =
      _CopyWithStubImpl$Query$Work$work$$Work;

  TRes call(
      {String? $__typename,
      String? id,
      String? title,
      String? thumbnail,
      List<Fragment$PraiseSummary>? posts});
  TRes posts(
      Iterable<Fragment$PraiseSummary>? Function(
              Iterable<
                  CopyWith$Fragment$PraiseSummary<Fragment$PraiseSummary>>?)
          _fn);
}

class _CopyWithImpl$Query$Work$work$$Work<TRes>
    implements CopyWith$Query$Work$work$$Work<TRes> {
  _CopyWithImpl$Query$Work$work$$Work(this._instance, this._then);

  final Query$Work$work$$Work _instance;

  final TRes Function(Query$Work$work$$Work) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? title = _undefined,
          Object? thumbnail = _undefined,
          Object? posts = _undefined}) =>
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
              : (posts as List<Fragment$PraiseSummary>?)));
  TRes posts(
          Iterable<Fragment$PraiseSummary>? Function(
                  Iterable<
                      CopyWith$Fragment$PraiseSummary<Fragment$PraiseSummary>>?)
              _fn) =>
      call(
          posts: _fn(_instance.posts
                  ?.map((e) => CopyWith$Fragment$PraiseSummary(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Query$Work$work$$Work<TRes>
    implements CopyWith$Query$Work$work$$Work<TRes> {
  _CopyWithStubImpl$Query$Work$work$$Work(this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? title,
          String? thumbnail,
          List<Fragment$PraiseSummary>? posts}) =>
      _res;
  posts(_fn) => _res;
}

class Query$Work$workCategories {
  Query$Work$workCategories(
      {required this.categoryID,
      required this.categoryName,
      required this.postCount,
      required this.$__typename});

  factory Query$Work$workCategories.fromJson(Map<String, dynamic> json) {
    final l$categoryID = json['categoryID'];
    final l$categoryName = json['categoryName'];
    final l$postCount = json['postCount'];
    final l$$__typename = json['__typename'];
    return Query$Work$workCategories(
        categoryID: (l$categoryID as String),
        categoryName: (l$categoryName as String),
        postCount: (l$postCount as int),
        $__typename: (l$$__typename as String));
  }

  final String categoryID;

  final String categoryName;

  final int postCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$categoryID = categoryID;
    _resultData['categoryID'] = l$categoryID;
    final l$categoryName = categoryName;
    _resultData['categoryName'] = l$categoryName;
    final l$postCount = postCount;
    _resultData['postCount'] = l$postCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$categoryID = categoryID;
    final l$categoryName = categoryName;
    final l$postCount = postCount;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$categoryID, l$categoryName, l$postCount, l$$__typename]);
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
    final l$categoryID = categoryID;
    final lOther$categoryID = other.categoryID;
    if (l$categoryID != lOther$categoryID) {
      return false;
    }
    final l$categoryName = categoryName;
    final lOther$categoryName = other.categoryName;
    if (l$categoryName != lOther$categoryName) {
      return false;
    }
    final l$postCount = postCount;
    final lOther$postCount = other.postCount;
    if (l$postCount != lOther$postCount) {
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
      CopyWith$Query$Work$workCategories(this, (i) => i);
}

abstract class CopyWith$Query$Work$workCategories<TRes> {
  factory CopyWith$Query$Work$workCategories(Query$Work$workCategories instance,
          TRes Function(Query$Work$workCategories) then) =
      _CopyWithImpl$Query$Work$workCategories;

  factory CopyWith$Query$Work$workCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$Work$workCategories;

  TRes call(
      {String? categoryID,
      String? categoryName,
      int? postCount,
      String? $__typename});
}

class _CopyWithImpl$Query$Work$workCategories<TRes>
    implements CopyWith$Query$Work$workCategories<TRes> {
  _CopyWithImpl$Query$Work$workCategories(this._instance, this._then);

  final Query$Work$workCategories _instance;

  final TRes Function(Query$Work$workCategories) _then;

  static const _undefined = {};

  TRes call(
          {Object? categoryID = _undefined,
          Object? categoryName = _undefined,
          Object? postCount = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$Work$workCategories(
          categoryID: categoryID == _undefined || categoryID == null
              ? _instance.categoryID
              : (categoryID as String),
          categoryName: categoryName == _undefined || categoryName == null
              ? _instance.categoryName
              : (categoryName as String),
          postCount: postCount == _undefined || postCount == null
              ? _instance.postCount
              : (postCount as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Work$workCategories<TRes>
    implements CopyWith$Query$Work$workCategories<TRes> {
  _CopyWithStubImpl$Query$Work$workCategories(this._res);

  TRes _res;

  call(
          {String? categoryID,
          String? categoryName,
          int? postCount,
          String? $__typename}) =>
      _res;
}
