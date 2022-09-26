import '../../graphql/ent.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'common.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$LetterSummary {
  Fragment$LetterSummary(
      {required this.title,
      required this.id,
      required this.content,
      required this.createTime,
      required this.owner,
      required this.category,
      required this.$__typename});

  @override
  factory Fragment$LetterSummary.fromJson(Map<String, dynamic> json) =>
      _$Fragment$LetterSummaryFromJson(json);

  final String title;

  final String id;

  final String content;

  final String createTime;

  final Fragment$LetterSummary$owner owner;

  final Fragment$LetterSummary$category category;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$LetterSummaryToJson(this);
  int get hashCode {
    final l$title = title;
    final l$id = id;
    final l$content = content;
    final l$createTime = createTime;
    final l$owner = owner;
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$id,
      l$content,
      l$createTime,
      l$owner,
      l$category,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$LetterSummary) || runtimeType != other.runtimeType)
      return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) return false;
    final l$createTime = createTime;
    final lOther$createTime = other.createTime;
    if (l$createTime != lOther$createTime) return false;
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$LetterSummary on Fragment$LetterSummary {
  CopyWith$Fragment$LetterSummary<Fragment$LetterSummary> get copyWith =>
      CopyWith$Fragment$LetterSummary(this, (i) => i);
}

abstract class CopyWith$Fragment$LetterSummary<TRes> {
  factory CopyWith$Fragment$LetterSummary(Fragment$LetterSummary instance,
          TRes Function(Fragment$LetterSummary) then) =
      _CopyWithImpl$Fragment$LetterSummary;

  factory CopyWith$Fragment$LetterSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary;

  TRes call(
      {String? title,
      String? id,
      String? content,
      String? createTime,
      Fragment$LetterSummary$owner? owner,
      Fragment$LetterSummary$category? category,
      String? $__typename});
  CopyWith$Fragment$LetterSummary$owner<TRes> get owner;
  CopyWith$Fragment$LetterSummary$category<TRes> get category;
}

class _CopyWithImpl$Fragment$LetterSummary<TRes>
    implements CopyWith$Fragment$LetterSummary<TRes> {
  _CopyWithImpl$Fragment$LetterSummary(this._instance, this._then);

  final Fragment$LetterSummary _instance;

  final TRes Function(Fragment$LetterSummary) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? id = _undefined,
          Object? content = _undefined,
          Object? createTime = _undefined,
          Object? owner = _undefined,
          Object? category = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$LetterSummary(
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          createTime: createTime == _undefined || createTime == null
              ? _instance.createTime
              : (createTime as String),
          owner: owner == _undefined || owner == null
              ? _instance.owner
              : (owner as Fragment$LetterSummary$owner),
          category: category == _undefined || category == null
              ? _instance.category
              : (category as Fragment$LetterSummary$category),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$LetterSummary$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Fragment$LetterSummary$owner(
        local$owner, (e) => call(owner: e));
  }

  CopyWith$Fragment$LetterSummary$category<TRes> get category {
    final local$category = _instance.category;
    return CopyWith$Fragment$LetterSummary$category(
        local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Fragment$LetterSummary<TRes>
    implements CopyWith$Fragment$LetterSummary<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary(this._res);

  TRes _res;

  call(
          {String? title,
          String? id,
          String? content,
          String? createTime,
          Fragment$LetterSummary$owner? owner,
          Fragment$LetterSummary$category? category,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$LetterSummary$owner<TRes> get owner =>
      CopyWith$Fragment$LetterSummary$owner.stub(_res);
  CopyWith$Fragment$LetterSummary$category<TRes> get category =>
      CopyWith$Fragment$LetterSummary$category.stub(_res);
}

const fragmentDefinitionLetterSummary = FragmentDefinitionNode(
    name: NameNode(value: 'LetterSummary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Post'), isNonNull: false)),
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
          name: NameNode(value: 'createTime'),
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
    ]));
