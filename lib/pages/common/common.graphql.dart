import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'common.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$LetterSummary {
  Fragment$LetterSummary(
      {required this.title,
      required this.id,
      required this.content,
      required this.owner,
      required this.$__typename});

  @override
  factory Fragment$LetterSummary.fromJson(Map<String, dynamic> json) =>
      _$Fragment$LetterSummaryFromJson(json);

  final String title;

  final String id;

  final String content;

  final Fragment$LetterSummary$owner owner;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$LetterSummaryToJson(this);
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
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
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
      Fragment$LetterSummary$owner? owner,
      String? $__typename});
  CopyWith$Fragment$LetterSummary$owner<TRes> get owner;
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
          Object? owner = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$LetterSummary(
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          owner: owner == _undefined || owner == null
              ? _instance.owner
              : (owner as Fragment$LetterSummary$owner),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$LetterSummary$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Fragment$LetterSummary$owner(
        local$owner, (e) => call(owner: e));
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
          Fragment$LetterSummary$owner? owner,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$LetterSummary$owner<TRes> get owner =>
      CopyWith$Fragment$LetterSummary$owner.stub(_res);
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
