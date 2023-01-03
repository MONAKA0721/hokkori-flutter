import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetDraft {
  factory Variables$Query$GetDraft({required String id}) =>
      Variables$Query$GetDraft._({
        r'id': id,
      });

  Variables$Query$GetDraft._(this._$data);

  factory Variables$Query$GetDraft.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetDraft._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetDraft<Variables$Query$GetDraft> get copyWith =>
      CopyWith$Variables$Query$GetDraft(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetDraft) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetDraft<TRes> {
  factory CopyWith$Variables$Query$GetDraft(
    Variables$Query$GetDraft instance,
    TRes Function(Variables$Query$GetDraft) then,
  ) = _CopyWithImpl$Variables$Query$GetDraft;

  factory CopyWith$Variables$Query$GetDraft.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDraft;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetDraft<TRes>
    implements CopyWith$Variables$Query$GetDraft<TRes> {
  _CopyWithImpl$Variables$Query$GetDraft(
    this._instance,
    this._then,
  );

  final Variables$Query$GetDraft _instance;

  final TRes Function(Variables$Query$GetDraft) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetDraft._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetDraft<TRes>
    implements CopyWith$Variables$Query$GetDraft<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDraft(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetDraft {
  Query$GetDraft({
    this.draft,
    required this.$__typename,
  });

  factory Query$GetDraft.fromJson(Map<String, dynamic> json) {
    final l$draft = json['draft'];
    final l$$__typename = json['__typename'];
    return Query$GetDraft(
      draft: l$draft == null
          ? null
          : Query$GetDraft$draft.fromJson((l$draft as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetDraft$draft? draft;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$draft = draft;
    _resultData['draft'] = l$draft?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$draft = draft;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$draft,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDraft) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$draft = draft;
    final lOther$draft = other.draft;
    if (l$draft != lOther$draft) {
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

extension UtilityExtension$Query$GetDraft on Query$GetDraft {
  CopyWith$Query$GetDraft<Query$GetDraft> get copyWith =>
      CopyWith$Query$GetDraft(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDraft<TRes> {
  factory CopyWith$Query$GetDraft(
    Query$GetDraft instance,
    TRes Function(Query$GetDraft) then,
  ) = _CopyWithImpl$Query$GetDraft;

  factory CopyWith$Query$GetDraft.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDraft;

  TRes call({
    Query$GetDraft$draft? draft,
    String? $__typename,
  });
  CopyWith$Query$GetDraft$draft<TRes> get draft;
}

class _CopyWithImpl$Query$GetDraft<TRes>
    implements CopyWith$Query$GetDraft<TRes> {
  _CopyWithImpl$Query$GetDraft(
    this._instance,
    this._then,
  );

  final Query$GetDraft _instance;

  final TRes Function(Query$GetDraft) _then;

  static const _undefined = {};

  TRes call({
    Object? draft = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDraft(
        draft: draft == _undefined
            ? _instance.draft
            : (draft as Query$GetDraft$draft?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetDraft$draft<TRes> get draft {
    final local$draft = _instance.draft;
    return local$draft == null
        ? CopyWith$Query$GetDraft$draft.stub(_then(_instance))
        : CopyWith$Query$GetDraft$draft(local$draft, (e) => call(draft: e));
  }
}

class _CopyWithStubImpl$Query$GetDraft<TRes>
    implements CopyWith$Query$GetDraft<TRes> {
  _CopyWithStubImpl$Query$GetDraft(this._res);

  TRes _res;

  call({
    Query$GetDraft$draft? draft,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetDraft$draft<TRes> get draft =>
      CopyWith$Query$GetDraft$draft.stub(_res);
}

const documentNodeQueryGetDraft = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDraft'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        alias: NameNode(value: 'draft'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Draft'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
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
                name: NameNode(value: 'praiseTitle'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'praiseContent'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'praiseSpoiled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'letterTitle'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'letterContent'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'letterSpoiled'),
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
]);
Query$GetDraft _parserFn$Query$GetDraft(Map<String, dynamic> data) =>
    Query$GetDraft.fromJson(data);

class Options$Query$GetDraft extends graphql.QueryOptions<Query$GetDraft> {
  Options$Query$GetDraft({
    String? operationName,
    required Variables$Query$GetDraft variables,
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
          document: documentNodeQueryGetDraft,
          parserFn: _parserFn$Query$GetDraft,
        );
}

class WatchOptions$Query$GetDraft
    extends graphql.WatchQueryOptions<Query$GetDraft> {
  WatchOptions$Query$GetDraft({
    String? operationName,
    required Variables$Query$GetDraft variables,
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
          document: documentNodeQueryGetDraft,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetDraft,
        );
}

class FetchMoreOptions$Query$GetDraft extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetDraft({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetDraft variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetDraft,
        );
}

extension ClientExtension$Query$GetDraft on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetDraft>> query$GetDraft(
          Options$Query$GetDraft options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetDraft> watchQuery$GetDraft(
          WatchOptions$Query$GetDraft options) =>
      this.watchQuery(options);
  void writeQuery$GetDraft({
    required Query$GetDraft data,
    required Variables$Query$GetDraft variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetDraft),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetDraft? readQuery$GetDraft({
    required Variables$Query$GetDraft variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetDraft),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetDraft.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetDraft> useQuery$GetDraft(
        Options$Query$GetDraft options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetDraft> useWatchQuery$GetDraft(
        WatchOptions$Query$GetDraft options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetDraft$Widget extends graphql_flutter.Query<Query$GetDraft> {
  Query$GetDraft$Widget({
    widgets.Key? key,
    required Options$Query$GetDraft options,
    required graphql_flutter.QueryBuilder<Query$GetDraft> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetDraft$draft {
  Query$GetDraft$draft({required this.$__typename});

  factory Query$GetDraft$draft.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Draft":
        return Query$GetDraft$draft$$Draft.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$GetDraft$draft($__typename: (l$$__typename as String));
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
    if (!(other is Query$GetDraft$draft) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetDraft$draft on Query$GetDraft$draft {
  CopyWith$Query$GetDraft$draft<Query$GetDraft$draft> get copyWith =>
      CopyWith$Query$GetDraft$draft(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDraft$draft<TRes> {
  factory CopyWith$Query$GetDraft$draft(
    Query$GetDraft$draft instance,
    TRes Function(Query$GetDraft$draft) then,
  ) = _CopyWithImpl$Query$GetDraft$draft;

  factory CopyWith$Query$GetDraft$draft.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDraft$draft;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetDraft$draft<TRes>
    implements CopyWith$Query$GetDraft$draft<TRes> {
  _CopyWithImpl$Query$GetDraft$draft(
    this._instance,
    this._then,
  );

  final Query$GetDraft$draft _instance;

  final TRes Function(Query$GetDraft$draft) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) => _then(Query$GetDraft$draft(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetDraft$draft<TRes>
    implements CopyWith$Query$GetDraft$draft<TRes> {
  _CopyWithStubImpl$Query$GetDraft$draft(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetDraft$draft$$Draft implements Query$GetDraft$draft {
  Query$GetDraft$draft$$Draft({
    required this.$__typename,
    required this.id,
    this.work,
    this.category,
    this.hashtags,
    required this.praiseTitle,
    required this.praiseContent,
    required this.praiseSpoiled,
    required this.letterTitle,
    required this.letterContent,
    required this.letterSpoiled,
  });

  factory Query$GetDraft$draft$$Draft.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$work = json['work'];
    final l$category = json['category'];
    final l$hashtags = json['hashtags'];
    final l$praiseTitle = json['praiseTitle'];
    final l$praiseContent = json['praiseContent'];
    final l$praiseSpoiled = json['praiseSpoiled'];
    final l$letterTitle = json['letterTitle'];
    final l$letterContent = json['letterContent'];
    final l$letterSpoiled = json['letterSpoiled'];
    return Query$GetDraft$draft$$Draft(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      work: l$work == null
          ? null
          : Query$GetDraft$draft$$Draft$work.fromJson(
              (l$work as Map<String, dynamic>)),
      category: l$category == null
          ? null
          : Query$GetDraft$draft$$Draft$category.fromJson(
              (l$category as Map<String, dynamic>)),
      hashtags: (l$hashtags as List<dynamic>?)
          ?.map((e) => Query$GetDraft$draft$$Draft$hashtags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      praiseTitle: (l$praiseTitle as String),
      praiseContent: (l$praiseContent as String),
      praiseSpoiled: (l$praiseSpoiled as bool),
      letterTitle: (l$letterTitle as String),
      letterContent: (l$letterContent as String),
      letterSpoiled: (l$letterSpoiled as bool),
    );
  }

  final String $__typename;

  final String id;

  final Query$GetDraft$draft$$Draft$work? work;

  final Query$GetDraft$draft$$Draft$category? category;

  final List<Query$GetDraft$draft$$Draft$hashtags>? hashtags;

  final String praiseTitle;

  final String praiseContent;

  final bool praiseSpoiled;

  final String letterTitle;

  final String letterContent;

  final bool letterSpoiled;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$work = work;
    _resultData['work'] = l$work?.toJson();
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$hashtags = hashtags;
    _resultData['hashtags'] = l$hashtags?.map((e) => e.toJson()).toList();
    final l$praiseTitle = praiseTitle;
    _resultData['praiseTitle'] = l$praiseTitle;
    final l$praiseContent = praiseContent;
    _resultData['praiseContent'] = l$praiseContent;
    final l$praiseSpoiled = praiseSpoiled;
    _resultData['praiseSpoiled'] = l$praiseSpoiled;
    final l$letterTitle = letterTitle;
    _resultData['letterTitle'] = l$letterTitle;
    final l$letterContent = letterContent;
    _resultData['letterContent'] = l$letterContent;
    final l$letterSpoiled = letterSpoiled;
    _resultData['letterSpoiled'] = l$letterSpoiled;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$work = work;
    final l$category = category;
    final l$hashtags = hashtags;
    final l$praiseTitle = praiseTitle;
    final l$praiseContent = praiseContent;
    final l$praiseSpoiled = praiseSpoiled;
    final l$letterTitle = letterTitle;
    final l$letterContent = letterContent;
    final l$letterSpoiled = letterSpoiled;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$work,
      l$category,
      l$hashtags == null ? null : Object.hashAll(l$hashtags.map((v) => v)),
      l$praiseTitle,
      l$praiseContent,
      l$praiseSpoiled,
      l$letterTitle,
      l$letterContent,
      l$letterSpoiled,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDraft$draft$$Draft) ||
        runtimeType != other.runtimeType) {
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
    final l$hashtags = hashtags;
    final lOther$hashtags = other.hashtags;
    if (l$hashtags != null && lOther$hashtags != null) {
      if (l$hashtags.length != lOther$hashtags.length) {
        return false;
      }
      for (int i = 0; i < l$hashtags.length; i++) {
        final l$hashtags$entry = l$hashtags[i];
        final lOther$hashtags$entry = lOther$hashtags[i];
        if (l$hashtags$entry != lOther$hashtags$entry) {
          return false;
        }
      }
    } else if (l$hashtags != lOther$hashtags) {
      return false;
    }
    final l$praiseTitle = praiseTitle;
    final lOther$praiseTitle = other.praiseTitle;
    if (l$praiseTitle != lOther$praiseTitle) {
      return false;
    }
    final l$praiseContent = praiseContent;
    final lOther$praiseContent = other.praiseContent;
    if (l$praiseContent != lOther$praiseContent) {
      return false;
    }
    final l$praiseSpoiled = praiseSpoiled;
    final lOther$praiseSpoiled = other.praiseSpoiled;
    if (l$praiseSpoiled != lOther$praiseSpoiled) {
      return false;
    }
    final l$letterTitle = letterTitle;
    final lOther$letterTitle = other.letterTitle;
    if (l$letterTitle != lOther$letterTitle) {
      return false;
    }
    final l$letterContent = letterContent;
    final lOther$letterContent = other.letterContent;
    if (l$letterContent != lOther$letterContent) {
      return false;
    }
    final l$letterSpoiled = letterSpoiled;
    final lOther$letterSpoiled = other.letterSpoiled;
    if (l$letterSpoiled != lOther$letterSpoiled) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDraft$draft$$Draft
    on Query$GetDraft$draft$$Draft {
  CopyWith$Query$GetDraft$draft$$Draft<Query$GetDraft$draft$$Draft>
      get copyWith => CopyWith$Query$GetDraft$draft$$Draft(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDraft$draft$$Draft<TRes> {
  factory CopyWith$Query$GetDraft$draft$$Draft(
    Query$GetDraft$draft$$Draft instance,
    TRes Function(Query$GetDraft$draft$$Draft) then,
  ) = _CopyWithImpl$Query$GetDraft$draft$$Draft;

  factory CopyWith$Query$GetDraft$draft$$Draft.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDraft$draft$$Draft;

  TRes call({
    String? $__typename,
    String? id,
    Query$GetDraft$draft$$Draft$work? work,
    Query$GetDraft$draft$$Draft$category? category,
    List<Query$GetDraft$draft$$Draft$hashtags>? hashtags,
    String? praiseTitle,
    String? praiseContent,
    bool? praiseSpoiled,
    String? letterTitle,
    String? letterContent,
    bool? letterSpoiled,
  });
  CopyWith$Query$GetDraft$draft$$Draft$work<TRes> get work;
  CopyWith$Query$GetDraft$draft$$Draft$category<TRes> get category;
  TRes hashtags(
      Iterable<Query$GetDraft$draft$$Draft$hashtags>? Function(
              Iterable<
                  CopyWith$Query$GetDraft$draft$$Draft$hashtags<
                      Query$GetDraft$draft$$Draft$hashtags>>?)
          _fn);
}

class _CopyWithImpl$Query$GetDraft$draft$$Draft<TRes>
    implements CopyWith$Query$GetDraft$draft$$Draft<TRes> {
  _CopyWithImpl$Query$GetDraft$draft$$Draft(
    this._instance,
    this._then,
  );

  final Query$GetDraft$draft$$Draft _instance;

  final TRes Function(Query$GetDraft$draft$$Draft) _then;

  static const _undefined = {};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? work = _undefined,
    Object? category = _undefined,
    Object? hashtags = _undefined,
    Object? praiseTitle = _undefined,
    Object? praiseContent = _undefined,
    Object? praiseSpoiled = _undefined,
    Object? letterTitle = _undefined,
    Object? letterContent = _undefined,
    Object? letterSpoiled = _undefined,
  }) =>
      _then(Query$GetDraft$draft$$Draft(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        work: work == _undefined
            ? _instance.work
            : (work as Query$GetDraft$draft$$Draft$work?),
        category: category == _undefined
            ? _instance.category
            : (category as Query$GetDraft$draft$$Draft$category?),
        hashtags: hashtags == _undefined
            ? _instance.hashtags
            : (hashtags as List<Query$GetDraft$draft$$Draft$hashtags>?),
        praiseTitle: praiseTitle == _undefined || praiseTitle == null
            ? _instance.praiseTitle
            : (praiseTitle as String),
        praiseContent: praiseContent == _undefined || praiseContent == null
            ? _instance.praiseContent
            : (praiseContent as String),
        praiseSpoiled: praiseSpoiled == _undefined || praiseSpoiled == null
            ? _instance.praiseSpoiled
            : (praiseSpoiled as bool),
        letterTitle: letterTitle == _undefined || letterTitle == null
            ? _instance.letterTitle
            : (letterTitle as String),
        letterContent: letterContent == _undefined || letterContent == null
            ? _instance.letterContent
            : (letterContent as String),
        letterSpoiled: letterSpoiled == _undefined || letterSpoiled == null
            ? _instance.letterSpoiled
            : (letterSpoiled as bool),
      ));
  CopyWith$Query$GetDraft$draft$$Draft$work<TRes> get work {
    final local$work = _instance.work;
    return local$work == null
        ? CopyWith$Query$GetDraft$draft$$Draft$work.stub(_then(_instance))
        : CopyWith$Query$GetDraft$draft$$Draft$work(
            local$work, (e) => call(work: e));
  }

  CopyWith$Query$GetDraft$draft$$Draft$category<TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$GetDraft$draft$$Draft$category.stub(_then(_instance))
        : CopyWith$Query$GetDraft$draft$$Draft$category(
            local$category, (e) => call(category: e));
  }

  TRes hashtags(
          Iterable<Query$GetDraft$draft$$Draft$hashtags>? Function(
                  Iterable<
                      CopyWith$Query$GetDraft$draft$$Draft$hashtags<
                          Query$GetDraft$draft$$Draft$hashtags>>?)
              _fn) =>
      call(
          hashtags: _fn(_instance.hashtags
              ?.map((e) => CopyWith$Query$GetDraft$draft$$Draft$hashtags(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetDraft$draft$$Draft<TRes>
    implements CopyWith$Query$GetDraft$draft$$Draft<TRes> {
  _CopyWithStubImpl$Query$GetDraft$draft$$Draft(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    Query$GetDraft$draft$$Draft$work? work,
    Query$GetDraft$draft$$Draft$category? category,
    List<Query$GetDraft$draft$$Draft$hashtags>? hashtags,
    String? praiseTitle,
    String? praiseContent,
    bool? praiseSpoiled,
    String? letterTitle,
    String? letterContent,
    bool? letterSpoiled,
  }) =>
      _res;
  CopyWith$Query$GetDraft$draft$$Draft$work<TRes> get work =>
      CopyWith$Query$GetDraft$draft$$Draft$work.stub(_res);
  CopyWith$Query$GetDraft$draft$$Draft$category<TRes> get category =>
      CopyWith$Query$GetDraft$draft$$Draft$category.stub(_res);
  hashtags(_fn) => _res;
}

class Query$GetDraft$draft$$Draft$work {
  Query$GetDraft$draft$$Draft$work({
    required this.id,
    required this.title,
    this.thumbnail,
    required this.$__typename,
  });

  factory Query$GetDraft$draft$$Draft$work.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Query$GetDraft$draft$$Draft$work(
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
    if (!(other is Query$GetDraft$draft$$Draft$work) ||
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

extension UtilityExtension$Query$GetDraft$draft$$Draft$work
    on Query$GetDraft$draft$$Draft$work {
  CopyWith$Query$GetDraft$draft$$Draft$work<Query$GetDraft$draft$$Draft$work>
      get copyWith => CopyWith$Query$GetDraft$draft$$Draft$work(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDraft$draft$$Draft$work<TRes> {
  factory CopyWith$Query$GetDraft$draft$$Draft$work(
    Query$GetDraft$draft$$Draft$work instance,
    TRes Function(Query$GetDraft$draft$$Draft$work) then,
  ) = _CopyWithImpl$Query$GetDraft$draft$$Draft$work;

  factory CopyWith$Query$GetDraft$draft$$Draft$work.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDraft$draft$$Draft$work;

  TRes call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDraft$draft$$Draft$work<TRes>
    implements CopyWith$Query$GetDraft$draft$$Draft$work<TRes> {
  _CopyWithImpl$Query$GetDraft$draft$$Draft$work(
    this._instance,
    this._then,
  );

  final Query$GetDraft$draft$$Draft$work _instance;

  final TRes Function(Query$GetDraft$draft$$Draft$work) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDraft$draft$$Draft$work(
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

class _CopyWithStubImpl$Query$GetDraft$draft$$Draft$work<TRes>
    implements CopyWith$Query$GetDraft$draft$$Draft$work<TRes> {
  _CopyWithStubImpl$Query$GetDraft$draft$$Draft$work(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetDraft$draft$$Draft$category {
  Query$GetDraft$draft$$Draft$category({
    required this.id,
    required this.$__typename,
  });

  factory Query$GetDraft$draft$$Draft$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetDraft$draft$$Draft$category(
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
    if (!(other is Query$GetDraft$draft$$Draft$category) ||
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

extension UtilityExtension$Query$GetDraft$draft$$Draft$category
    on Query$GetDraft$draft$$Draft$category {
  CopyWith$Query$GetDraft$draft$$Draft$category<
          Query$GetDraft$draft$$Draft$category>
      get copyWith => CopyWith$Query$GetDraft$draft$$Draft$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDraft$draft$$Draft$category<TRes> {
  factory CopyWith$Query$GetDraft$draft$$Draft$category(
    Query$GetDraft$draft$$Draft$category instance,
    TRes Function(Query$GetDraft$draft$$Draft$category) then,
  ) = _CopyWithImpl$Query$GetDraft$draft$$Draft$category;

  factory CopyWith$Query$GetDraft$draft$$Draft$category.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDraft$draft$$Draft$category;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDraft$draft$$Draft$category<TRes>
    implements CopyWith$Query$GetDraft$draft$$Draft$category<TRes> {
  _CopyWithImpl$Query$GetDraft$draft$$Draft$category(
    this._instance,
    this._then,
  );

  final Query$GetDraft$draft$$Draft$category _instance;

  final TRes Function(Query$GetDraft$draft$$Draft$category) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDraft$draft$$Draft$category(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetDraft$draft$$Draft$category<TRes>
    implements CopyWith$Query$GetDraft$draft$$Draft$category<TRes> {
  _CopyWithStubImpl$Query$GetDraft$draft$$Draft$category(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetDraft$draft$$Draft$hashtags {
  Query$GetDraft$draft$$Draft$hashtags({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Query$GetDraft$draft$$Draft$hashtags.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$GetDraft$draft$$Draft$hashtags(
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
    if (!(other is Query$GetDraft$draft$$Draft$hashtags) ||
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

extension UtilityExtension$Query$GetDraft$draft$$Draft$hashtags
    on Query$GetDraft$draft$$Draft$hashtags {
  CopyWith$Query$GetDraft$draft$$Draft$hashtags<
          Query$GetDraft$draft$$Draft$hashtags>
      get copyWith => CopyWith$Query$GetDraft$draft$$Draft$hashtags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDraft$draft$$Draft$hashtags<TRes> {
  factory CopyWith$Query$GetDraft$draft$$Draft$hashtags(
    Query$GetDraft$draft$$Draft$hashtags instance,
    TRes Function(Query$GetDraft$draft$$Draft$hashtags) then,
  ) = _CopyWithImpl$Query$GetDraft$draft$$Draft$hashtags;

  factory CopyWith$Query$GetDraft$draft$$Draft$hashtags.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDraft$draft$$Draft$hashtags;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDraft$draft$$Draft$hashtags<TRes>
    implements CopyWith$Query$GetDraft$draft$$Draft$hashtags<TRes> {
  _CopyWithImpl$Query$GetDraft$draft$$Draft$hashtags(
    this._instance,
    this._then,
  );

  final Query$GetDraft$draft$$Draft$hashtags _instance;

  final TRes Function(Query$GetDraft$draft$$Draft$hashtags) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDraft$draft$$Draft$hashtags(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetDraft$draft$$Draft$hashtags<TRes>
    implements CopyWith$Query$GetDraft$draft$$Draft$hashtags<TRes> {
  _CopyWithStubImpl$Query$GetDraft$draft$$Draft$hashtags(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}