const documentNodeFragmentLetterSummary = DocumentNode(definitions: [
  fragmentDefinitionLetterSummary,
]);

extension ClientExtension$Fragment$LetterSummary on graphql.GraphQLClient {
  void writeFragment$LetterSummary(
          {required Fragment$LetterSummary data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'LetterSummary',
                  document: documentNodeFragmentLetterSummary)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$LetterSummary? readFragment$LetterSummary(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'LetterSummary',
                document: documentNodeFragmentLetterSummary)),
        optimistic: optimistic);
    return result == null ? null : Fragment$LetterSummary.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$LetterSummary$owner {
  Fragment$LetterSummary$owner(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Fragment$LetterSummary$owner.fromJson(Map<String, dynamic> json) =>
      _$Fragment$LetterSummary$ownerFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$LetterSummary$ownerToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$LetterSummary$owner) ||
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

extension UtilityExtension$Fragment$LetterSummary$owner
    on Fragment$LetterSummary$owner {
  CopyWith$Fragment$LetterSummary$owner<Fragment$LetterSummary$owner>
      get copyWith => CopyWith$Fragment$LetterSummary$owner(this, (i) => i);
}

abstract class CopyWith$Fragment$LetterSummary$owner<TRes> {
  factory CopyWith$Fragment$LetterSummary$owner(
          Fragment$LetterSummary$owner instance,
          TRes Function(Fragment$LetterSummary$owner) then) =
      _CopyWithImpl$Fragment$LetterSummary$owner;

  factory CopyWith$Fragment$LetterSummary$owner.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary$owner;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$LetterSummary$owner<TRes>
    implements CopyWith$Fragment$LetterSummary$owner<TRes> {
  _CopyWithImpl$Fragment$LetterSummary$owner(this._instance, this._then);

  final Fragment$LetterSummary$owner _instance;

  final TRes Function(Fragment$LetterSummary$owner) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$LetterSummary$owner(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$LetterSummary$owner<TRes>
    implements CopyWith$Fragment$LetterSummary$owner<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary$owner(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$LetterSummary$category {
  Fragment$LetterSummary$category(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Fragment$LetterSummary$category.fromJson(Map<String, dynamic> json) =>
      _$Fragment$LetterSummary$categoryFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$LetterSummary$categoryToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$LetterSummary$category) ||
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

extension UtilityExtension$Fragment$LetterSummary$category
    on Fragment$LetterSummary$category {
  CopyWith$Fragment$LetterSummary$category<Fragment$LetterSummary$category>
      get copyWith => CopyWith$Fragment$LetterSummary$category(this, (i) => i);
}

abstract class CopyWith$Fragment$LetterSummary$category<TRes> {
  factory CopyWith$Fragment$LetterSummary$category(
          Fragment$LetterSummary$category instance,
          TRes Function(Fragment$LetterSummary$category) then) =
      _CopyWithImpl$Fragment$LetterSummary$category;

  factory CopyWith$Fragment$LetterSummary$category.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary$category;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$LetterSummary$category<TRes>
    implements CopyWith$Fragment$LetterSummary$category<TRes> {
  _CopyWithImpl$Fragment$LetterSummary$category(this._instance, this._then);

  final Fragment$LetterSummary$category _instance;

  final TRes Function(Fragment$LetterSummary$category) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$LetterSummary$category(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$LetterSummary$category<TRes>
    implements CopyWith$Fragment$LetterSummary$category<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary$category(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$PraiseSummary {
  Fragment$PraiseSummary(
      {required this.title,
      required this.id,
      required this.content,
      this.hashtags,
      required this.owner,
      required this.category,
      required this.$__typename});

  @override
  factory Fragment$PraiseSummary.fromJson(Map<String, dynamic> json) =>
      _$Fragment$PraiseSummaryFromJson(json);

  final String title;

  final String id;

  final String content;

  final List<Fragment$PraiseSummary$hashtags>? hashtags;

  final Fragment$PraiseSummary$owner owner;

  final Fragment$PraiseSummary$category category;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$PraiseSummaryToJson(this);
  int get hashCode {
    final l$title = title;
    final l$id = id;
    final l$content = content;
    final l$hashtags = hashtags;
    final l$owner = owner;
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$id,
      l$content,
      l$hashtags == null ? null : Object.hashAll(l$hashtags.map((v) => v)),
      l$owner,
      l$category,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$PraiseSummary) || runtimeType != other.runtimeType)
      return false;
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
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$PraiseSummary on Fragment$PraiseSummary {
  CopyWith$Fragment$PraiseSummary<Fragment$PraiseSummary> get copyWith =>
      CopyWith$Fragment$PraiseSummary(this, (i) => i);
}

abstract class CopyWith$Fragment$PraiseSummary<TRes> {
  factory CopyWith$Fragment$PraiseSummary(Fragment$PraiseSummary instance,
          TRes Function(Fragment$PraiseSummary) then) =
      _CopyWithImpl$Fragment$PraiseSummary;

  factory CopyWith$Fragment$PraiseSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary;

  TRes call(
      {String? title,
      String? id,
      String? content,
      List<Fragment$PraiseSummary$hashtags>? hashtags,
      Fragment$PraiseSummary$owner? owner,
      Fragment$PraiseSummary$category? category,
      String? $__typename});
  TRes hashtags(
      Iterable<Fragment$PraiseSummary$hashtags>? Function(
              Iterable<
                  CopyWith$Fragment$PraiseSummary$hashtags<
                      Fragment$PraiseSummary$hashtags>>?)
          _fn);
  CopyWith$Fragment$PraiseSummary$owner<TRes> get owner;
  CopyWith$Fragment$PraiseSummary$category<TRes> get category;
}

class _CopyWithImpl$Fragment$PraiseSummary<TRes>
    implements CopyWith$Fragment$PraiseSummary<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary(this._instance, this._then);

  final Fragment$PraiseSummary _instance;

  final TRes Function(Fragment$PraiseSummary) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? id = _undefined,
          Object? content = _undefined,
          Object? hashtags = _undefined,
          Object? owner = _undefined,
          Object? category = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$PraiseSummary(
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          hashtags: hashtags == _undefined
              ? _instance.hashtags
              : (hashtags as List<Fragment$PraiseSummary$hashtags>?),
          owner: owner == _undefined || owner == null
              ? _instance.owner
              : (owner as Fragment$PraiseSummary$owner),
          category: category == _undefined || category == null
              ? _instance.category
              : (category as Fragment$PraiseSummary$category),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes hashtags(
          Iterable<Fragment$PraiseSummary$hashtags>? Function(
                  Iterable<
                      CopyWith$Fragment$PraiseSummary$hashtags<
                          Fragment$PraiseSummary$hashtags>>?)
              _fn) =>
      call(
          hashtags: _fn(_instance.hashtags?.map(
                  (e) => CopyWith$Fragment$PraiseSummary$hashtags(e, (i) => i)))
              ?.toList());
  CopyWith$Fragment$PraiseSummary$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Fragment$PraiseSummary$owner(
        local$owner, (e) => call(owner: e));
  }

  CopyWith$Fragment$PraiseSummary$category<TRes> get category {
    final local$category = _instance.category;
    return CopyWith$Fragment$PraiseSummary$category(
        local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Fragment$PraiseSummary<TRes>
    implements CopyWith$Fragment$PraiseSummary<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary(this._res);

  TRes _res;

  call(
          {String? title,
          String? id,
          String? content,
          List<Fragment$PraiseSummary$hashtags>? hashtags,
          Fragment$PraiseSummary$owner? owner,
          Fragment$PraiseSummary$category? category,
          String? $__typename}) =>
      _res;
  hashtags(_fn) => _res;
  CopyWith$Fragment$PraiseSummary$owner<TRes> get owner =>
      CopyWith$Fragment$PraiseSummary$owner.stub(_res);
  CopyWith$Fragment$PraiseSummary$category<TRes> get category =>
      CopyWith$Fragment$PraiseSummary$category.stub(_res);
}

const fragmentDefinitionPraiseSummary = FragmentDefinitionNode(
    name: NameNode(value: 'PraiseSummary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Post'), isNonNull: false)),
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
    ]));
const documentNodeFragmentPraiseSummary = DocumentNode(definitions: [
  fragmentDefinitionPraiseSummary,
]);

extension ClientExtension$Fragment$PraiseSummary on graphql.GraphQLClient {
  void writeFragment$PraiseSummary(
          {required Fragment$PraiseSummary data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'PraiseSummary',
                  document: documentNodeFragmentPraiseSummary)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$PraiseSummary? readFragment$PraiseSummary(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'PraiseSummary',
                document: documentNodeFragmentPraiseSummary)),
        optimistic: optimistic);
    return result == null ? null : Fragment$PraiseSummary.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$PraiseSummary$hashtags {
  Fragment$PraiseSummary$hashtags(
      {required this.id, required this.title, required this.$__typename});

  @override
  factory Fragment$PraiseSummary$hashtags.fromJson(Map<String, dynamic> json) =>
      _$Fragment$PraiseSummary$hashtagsFromJson(json);

  final String id;

  final String title;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$PraiseSummary$hashtagsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$PraiseSummary$hashtags) ||
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

extension UtilityExtension$Fragment$PraiseSummary$hashtags
    on Fragment$PraiseSummary$hashtags {
  CopyWith$Fragment$PraiseSummary$hashtags<Fragment$PraiseSummary$hashtags>
      get copyWith => CopyWith$Fragment$PraiseSummary$hashtags(this, (i) => i);
}

abstract class CopyWith$Fragment$PraiseSummary$hashtags<TRes> {
  factory CopyWith$Fragment$PraiseSummary$hashtags(
          Fragment$PraiseSummary$hashtags instance,
          TRes Function(Fragment$PraiseSummary$hashtags) then) =
      _CopyWithImpl$Fragment$PraiseSummary$hashtags;

  factory CopyWith$Fragment$PraiseSummary$hashtags.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary$hashtags;

  TRes call({String? id, String? title, String? $__typename});
}

class _CopyWithImpl$Fragment$PraiseSummary$hashtags<TRes>
    implements CopyWith$Fragment$PraiseSummary$hashtags<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary$hashtags(this._instance, this._then);

  final Fragment$PraiseSummary$hashtags _instance;

  final TRes Function(Fragment$PraiseSummary$hashtags) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$PraiseSummary$hashtags(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$PraiseSummary$hashtags<TRes>
    implements CopyWith$Fragment$PraiseSummary$hashtags<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary$hashtags(this._res);

  TRes _res;

  call({String? id, String? title, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$PraiseSummary$owner {
  Fragment$PraiseSummary$owner(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Fragment$PraiseSummary$owner.fromJson(Map<String, dynamic> json) =>
      _$Fragment$PraiseSummary$ownerFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$PraiseSummary$ownerToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$PraiseSummary$owner) ||
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

extension UtilityExtension$Fragment$PraiseSummary$owner
    on Fragment$PraiseSummary$owner {
  CopyWith$Fragment$PraiseSummary$owner<Fragment$PraiseSummary$owner>
      get copyWith => CopyWith$Fragment$PraiseSummary$owner(this, (i) => i);
}

abstract class CopyWith$Fragment$PraiseSummary$owner<TRes> {
  factory CopyWith$Fragment$PraiseSummary$owner(
          Fragment$PraiseSummary$owner instance,
          TRes Function(Fragment$PraiseSummary$owner) then) =
      _CopyWithImpl$Fragment$PraiseSummary$owner;

  factory CopyWith$Fragment$PraiseSummary$owner.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary$owner;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$PraiseSummary$owner<TRes>
    implements CopyWith$Fragment$PraiseSummary$owner<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary$owner(this._instance, this._then);

  final Fragment$PraiseSummary$owner _instance;

  final TRes Function(Fragment$PraiseSummary$owner) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$PraiseSummary$owner(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$PraiseSummary$owner<TRes>
    implements CopyWith$Fragment$PraiseSummary$owner<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary$owner(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$PraiseSummary$category {
  Fragment$PraiseSummary$category(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Fragment$PraiseSummary$category.fromJson(Map<String, dynamic> json) =>
      _$Fragment$PraiseSummary$categoryFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$PraiseSummary$categoryToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$PraiseSummary$category) ||
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

extension UtilityExtension$Fragment$PraiseSummary$category
    on Fragment$PraiseSummary$category {
  CopyWith$Fragment$PraiseSummary$category<Fragment$PraiseSummary$category>
      get copyWith => CopyWith$Fragment$PraiseSummary$category(this, (i) => i);
}

abstract class CopyWith$Fragment$PraiseSummary$category<TRes> {
  factory CopyWith$Fragment$PraiseSummary$category(
          Fragment$PraiseSummary$category instance,
          TRes Function(Fragment$PraiseSummary$category) then) =
      _CopyWithImpl$Fragment$PraiseSummary$category;

  factory CopyWith$Fragment$PraiseSummary$category.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary$category;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$PraiseSummary$category<TRes>
    implements CopyWith$Fragment$PraiseSummary$category<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary$category(this._instance, this._then);

  final Fragment$PraiseSummary$category _instance;

  final TRes Function(Fragment$PraiseSummary$category) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$PraiseSummary$category(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$PraiseSummary$category<TRes>
    implements CopyWith$Fragment$PraiseSummary$category<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary$category(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$Letters {
  Variables$Query$Letters(
      {this.first, this.after, this.or, this.hasCategoryWith});

  @override
  factory Variables$Query$Letters.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$LettersFromJson(json);

  final int? first;

  final String? after;

  final List<Input$PostWhereInput>? or;

  final List<Input$CategoryWhereInput>? hasCategoryWith;

  Map<String, dynamic> toJson() => _$Variables$Query$LettersToJson(this);
  int get hashCode {
    final l$first = first;
    final l$after = after;
    final l$or = or;
    final l$hasCategoryWith = hasCategoryWith;
    return Object.hashAll([
      l$first,
      l$after,
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$hasCategoryWith == null
          ? null
          : Object.hashAll(l$hasCategoryWith.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$Letters) || runtimeType != other.runtimeType)
      return false;
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) return false;
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    final l$hasCategoryWith = hasCategoryWith;
    final lOther$hasCategoryWith = other.hasCategoryWith;
    if (l$hasCategoryWith != null && lOther$hasCategoryWith != null) {
      if (l$hasCategoryWith.length != lOther$hasCategoryWith.length)
        return false;
      for (int i = 0; i < l$hasCategoryWith.length; i++) {
        final l$hasCategoryWith$entry = l$hasCategoryWith[i];
        final lOther$hasCategoryWith$entry = lOther$hasCategoryWith[i];
        if (l$hasCategoryWith$entry != lOther$hasCategoryWith$entry)
          return false;
      }
    } else if (l$hasCategoryWith != lOther$hasCategoryWith) {
      return false;
    }

    return true;
  }

  CopyWith$Variables$Query$Letters<Variables$Query$Letters> get copyWith =>
      CopyWith$Variables$Query$Letters(this, (i) => i);
}

abstract class CopyWith$Variables$Query$Letters<TRes> {
  factory CopyWith$Variables$Query$Letters(Variables$Query$Letters instance,
          TRes Function(Variables$Query$Letters) then) =
      _CopyWithImpl$Variables$Query$Letters;

  factory CopyWith$Variables$Query$Letters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Letters;

  TRes call(
      {int? first,
      String? after,
      List<Input$PostWhereInput>? or,
      List<Input$CategoryWhereInput>? hasCategoryWith});
}

class _CopyWithImpl$Variables$Query$Letters<TRes>
    implements CopyWith$Variables$Query$Letters<TRes> {
  _CopyWithImpl$Variables$Query$Letters(this._instance, this._then);

  final Variables$Query$Letters _instance;

  final TRes Function(Variables$Query$Letters) _then;

  static const _undefined = {};

  TRes call(
          {Object? first = _undefined,
          Object? after = _undefined,
          Object? or = _undefined,
          Object? hasCategoryWith = _undefined}) =>
      _then(Variables$Query$Letters(
          first: first == _undefined ? _instance.first : (first as int?),
          after: after == _undefined ? _instance.after : (after as String?),
          or: or == _undefined
              ? _instance.or
              : (or as List<Input$PostWhereInput>?),
          hasCategoryWith: hasCategoryWith == _undefined
              ? _instance.hasCategoryWith
              : (hasCategoryWith as List<Input$CategoryWhereInput>?)));
}

class _CopyWithStubImpl$Variables$Query$Letters<TRes>
    implements CopyWith$Variables$Query$Letters<TRes> {
  _CopyWithStubImpl$Variables$Query$Letters(this._res);

  TRes _res;

  call(
          {int? first,
          String? after,
          List<Input$PostWhereInput>? or,
          List<Input$CategoryWhereInput>? hasCategoryWith}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Query$Letters {
  Query$Letters({required this.posts, required this.$__typename});

  @override
  factory Query$Letters.fromJson(Map<String, dynamic> json) =>
      _$Query$LettersFromJson(json);

  final Query$Letters$posts posts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$LettersToJson(this);
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Letters) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$Letters on Query$Letters {
  CopyWith$Query$Letters<Query$Letters> get copyWith =>
      CopyWith$Query$Letters(this, (i) => i);
}

abstract class CopyWith$Query$Letters<TRes> {
  factory CopyWith$Query$Letters(
          Query$Letters instance, TRes Function(Query$Letters) then) =
      _CopyWithImpl$Query$Letters;

  factory CopyWith$Query$Letters.stub(TRes res) =
      _CopyWithStubImpl$Query$Letters;

  TRes call({Query$Letters$posts? posts, String? $__typename});
  CopyWith$Query$Letters$posts<TRes> get posts;
}

class _CopyWithImpl$Query$Letters<TRes>
    implements CopyWith$Query$Letters<TRes> {
  _CopyWithImpl$Query$Letters(this._instance, this._then);

  final Query$Letters _instance;

  final TRes Function(Query$Letters) _then;

  static const _undefined = {};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Letters(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$Letters$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$Letters$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$Letters$posts(local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$Letters<TRes>
    implements CopyWith$Query$Letters<TRes> {
  _CopyWithStubImpl$Query$Letters(this._res);

  TRes _res;

  call({Query$Letters$posts? posts, String? $__typename}) => _res;
  CopyWith$Query$Letters$posts<TRes> get posts =>
      CopyWith$Query$Letters$posts.stub(_res);
}

const documentNodeQueryLetters = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Letters'),
      variableDefinitions: [
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
            variable: VariableNode(name: NameNode(value: 'or')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'PostWhereInput'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hasCategoryWith')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'CategoryWhereInput'),
                    isNonNull: true),
                isNonNull: false),
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
                        value: VariableNode(
                            name: NameNode(value: 'hasCategoryWith'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'or'),
                        value: VariableNode(name: NameNode(value: 'or')))
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
Query$Letters _parserFn$Query$Letters(Map<String, dynamic> data) =>
    Query$Letters.fromJson(data);

class Options$Query$Letters extends graphql.QueryOptions<Query$Letters> {
  Options$Query$Letters(
      {String? operationName,
      Variables$Query$Letters? variables,
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
            document: documentNodeQueryLetters,
            parserFn: _parserFn$Query$Letters);
}

class WatchOptions$Query$Letters
    extends graphql.WatchQueryOptions<Query$Letters> {
  WatchOptions$Query$Letters(
      {String? operationName,
      Variables$Query$Letters? variables,
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
            document: documentNodeQueryLetters,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$Letters);
}

class FetchMoreOptions$Query$Letters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Letters(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$Letters? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryLetters);
}

extension ClientExtension$Query$Letters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Letters>> query$Letters(
          [Options$Query$Letters? options]) async =>
      await this.query(options ?? Options$Query$Letters());
  graphql.ObservableQuery<Query$Letters> watchQuery$Letters(
          [WatchOptions$Query$Letters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Letters());
  void writeQuery$Letters(
          {required Query$Letters data,
          Variables$Query$Letters? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryLetters),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$Letters? readQuery$Letters(
      {Variables$Query$Letters? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryLetters),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$Letters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Letters> useQuery$Letters(
        [Options$Query$Letters? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Letters());
graphql.ObservableQuery<Query$Letters> useWatchQuery$Letters(
        [WatchOptions$Query$Letters? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Letters());

class Query$Letters$Widget extends graphql_flutter.Query<Query$Letters> {
  Query$Letters$Widget(
      {widgets.Key? key,
      Options$Query$Letters? options,
      required graphql_flutter.QueryBuilder<Query$Letters> builder})
      : super(
            key: key,
            options: options ?? Options$Query$Letters(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$Letters$posts {
  Query$Letters$posts(
      {this.edges, required this.pageInfo, required this.$__typename});

  @override
  factory Query$Letters$posts.fromJson(Map<String, dynamic> json) =>
      _$Query$Letters$postsFromJson(json);

  final List<Query$Letters$posts$edges?>? edges;

  final Query$Letters$posts$pageInfo pageInfo;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Letters$postsToJson(this);
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
    if (!(other is Query$Letters$posts) || runtimeType != other.runtimeType)
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

    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$Letters$posts on Query$Letters$posts {
  CopyWith$Query$Letters$posts<Query$Letters$posts> get copyWith =>
      CopyWith$Query$Letters$posts(this, (i) => i);
}

abstract class CopyWith$Query$Letters$posts<TRes> {
  factory CopyWith$Query$Letters$posts(Query$Letters$posts instance,
          TRes Function(Query$Letters$posts) then) =
      _CopyWithImpl$Query$Letters$posts;

  factory CopyWith$Query$Letters$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$Letters$posts;

  TRes call(
      {List<Query$Letters$posts$edges?>? edges,
      Query$Letters$posts$pageInfo? pageInfo,
      String? $__typename});
  TRes edges(
      Iterable<Query$Letters$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$Letters$posts$edges<
                      Query$Letters$posts$edges>?>?)
          _fn);
  CopyWith$Query$Letters$posts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Letters$posts<TRes>
    implements CopyWith$Query$Letters$posts<TRes> {
  _CopyWithImpl$Query$Letters$posts(this._instance, this._then);

  final Query$Letters$posts _instance;

  final TRes Function(Query$Letters$posts) _then;

  static const _undefined = {};

  TRes call(
          {Object? edges = _undefined,
          Object? pageInfo = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$Letters$posts(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$Letters$posts$edges?>?),
          pageInfo: pageInfo == _undefined || pageInfo == null
              ? _instance.pageInfo
              : (pageInfo as Query$Letters$posts$pageInfo),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes edges(
          Iterable<Query$Letters$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Letters$posts$edges<
                          Query$Letters$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Letters$posts$edges(e, (i) => i)))?.toList());
  CopyWith$Query$Letters$posts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Letters$posts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$Letters$posts<TRes>
    implements CopyWith$Query$Letters$posts<TRes> {
  _CopyWithStubImpl$Query$Letters$posts(this._res);

  TRes _res;

  call(
          {List<Query$Letters$posts$edges?>? edges,
          Query$Letters$posts$pageInfo? pageInfo,
          String? $__typename}) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$Letters$posts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Letters$posts$pageInfo.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$Letters$posts$edges {
  Query$Letters$posts$edges({this.node, required this.$__typename});

  @override
  factory Query$Letters$posts$edges.fromJson(Map<String, dynamic> json) =>
      _$Query$Letters$posts$edgesFromJson(json);

  final Fragment$LetterSummary? node;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Letters$posts$edgesToJson(this);
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Letters$posts$edges) ||
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

extension UtilityExtension$Query$Letters$posts$edges
    on Query$Letters$posts$edges {
  CopyWith$Query$Letters$posts$edges<Query$Letters$posts$edges> get copyWith =>
      CopyWith$Query$Letters$posts$edges(this, (i) => i);
}

abstract class CopyWith$Query$Letters$posts$edges<TRes> {
  factory CopyWith$Query$Letters$posts$edges(Query$Letters$posts$edges instance,
          TRes Function(Query$Letters$posts$edges) then) =
      _CopyWithImpl$Query$Letters$posts$edges;

  factory CopyWith$Query$Letters$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Letters$posts$edges;

  TRes call({Fragment$LetterSummary? node, String? $__typename});
  CopyWith$Fragment$LetterSummary<TRes> get node;
}

class _CopyWithImpl$Query$Letters$posts$edges<TRes>
    implements CopyWith$Query$Letters$posts$edges<TRes> {
  _CopyWithImpl$Query$Letters$posts$edges(this._instance, this._then);

  final Query$Letters$posts$edges _instance;

  final TRes Function(Query$Letters$posts$edges) _then;

  static const _undefined = {};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$Letters$posts$edges(
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

class _CopyWithStubImpl$Query$Letters$posts$edges<TRes>
    implements CopyWith$Query$Letters$posts$edges<TRes> {
  _CopyWithStubImpl$Query$Letters$posts$edges(this._res);

  TRes _res;

  call({Fragment$LetterSummary? node, String? $__typename}) => _res;
  CopyWith$Fragment$LetterSummary<TRes> get node =>
      CopyWith$Fragment$LetterSummary.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$Letters$posts$pageInfo {
  Query$Letters$posts$pageInfo(
      {this.endCursor, required this.hasNextPage, required this.$__typename});

  @override
  factory Query$Letters$posts$pageInfo.fromJson(Map<String, dynamic> json) =>
      _$Query$Letters$posts$pageInfoFromJson(json);

  final String? endCursor;

  final bool hasNextPage;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$Letters$posts$pageInfoToJson(this);
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$endCursor, l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$Letters$posts$pageInfo) ||
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

extension UtilityExtension$Query$Letters$posts$pageInfo
    on Query$Letters$posts$pageInfo {
  CopyWith$Query$Letters$posts$pageInfo<Query$Letters$posts$pageInfo>
      get copyWith => CopyWith$Query$Letters$posts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$Letters$posts$pageInfo<TRes> {
  factory CopyWith$Query$Letters$posts$pageInfo(
          Query$Letters$posts$pageInfo instance,
          TRes Function(Query$Letters$posts$pageInfo) then) =
      _CopyWithImpl$Query$Letters$posts$pageInfo;

  factory CopyWith$Query$Letters$posts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Letters$posts$pageInfo;

  TRes call({String? endCursor, bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$Letters$posts$pageInfo<TRes>
    implements CopyWith$Query$Letters$posts$pageInfo<TRes> {
  _CopyWithImpl$Query$Letters$posts$pageInfo(this._instance, this._then);

  final Query$Letters$posts$pageInfo _instance;

  final TRes Function(Query$Letters$posts$pageInfo) _then;

  static const _undefined = {};

  TRes call(
          {Object? endCursor = _undefined,
          Object? hasNextPage = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$Letters$posts$pageInfo(
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

class _CopyWithStubImpl$Query$Letters$posts$pageInfo<TRes>
    implements CopyWith$Query$Letters$posts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Letters$posts$pageInfo(this._res);

  TRes _res;

  call({String? endCursor, bool? hasNextPage, String? $__typename}) => _res;
}
