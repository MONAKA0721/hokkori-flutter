import '../../graphql/ent.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$LetterSummary {
  Fragment$LetterSummary({
    required this.title,
    required this.id,
    required this.content,
    required this.createTime,
    this.thumbnail,
    required this.spoiled,
    this.hashtags,
    required this.work,
    required this.owner,
    required this.category,
    this.likedUsers,
    this.bookmarkedUsers,
    required this.$__typename,
  });

  factory Fragment$LetterSummary.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$id = json['id'];
    final l$content = json['content'];
    final l$createTime = json['createTime'];
    final l$thumbnail = json['thumbnail'];
    final l$spoiled = json['spoiled'];
    final l$hashtags = json['hashtags'];
    final l$work = json['work'];
    final l$owner = json['owner'];
    final l$category = json['category'];
    final l$likedUsers = json['likedUsers'];
    final l$bookmarkedUsers = json['bookmarkedUsers'];
    final l$$__typename = json['__typename'];
    return Fragment$LetterSummary(
      title: (l$title as String),
      id: (l$id as String),
      content: (l$content as String),
      createTime: (l$createTime as String),
      thumbnail: (l$thumbnail as String?),
      spoiled: (l$spoiled as bool),
      hashtags: (l$hashtags as List<dynamic>?)
          ?.map((e) => Fragment$LetterSummary$hashtags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      work: Fragment$LetterSummary$work.fromJson(
          (l$work as Map<String, dynamic>)),
      owner: Fragment$LetterSummary$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      category: Fragment$LetterSummary$category.fromJson(
          (l$category as Map<String, dynamic>)),
      likedUsers: (l$likedUsers as List<dynamic>?)
          ?.map((e) => Fragment$LetterSummary$likedUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      bookmarkedUsers: (l$bookmarkedUsers as List<dynamic>?)
          ?.map((e) => Fragment$LetterSummary$bookmarkedUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String id;

  final String content;

  final String createTime;

  final String? thumbnail;

  final bool spoiled;

  final List<Fragment$LetterSummary$hashtags>? hashtags;

  final Fragment$LetterSummary$work work;

  final Fragment$LetterSummary$owner owner;

  final Fragment$LetterSummary$category category;

  final List<Fragment$LetterSummary$likedUsers>? likedUsers;

  final List<Fragment$LetterSummary$bookmarkedUsers>? bookmarkedUsers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$createTime = createTime;
    _resultData['createTime'] = l$createTime;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$spoiled = spoiled;
    _resultData['spoiled'] = l$spoiled;
    final l$hashtags = hashtags;
    _resultData['hashtags'] = l$hashtags?.map((e) => e.toJson()).toList();
    final l$work = work;
    _resultData['work'] = l$work.toJson();
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$category = category;
    _resultData['category'] = l$category.toJson();
    final l$likedUsers = likedUsers;
    _resultData['likedUsers'] = l$likedUsers?.map((e) => e.toJson()).toList();
    final l$bookmarkedUsers = bookmarkedUsers;
    _resultData['bookmarkedUsers'] =
        l$bookmarkedUsers?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$id = id;
    final l$content = content;
    final l$createTime = createTime;
    final l$thumbnail = thumbnail;
    final l$spoiled = spoiled;
    final l$hashtags = hashtags;
    final l$work = work;
    final l$owner = owner;
    final l$category = category;
    final l$likedUsers = likedUsers;
    final l$bookmarkedUsers = bookmarkedUsers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$id,
      l$content,
      l$createTime,
      l$thumbnail,
      l$spoiled,
      l$hashtags == null ? null : Object.hashAll(l$hashtags.map((v) => v)),
      l$work,
      l$owner,
      l$category,
      l$likedUsers == null ? null : Object.hashAll(l$likedUsers.map((v) => v)),
      l$bookmarkedUsers == null
          ? null
          : Object.hashAll(l$bookmarkedUsers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$LetterSummary) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$createTime = createTime;
    final lOther$createTime = other.createTime;
    if (l$createTime != lOther$createTime) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$spoiled = spoiled;
    final lOther$spoiled = other.spoiled;
    if (l$spoiled != lOther$spoiled) {
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
    final l$work = work;
    final lOther$work = other.work;
    if (l$work != lOther$work) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$likedUsers = likedUsers;
    final lOther$likedUsers = other.likedUsers;
    if (l$likedUsers != null && lOther$likedUsers != null) {
      if (l$likedUsers.length != lOther$likedUsers.length) {
        return false;
      }
      for (int i = 0; i < l$likedUsers.length; i++) {
        final l$likedUsers$entry = l$likedUsers[i];
        final lOther$likedUsers$entry = lOther$likedUsers[i];
        if (l$likedUsers$entry != lOther$likedUsers$entry) {
          return false;
        }
      }
    } else if (l$likedUsers != lOther$likedUsers) {
      return false;
    }
    final l$bookmarkedUsers = bookmarkedUsers;
    final lOther$bookmarkedUsers = other.bookmarkedUsers;
    if (l$bookmarkedUsers != null && lOther$bookmarkedUsers != null) {
      if (l$bookmarkedUsers.length != lOther$bookmarkedUsers.length) {
        return false;
      }
      for (int i = 0; i < l$bookmarkedUsers.length; i++) {
        final l$bookmarkedUsers$entry = l$bookmarkedUsers[i];
        final lOther$bookmarkedUsers$entry = lOther$bookmarkedUsers[i];
        if (l$bookmarkedUsers$entry != lOther$bookmarkedUsers$entry) {
          return false;
        }
      }
    } else if (l$bookmarkedUsers != lOther$bookmarkedUsers) {
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

extension UtilityExtension$Fragment$LetterSummary on Fragment$LetterSummary {
  CopyWith$Fragment$LetterSummary<Fragment$LetterSummary> get copyWith =>
      CopyWith$Fragment$LetterSummary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$LetterSummary<TRes> {
  factory CopyWith$Fragment$LetterSummary(
    Fragment$LetterSummary instance,
    TRes Function(Fragment$LetterSummary) then,
  ) = _CopyWithImpl$Fragment$LetterSummary;

  factory CopyWith$Fragment$LetterSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary;

  TRes call({
    String? title,
    String? id,
    String? content,
    String? createTime,
    String? thumbnail,
    bool? spoiled,
    List<Fragment$LetterSummary$hashtags>? hashtags,
    Fragment$LetterSummary$work? work,
    Fragment$LetterSummary$owner? owner,
    Fragment$LetterSummary$category? category,
    List<Fragment$LetterSummary$likedUsers>? likedUsers,
    List<Fragment$LetterSummary$bookmarkedUsers>? bookmarkedUsers,
    String? $__typename,
  });
  TRes hashtags(
      Iterable<Fragment$LetterSummary$hashtags>? Function(
              Iterable<
                  CopyWith$Fragment$LetterSummary$hashtags<
                      Fragment$LetterSummary$hashtags>>?)
          _fn);
  CopyWith$Fragment$LetterSummary$work<TRes> get work;
  CopyWith$Fragment$LetterSummary$owner<TRes> get owner;
  CopyWith$Fragment$LetterSummary$category<TRes> get category;
  TRes likedUsers(
      Iterable<Fragment$LetterSummary$likedUsers>? Function(
              Iterable<
                  CopyWith$Fragment$LetterSummary$likedUsers<
                      Fragment$LetterSummary$likedUsers>>?)
          _fn);
  TRes bookmarkedUsers(
      Iterable<Fragment$LetterSummary$bookmarkedUsers>? Function(
              Iterable<
                  CopyWith$Fragment$LetterSummary$bookmarkedUsers<
                      Fragment$LetterSummary$bookmarkedUsers>>?)
          _fn);
}

class _CopyWithImpl$Fragment$LetterSummary<TRes>
    implements CopyWith$Fragment$LetterSummary<TRes> {
  _CopyWithImpl$Fragment$LetterSummary(
    this._instance,
    this._then,
  );

  final Fragment$LetterSummary _instance;

  final TRes Function(Fragment$LetterSummary) _then;

  static const _undefined = {};

  TRes call({
    Object? title = _undefined,
    Object? id = _undefined,
    Object? content = _undefined,
    Object? createTime = _undefined,
    Object? thumbnail = _undefined,
    Object? spoiled = _undefined,
    Object? hashtags = _undefined,
    Object? work = _undefined,
    Object? owner = _undefined,
    Object? category = _undefined,
    Object? likedUsers = _undefined,
    Object? bookmarkedUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
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
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        spoiled: spoiled == _undefined || spoiled == null
            ? _instance.spoiled
            : (spoiled as bool),
        hashtags: hashtags == _undefined
            ? _instance.hashtags
            : (hashtags as List<Fragment$LetterSummary$hashtags>?),
        work: work == _undefined || work == null
            ? _instance.work
            : (work as Fragment$LetterSummary$work),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Fragment$LetterSummary$owner),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as Fragment$LetterSummary$category),
        likedUsers: likedUsers == _undefined
            ? _instance.likedUsers
            : (likedUsers as List<Fragment$LetterSummary$likedUsers>?),
        bookmarkedUsers: bookmarkedUsers == _undefined
            ? _instance.bookmarkedUsers
            : (bookmarkedUsers
                as List<Fragment$LetterSummary$bookmarkedUsers>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes hashtags(
          Iterable<Fragment$LetterSummary$hashtags>? Function(
                  Iterable<
                      CopyWith$Fragment$LetterSummary$hashtags<
                          Fragment$LetterSummary$hashtags>>?)
              _fn) =>
      call(
          hashtags: _fn(_instance.hashtags
              ?.map((e) => CopyWith$Fragment$LetterSummary$hashtags(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Fragment$LetterSummary$work<TRes> get work {
    final local$work = _instance.work;
    return CopyWith$Fragment$LetterSummary$work(
        local$work, (e) => call(work: e));
  }

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

  TRes likedUsers(
          Iterable<Fragment$LetterSummary$likedUsers>? Function(
                  Iterable<
                      CopyWith$Fragment$LetterSummary$likedUsers<
                          Fragment$LetterSummary$likedUsers>>?)
              _fn) =>
      call(
          likedUsers: _fn(_instance.likedUsers
              ?.map((e) => CopyWith$Fragment$LetterSummary$likedUsers(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes bookmarkedUsers(
          Iterable<Fragment$LetterSummary$bookmarkedUsers>? Function(
                  Iterable<
                      CopyWith$Fragment$LetterSummary$bookmarkedUsers<
                          Fragment$LetterSummary$bookmarkedUsers>>?)
              _fn) =>
      call(
          bookmarkedUsers: _fn(_instance.bookmarkedUsers
              ?.map((e) => CopyWith$Fragment$LetterSummary$bookmarkedUsers(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Fragment$LetterSummary<TRes>
    implements CopyWith$Fragment$LetterSummary<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary(this._res);

  TRes _res;

  call({
    String? title,
    String? id,
    String? content,
    String? createTime,
    String? thumbnail,
    bool? spoiled,
    List<Fragment$LetterSummary$hashtags>? hashtags,
    Fragment$LetterSummary$work? work,
    Fragment$LetterSummary$owner? owner,
    Fragment$LetterSummary$category? category,
    List<Fragment$LetterSummary$likedUsers>? likedUsers,
    List<Fragment$LetterSummary$bookmarkedUsers>? bookmarkedUsers,
    String? $__typename,
  }) =>
      _res;
  hashtags(_fn) => _res;
  CopyWith$Fragment$LetterSummary$work<TRes> get work =>
      CopyWith$Fragment$LetterSummary$work.stub(_res);
  CopyWith$Fragment$LetterSummary$owner<TRes> get owner =>
      CopyWith$Fragment$LetterSummary$owner.stub(_res);
  CopyWith$Fragment$LetterSummary$category<TRes> get category =>
      CopyWith$Fragment$LetterSummary$category.stub(_res);
  likedUsers(_fn) => _res;
  bookmarkedUsers(_fn) => _res;
}

const fragmentDefinitionLetterSummary = FragmentDefinitionNode(
  name: NameNode(value: 'LetterSummary'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Post'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createTime'),
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
      name: NameNode(value: 'spoiled'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
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
          name: NameNode(value: 'avatarURL'),
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
      name: NameNode(value: 'likedUsers'),
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
      name: NameNode(value: 'bookmarkedUsers'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentLetterSummary = DocumentNode(definitions: [
  fragmentDefinitionLetterSummary,
]);

extension ClientExtension$Fragment$LetterSummary on graphql.GraphQLClient {
  void writeFragment$LetterSummary({
    required Fragment$LetterSummary data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'LetterSummary',
            document: documentNodeFragmentLetterSummary,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$LetterSummary? readFragment$LetterSummary({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'LetterSummary',
          document: documentNodeFragmentLetterSummary,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$LetterSummary.fromJson(result);
  }
}

class Fragment$LetterSummary$hashtags {
  Fragment$LetterSummary$hashtags({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Fragment$LetterSummary$hashtags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$LetterSummary$hashtags(
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
    if (!(other is Fragment$LetterSummary$hashtags) ||
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

extension UtilityExtension$Fragment$LetterSummary$hashtags
    on Fragment$LetterSummary$hashtags {
  CopyWith$Fragment$LetterSummary$hashtags<Fragment$LetterSummary$hashtags>
      get copyWith => CopyWith$Fragment$LetterSummary$hashtags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$LetterSummary$hashtags<TRes> {
  factory CopyWith$Fragment$LetterSummary$hashtags(
    Fragment$LetterSummary$hashtags instance,
    TRes Function(Fragment$LetterSummary$hashtags) then,
  ) = _CopyWithImpl$Fragment$LetterSummary$hashtags;

  factory CopyWith$Fragment$LetterSummary$hashtags.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary$hashtags;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LetterSummary$hashtags<TRes>
    implements CopyWith$Fragment$LetterSummary$hashtags<TRes> {
  _CopyWithImpl$Fragment$LetterSummary$hashtags(
    this._instance,
    this._then,
  );

  final Fragment$LetterSummary$hashtags _instance;

  final TRes Function(Fragment$LetterSummary$hashtags) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LetterSummary$hashtags(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$LetterSummary$hashtags<TRes>
    implements CopyWith$Fragment$LetterSummary$hashtags<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary$hashtags(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$LetterSummary$work {
  Fragment$LetterSummary$work({
    required this.id,
    this.thumbnail,
    required this.$__typename,
  });

  factory Fragment$LetterSummary$work.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Fragment$LetterSummary$work(
      id: (l$id as String),
      thumbnail: (l$thumbnail as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? thumbnail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thumbnail = thumbnail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thumbnail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$LetterSummary$work) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Fragment$LetterSummary$work
    on Fragment$LetterSummary$work {
  CopyWith$Fragment$LetterSummary$work<Fragment$LetterSummary$work>
      get copyWith => CopyWith$Fragment$LetterSummary$work(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$LetterSummary$work<TRes> {
  factory CopyWith$Fragment$LetterSummary$work(
    Fragment$LetterSummary$work instance,
    TRes Function(Fragment$LetterSummary$work) then,
  ) = _CopyWithImpl$Fragment$LetterSummary$work;

  factory CopyWith$Fragment$LetterSummary$work.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary$work;

  TRes call({
    String? id,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LetterSummary$work<TRes>
    implements CopyWith$Fragment$LetterSummary$work<TRes> {
  _CopyWithImpl$Fragment$LetterSummary$work(
    this._instance,
    this._then,
  );

  final Fragment$LetterSummary$work _instance;

  final TRes Function(Fragment$LetterSummary$work) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LetterSummary$work(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$LetterSummary$work<TRes>
    implements CopyWith$Fragment$LetterSummary$work<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary$work(this._res);

  TRes _res;

  call({
    String? id,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$LetterSummary$owner {
  Fragment$LetterSummary$owner({
    required this.id,
    required this.name,
    this.avatarURL,
    required this.$__typename,
  });

  factory Fragment$LetterSummary$owner.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatarURL = json['avatarURL'];
    final l$$__typename = json['__typename'];
    return Fragment$LetterSummary$owner(
      id: (l$id as String),
      name: (l$name as String),
      avatarURL: (l$avatarURL as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? avatarURL;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatarURL = avatarURL;
    _resultData['avatarURL'] = l$avatarURL;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatarURL = avatarURL;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatarURL,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$LetterSummary$owner) ||
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
    final l$avatarURL = avatarURL;
    final lOther$avatarURL = other.avatarURL;
    if (l$avatarURL != lOther$avatarURL) {
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

extension UtilityExtension$Fragment$LetterSummary$owner
    on Fragment$LetterSummary$owner {
  CopyWith$Fragment$LetterSummary$owner<Fragment$LetterSummary$owner>
      get copyWith => CopyWith$Fragment$LetterSummary$owner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$LetterSummary$owner<TRes> {
  factory CopyWith$Fragment$LetterSummary$owner(
    Fragment$LetterSummary$owner instance,
    TRes Function(Fragment$LetterSummary$owner) then,
  ) = _CopyWithImpl$Fragment$LetterSummary$owner;

  factory CopyWith$Fragment$LetterSummary$owner.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary$owner;

  TRes call({
    String? id,
    String? name,
    String? avatarURL,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LetterSummary$owner<TRes>
    implements CopyWith$Fragment$LetterSummary$owner<TRes> {
  _CopyWithImpl$Fragment$LetterSummary$owner(
    this._instance,
    this._then,
  );

  final Fragment$LetterSummary$owner _instance;

  final TRes Function(Fragment$LetterSummary$owner) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatarURL = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LetterSummary$owner(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatarURL: avatarURL == _undefined
            ? _instance.avatarURL
            : (avatarURL as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$LetterSummary$owner<TRes>
    implements CopyWith$Fragment$LetterSummary$owner<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary$owner(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? avatarURL,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$LetterSummary$category {
  Fragment$LetterSummary$category({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Fragment$LetterSummary$category.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$LetterSummary$category(
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
    if (!(other is Fragment$LetterSummary$category) ||
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

extension UtilityExtension$Fragment$LetterSummary$category
    on Fragment$LetterSummary$category {
  CopyWith$Fragment$LetterSummary$category<Fragment$LetterSummary$category>
      get copyWith => CopyWith$Fragment$LetterSummary$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$LetterSummary$category<TRes> {
  factory CopyWith$Fragment$LetterSummary$category(
    Fragment$LetterSummary$category instance,
    TRes Function(Fragment$LetterSummary$category) then,
  ) = _CopyWithImpl$Fragment$LetterSummary$category;

  factory CopyWith$Fragment$LetterSummary$category.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary$category;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LetterSummary$category<TRes>
    implements CopyWith$Fragment$LetterSummary$category<TRes> {
  _CopyWithImpl$Fragment$LetterSummary$category(
    this._instance,
    this._then,
  );

  final Fragment$LetterSummary$category _instance;

  final TRes Function(Fragment$LetterSummary$category) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LetterSummary$category(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$LetterSummary$category<TRes>
    implements CopyWith$Fragment$LetterSummary$category<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary$category(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$LetterSummary$likedUsers {
  Fragment$LetterSummary$likedUsers({
    required this.id,
    required this.$__typename,
  });

  factory Fragment$LetterSummary$likedUsers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$LetterSummary$likedUsers(
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
    if (!(other is Fragment$LetterSummary$likedUsers) ||
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

extension UtilityExtension$Fragment$LetterSummary$likedUsers
    on Fragment$LetterSummary$likedUsers {
  CopyWith$Fragment$LetterSummary$likedUsers<Fragment$LetterSummary$likedUsers>
      get copyWith => CopyWith$Fragment$LetterSummary$likedUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$LetterSummary$likedUsers<TRes> {
  factory CopyWith$Fragment$LetterSummary$likedUsers(
    Fragment$LetterSummary$likedUsers instance,
    TRes Function(Fragment$LetterSummary$likedUsers) then,
  ) = _CopyWithImpl$Fragment$LetterSummary$likedUsers;

  factory CopyWith$Fragment$LetterSummary$likedUsers.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary$likedUsers;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LetterSummary$likedUsers<TRes>
    implements CopyWith$Fragment$LetterSummary$likedUsers<TRes> {
  _CopyWithImpl$Fragment$LetterSummary$likedUsers(
    this._instance,
    this._then,
  );

  final Fragment$LetterSummary$likedUsers _instance;

  final TRes Function(Fragment$LetterSummary$likedUsers) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LetterSummary$likedUsers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$LetterSummary$likedUsers<TRes>
    implements CopyWith$Fragment$LetterSummary$likedUsers<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary$likedUsers(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$LetterSummary$bookmarkedUsers {
  Fragment$LetterSummary$bookmarkedUsers({
    required this.id,
    required this.$__typename,
  });

  factory Fragment$LetterSummary$bookmarkedUsers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$LetterSummary$bookmarkedUsers(
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
    if (!(other is Fragment$LetterSummary$bookmarkedUsers) ||
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

extension UtilityExtension$Fragment$LetterSummary$bookmarkedUsers
    on Fragment$LetterSummary$bookmarkedUsers {
  CopyWith$Fragment$LetterSummary$bookmarkedUsers<
          Fragment$LetterSummary$bookmarkedUsers>
      get copyWith => CopyWith$Fragment$LetterSummary$bookmarkedUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$LetterSummary$bookmarkedUsers<TRes> {
  factory CopyWith$Fragment$LetterSummary$bookmarkedUsers(
    Fragment$LetterSummary$bookmarkedUsers instance,
    TRes Function(Fragment$LetterSummary$bookmarkedUsers) then,
  ) = _CopyWithImpl$Fragment$LetterSummary$bookmarkedUsers;

  factory CopyWith$Fragment$LetterSummary$bookmarkedUsers.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LetterSummary$bookmarkedUsers;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LetterSummary$bookmarkedUsers<TRes>
    implements CopyWith$Fragment$LetterSummary$bookmarkedUsers<TRes> {
  _CopyWithImpl$Fragment$LetterSummary$bookmarkedUsers(
    this._instance,
    this._then,
  );

  final Fragment$LetterSummary$bookmarkedUsers _instance;

  final TRes Function(Fragment$LetterSummary$bookmarkedUsers) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LetterSummary$bookmarkedUsers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$LetterSummary$bookmarkedUsers<TRes>
    implements CopyWith$Fragment$LetterSummary$bookmarkedUsers<TRes> {
  _CopyWithStubImpl$Fragment$LetterSummary$bookmarkedUsers(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PraiseSummary {
  Fragment$PraiseSummary({
    required this.id,
    required this.title,
    required this.type,
    required this.createTime,
    required this.content,
    required this.spoiled,
    this.hashtags,
    required this.owner,
    required this.category,
    this.likedUsers,
    this.bookmarkedUsers,
    required this.$__typename,
  });

  factory Fragment$PraiseSummary.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$createTime = json['createTime'];
    final l$content = json['content'];
    final l$spoiled = json['spoiled'];
    final l$hashtags = json['hashtags'];
    final l$owner = json['owner'];
    final l$category = json['category'];
    final l$likedUsers = json['likedUsers'];
    final l$bookmarkedUsers = json['bookmarkedUsers'];
    final l$$__typename = json['__typename'];
    return Fragment$PraiseSummary(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PostPostType((l$type as String)),
      createTime: (l$createTime as String),
      content: (l$content as String),
      spoiled: (l$spoiled as bool),
      hashtags: (l$hashtags as List<dynamic>?)
          ?.map((e) => Fragment$PraiseSummary$hashtags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      owner: Fragment$PraiseSummary$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      category: Fragment$PraiseSummary$category.fromJson(
          (l$category as Map<String, dynamic>)),
      likedUsers: (l$likedUsers as List<dynamic>?)
          ?.map((e) => Fragment$PraiseSummary$likedUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      bookmarkedUsers: (l$bookmarkedUsers as List<dynamic>?)
          ?.map((e) => Fragment$PraiseSummary$bookmarkedUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$PostPostType type;

  final String createTime;

  final String content;

  final bool spoiled;

  final List<Fragment$PraiseSummary$hashtags>? hashtags;

  final Fragment$PraiseSummary$owner owner;

  final Fragment$PraiseSummary$category category;

  final List<Fragment$PraiseSummary$likedUsers>? likedUsers;

  final List<Fragment$PraiseSummary$bookmarkedUsers>? bookmarkedUsers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PostPostType(l$type);
    final l$createTime = createTime;
    _resultData['createTime'] = l$createTime;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$spoiled = spoiled;
    _resultData['spoiled'] = l$spoiled;
    final l$hashtags = hashtags;
    _resultData['hashtags'] = l$hashtags?.map((e) => e.toJson()).toList();
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$category = category;
    _resultData['category'] = l$category.toJson();
    final l$likedUsers = likedUsers;
    _resultData['likedUsers'] = l$likedUsers?.map((e) => e.toJson()).toList();
    final l$bookmarkedUsers = bookmarkedUsers;
    _resultData['bookmarkedUsers'] =
        l$bookmarkedUsers?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$createTime = createTime;
    final l$content = content;
    final l$spoiled = spoiled;
    final l$hashtags = hashtags;
    final l$owner = owner;
    final l$category = category;
    final l$likedUsers = likedUsers;
    final l$bookmarkedUsers = bookmarkedUsers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$createTime,
      l$content,
      l$spoiled,
      l$hashtags == null ? null : Object.hashAll(l$hashtags.map((v) => v)),
      l$owner,
      l$category,
      l$likedUsers == null ? null : Object.hashAll(l$likedUsers.map((v) => v)),
      l$bookmarkedUsers == null
          ? null
          : Object.hashAll(l$bookmarkedUsers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PraiseSummary) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$createTime = createTime;
    final lOther$createTime = other.createTime;
    if (l$createTime != lOther$createTime) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$spoiled = spoiled;
    final lOther$spoiled = other.spoiled;
    if (l$spoiled != lOther$spoiled) {
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
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$likedUsers = likedUsers;
    final lOther$likedUsers = other.likedUsers;
    if (l$likedUsers != null && lOther$likedUsers != null) {
      if (l$likedUsers.length != lOther$likedUsers.length) {
        return false;
      }
      for (int i = 0; i < l$likedUsers.length; i++) {
        final l$likedUsers$entry = l$likedUsers[i];
        final lOther$likedUsers$entry = lOther$likedUsers[i];
        if (l$likedUsers$entry != lOther$likedUsers$entry) {
          return false;
        }
      }
    } else if (l$likedUsers != lOther$likedUsers) {
      return false;
    }
    final l$bookmarkedUsers = bookmarkedUsers;
    final lOther$bookmarkedUsers = other.bookmarkedUsers;
    if (l$bookmarkedUsers != null && lOther$bookmarkedUsers != null) {
      if (l$bookmarkedUsers.length != lOther$bookmarkedUsers.length) {
        return false;
      }
      for (int i = 0; i < l$bookmarkedUsers.length; i++) {
        final l$bookmarkedUsers$entry = l$bookmarkedUsers[i];
        final lOther$bookmarkedUsers$entry = lOther$bookmarkedUsers[i];
        if (l$bookmarkedUsers$entry != lOther$bookmarkedUsers$entry) {
          return false;
        }
      }
    } else if (l$bookmarkedUsers != lOther$bookmarkedUsers) {
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

extension UtilityExtension$Fragment$PraiseSummary on Fragment$PraiseSummary {
  CopyWith$Fragment$PraiseSummary<Fragment$PraiseSummary> get copyWith =>
      CopyWith$Fragment$PraiseSummary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PraiseSummary<TRes> {
  factory CopyWith$Fragment$PraiseSummary(
    Fragment$PraiseSummary instance,
    TRes Function(Fragment$PraiseSummary) then,
  ) = _CopyWithImpl$Fragment$PraiseSummary;

  factory CopyWith$Fragment$PraiseSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary;

  TRes call({
    String? id,
    String? title,
    Enum$PostPostType? type,
    String? createTime,
    String? content,
    bool? spoiled,
    List<Fragment$PraiseSummary$hashtags>? hashtags,
    Fragment$PraiseSummary$owner? owner,
    Fragment$PraiseSummary$category? category,
    List<Fragment$PraiseSummary$likedUsers>? likedUsers,
    List<Fragment$PraiseSummary$bookmarkedUsers>? bookmarkedUsers,
    String? $__typename,
  });
  TRes hashtags(
      Iterable<Fragment$PraiseSummary$hashtags>? Function(
              Iterable<
                  CopyWith$Fragment$PraiseSummary$hashtags<
                      Fragment$PraiseSummary$hashtags>>?)
          _fn);
  CopyWith$Fragment$PraiseSummary$owner<TRes> get owner;
  CopyWith$Fragment$PraiseSummary$category<TRes> get category;
  TRes likedUsers(
      Iterable<Fragment$PraiseSummary$likedUsers>? Function(
              Iterable<
                  CopyWith$Fragment$PraiseSummary$likedUsers<
                      Fragment$PraiseSummary$likedUsers>>?)
          _fn);
  TRes bookmarkedUsers(
      Iterable<Fragment$PraiseSummary$bookmarkedUsers>? Function(
              Iterable<
                  CopyWith$Fragment$PraiseSummary$bookmarkedUsers<
                      Fragment$PraiseSummary$bookmarkedUsers>>?)
          _fn);
}

class _CopyWithImpl$Fragment$PraiseSummary<TRes>
    implements CopyWith$Fragment$PraiseSummary<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary(
    this._instance,
    this._then,
  );

  final Fragment$PraiseSummary _instance;

  final TRes Function(Fragment$PraiseSummary) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? createTime = _undefined,
    Object? content = _undefined,
    Object? spoiled = _undefined,
    Object? hashtags = _undefined,
    Object? owner = _undefined,
    Object? category = _undefined,
    Object? likedUsers = _undefined,
    Object? bookmarkedUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PraiseSummary(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PostPostType),
        createTime: createTime == _undefined || createTime == null
            ? _instance.createTime
            : (createTime as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        spoiled: spoiled == _undefined || spoiled == null
            ? _instance.spoiled
            : (spoiled as bool),
        hashtags: hashtags == _undefined
            ? _instance.hashtags
            : (hashtags as List<Fragment$PraiseSummary$hashtags>?),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Fragment$PraiseSummary$owner),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as Fragment$PraiseSummary$category),
        likedUsers: likedUsers == _undefined
            ? _instance.likedUsers
            : (likedUsers as List<Fragment$PraiseSummary$likedUsers>?),
        bookmarkedUsers: bookmarkedUsers == _undefined
            ? _instance.bookmarkedUsers
            : (bookmarkedUsers
                as List<Fragment$PraiseSummary$bookmarkedUsers>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes hashtags(
          Iterable<Fragment$PraiseSummary$hashtags>? Function(
                  Iterable<
                      CopyWith$Fragment$PraiseSummary$hashtags<
                          Fragment$PraiseSummary$hashtags>>?)
              _fn) =>
      call(
          hashtags: _fn(_instance.hashtags
              ?.map((e) => CopyWith$Fragment$PraiseSummary$hashtags(
                    e,
                    (i) => i,
                  )))?.toList());
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

  TRes likedUsers(
          Iterable<Fragment$PraiseSummary$likedUsers>? Function(
                  Iterable<
                      CopyWith$Fragment$PraiseSummary$likedUsers<
                          Fragment$PraiseSummary$likedUsers>>?)
              _fn) =>
      call(
          likedUsers: _fn(_instance.likedUsers
              ?.map((e) => CopyWith$Fragment$PraiseSummary$likedUsers(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes bookmarkedUsers(
          Iterable<Fragment$PraiseSummary$bookmarkedUsers>? Function(
                  Iterable<
                      CopyWith$Fragment$PraiseSummary$bookmarkedUsers<
                          Fragment$PraiseSummary$bookmarkedUsers>>?)
              _fn) =>
      call(
          bookmarkedUsers: _fn(_instance.bookmarkedUsers
              ?.map((e) => CopyWith$Fragment$PraiseSummary$bookmarkedUsers(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Fragment$PraiseSummary<TRes>
    implements CopyWith$Fragment$PraiseSummary<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PostPostType? type,
    String? createTime,
    String? content,
    bool? spoiled,
    List<Fragment$PraiseSummary$hashtags>? hashtags,
    Fragment$PraiseSummary$owner? owner,
    Fragment$PraiseSummary$category? category,
    List<Fragment$PraiseSummary$likedUsers>? likedUsers,
    List<Fragment$PraiseSummary$bookmarkedUsers>? bookmarkedUsers,
    String? $__typename,
  }) =>
      _res;
  hashtags(_fn) => _res;
  CopyWith$Fragment$PraiseSummary$owner<TRes> get owner =>
      CopyWith$Fragment$PraiseSummary$owner.stub(_res);
  CopyWith$Fragment$PraiseSummary$category<TRes> get category =>
      CopyWith$Fragment$PraiseSummary$category.stub(_res);
  likedUsers(_fn) => _res;
  bookmarkedUsers(_fn) => _res;
}

const fragmentDefinitionPraiseSummary = FragmentDefinitionNode(
  name: NameNode(value: 'PraiseSummary'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Post'),
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
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createTime'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'spoiled'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
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
          name: NameNode(value: 'avatarURL'),
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
      name: NameNode(value: 'likedUsers'),
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
      name: NameNode(value: 'bookmarkedUsers'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPraiseSummary = DocumentNode(definitions: [
  fragmentDefinitionPraiseSummary,
]);

extension ClientExtension$Fragment$PraiseSummary on graphql.GraphQLClient {
  void writeFragment$PraiseSummary({
    required Fragment$PraiseSummary data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PraiseSummary',
            document: documentNodeFragmentPraiseSummary,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PraiseSummary? readFragment$PraiseSummary({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PraiseSummary',
          document: documentNodeFragmentPraiseSummary,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PraiseSummary.fromJson(result);
  }
}

class Fragment$PraiseSummary$hashtags {
  Fragment$PraiseSummary$hashtags({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Fragment$PraiseSummary$hashtags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$PraiseSummary$hashtags(
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
    if (!(other is Fragment$PraiseSummary$hashtags) ||
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

extension UtilityExtension$Fragment$PraiseSummary$hashtags
    on Fragment$PraiseSummary$hashtags {
  CopyWith$Fragment$PraiseSummary$hashtags<Fragment$PraiseSummary$hashtags>
      get copyWith => CopyWith$Fragment$PraiseSummary$hashtags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PraiseSummary$hashtags<TRes> {
  factory CopyWith$Fragment$PraiseSummary$hashtags(
    Fragment$PraiseSummary$hashtags instance,
    TRes Function(Fragment$PraiseSummary$hashtags) then,
  ) = _CopyWithImpl$Fragment$PraiseSummary$hashtags;

  factory CopyWith$Fragment$PraiseSummary$hashtags.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary$hashtags;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PraiseSummary$hashtags<TRes>
    implements CopyWith$Fragment$PraiseSummary$hashtags<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary$hashtags(
    this._instance,
    this._then,
  );

  final Fragment$PraiseSummary$hashtags _instance;

  final TRes Function(Fragment$PraiseSummary$hashtags) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PraiseSummary$hashtags(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PraiseSummary$hashtags<TRes>
    implements CopyWith$Fragment$PraiseSummary$hashtags<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary$hashtags(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PraiseSummary$owner {
  Fragment$PraiseSummary$owner({
    required this.id,
    required this.name,
    this.avatarURL,
    required this.$__typename,
  });

  factory Fragment$PraiseSummary$owner.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatarURL = json['avatarURL'];
    final l$$__typename = json['__typename'];
    return Fragment$PraiseSummary$owner(
      id: (l$id as String),
      name: (l$name as String),
      avatarURL: (l$avatarURL as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? avatarURL;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatarURL = avatarURL;
    _resultData['avatarURL'] = l$avatarURL;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatarURL = avatarURL;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatarURL,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PraiseSummary$owner) ||
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
    final l$avatarURL = avatarURL;
    final lOther$avatarURL = other.avatarURL;
    if (l$avatarURL != lOther$avatarURL) {
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

extension UtilityExtension$Fragment$PraiseSummary$owner
    on Fragment$PraiseSummary$owner {
  CopyWith$Fragment$PraiseSummary$owner<Fragment$PraiseSummary$owner>
      get copyWith => CopyWith$Fragment$PraiseSummary$owner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PraiseSummary$owner<TRes> {
  factory CopyWith$Fragment$PraiseSummary$owner(
    Fragment$PraiseSummary$owner instance,
    TRes Function(Fragment$PraiseSummary$owner) then,
  ) = _CopyWithImpl$Fragment$PraiseSummary$owner;

  factory CopyWith$Fragment$PraiseSummary$owner.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary$owner;

  TRes call({
    String? id,
    String? name,
    String? avatarURL,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PraiseSummary$owner<TRes>
    implements CopyWith$Fragment$PraiseSummary$owner<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary$owner(
    this._instance,
    this._then,
  );

  final Fragment$PraiseSummary$owner _instance;

  final TRes Function(Fragment$PraiseSummary$owner) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatarURL = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PraiseSummary$owner(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatarURL: avatarURL == _undefined
            ? _instance.avatarURL
            : (avatarURL as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PraiseSummary$owner<TRes>
    implements CopyWith$Fragment$PraiseSummary$owner<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary$owner(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? avatarURL,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PraiseSummary$category {
  Fragment$PraiseSummary$category({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Fragment$PraiseSummary$category.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$PraiseSummary$category(
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
    if (!(other is Fragment$PraiseSummary$category) ||
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

extension UtilityExtension$Fragment$PraiseSummary$category
    on Fragment$PraiseSummary$category {
  CopyWith$Fragment$PraiseSummary$category<Fragment$PraiseSummary$category>
      get copyWith => CopyWith$Fragment$PraiseSummary$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PraiseSummary$category<TRes> {
  factory CopyWith$Fragment$PraiseSummary$category(
    Fragment$PraiseSummary$category instance,
    TRes Function(Fragment$PraiseSummary$category) then,
  ) = _CopyWithImpl$Fragment$PraiseSummary$category;

  factory CopyWith$Fragment$PraiseSummary$category.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary$category;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PraiseSummary$category<TRes>
    implements CopyWith$Fragment$PraiseSummary$category<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary$category(
    this._instance,
    this._then,
  );

  final Fragment$PraiseSummary$category _instance;

  final TRes Function(Fragment$PraiseSummary$category) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PraiseSummary$category(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PraiseSummary$category<TRes>
    implements CopyWith$Fragment$PraiseSummary$category<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary$category(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PraiseSummary$likedUsers {
  Fragment$PraiseSummary$likedUsers({
    required this.id,
    required this.$__typename,
  });

  factory Fragment$PraiseSummary$likedUsers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$PraiseSummary$likedUsers(
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
    if (!(other is Fragment$PraiseSummary$likedUsers) ||
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

extension UtilityExtension$Fragment$PraiseSummary$likedUsers
    on Fragment$PraiseSummary$likedUsers {
  CopyWith$Fragment$PraiseSummary$likedUsers<Fragment$PraiseSummary$likedUsers>
      get copyWith => CopyWith$Fragment$PraiseSummary$likedUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PraiseSummary$likedUsers<TRes> {
  factory CopyWith$Fragment$PraiseSummary$likedUsers(
    Fragment$PraiseSummary$likedUsers instance,
    TRes Function(Fragment$PraiseSummary$likedUsers) then,
  ) = _CopyWithImpl$Fragment$PraiseSummary$likedUsers;

  factory CopyWith$Fragment$PraiseSummary$likedUsers.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary$likedUsers;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PraiseSummary$likedUsers<TRes>
    implements CopyWith$Fragment$PraiseSummary$likedUsers<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary$likedUsers(
    this._instance,
    this._then,
  );

  final Fragment$PraiseSummary$likedUsers _instance;

  final TRes Function(Fragment$PraiseSummary$likedUsers) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PraiseSummary$likedUsers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PraiseSummary$likedUsers<TRes>
    implements CopyWith$Fragment$PraiseSummary$likedUsers<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary$likedUsers(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PraiseSummary$bookmarkedUsers {
  Fragment$PraiseSummary$bookmarkedUsers({
    required this.id,
    required this.$__typename,
  });

  factory Fragment$PraiseSummary$bookmarkedUsers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$PraiseSummary$bookmarkedUsers(
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
    if (!(other is Fragment$PraiseSummary$bookmarkedUsers) ||
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

extension UtilityExtension$Fragment$PraiseSummary$bookmarkedUsers
    on Fragment$PraiseSummary$bookmarkedUsers {
  CopyWith$Fragment$PraiseSummary$bookmarkedUsers<
          Fragment$PraiseSummary$bookmarkedUsers>
      get copyWith => CopyWith$Fragment$PraiseSummary$bookmarkedUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PraiseSummary$bookmarkedUsers<TRes> {
  factory CopyWith$Fragment$PraiseSummary$bookmarkedUsers(
    Fragment$PraiseSummary$bookmarkedUsers instance,
    TRes Function(Fragment$PraiseSummary$bookmarkedUsers) then,
  ) = _CopyWithImpl$Fragment$PraiseSummary$bookmarkedUsers;

  factory CopyWith$Fragment$PraiseSummary$bookmarkedUsers.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PraiseSummary$bookmarkedUsers;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PraiseSummary$bookmarkedUsers<TRes>
    implements CopyWith$Fragment$PraiseSummary$bookmarkedUsers<TRes> {
  _CopyWithImpl$Fragment$PraiseSummary$bookmarkedUsers(
    this._instance,
    this._then,
  );

  final Fragment$PraiseSummary$bookmarkedUsers _instance;

  final TRes Function(Fragment$PraiseSummary$bookmarkedUsers) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PraiseSummary$bookmarkedUsers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PraiseSummary$bookmarkedUsers<TRes>
    implements CopyWith$Fragment$PraiseSummary$bookmarkedUsers<TRes> {
  _CopyWithStubImpl$Fragment$PraiseSummary$bookmarkedUsers(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$WorkSummary {
  Fragment$WorkSummary({
    required this.id,
    required this.title,
    this.thumbnail,
    required this.$__typename,
  });

  factory Fragment$WorkSummary.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Fragment$WorkSummary(
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
    if (!(other is Fragment$WorkSummary) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$WorkSummary on Fragment$WorkSummary {
  CopyWith$Fragment$WorkSummary<Fragment$WorkSummary> get copyWith =>
      CopyWith$Fragment$WorkSummary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WorkSummary<TRes> {
  factory CopyWith$Fragment$WorkSummary(
    Fragment$WorkSummary instance,
    TRes Function(Fragment$WorkSummary) then,
  ) = _CopyWithImpl$Fragment$WorkSummary;

  factory CopyWith$Fragment$WorkSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$WorkSummary;

  TRes call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WorkSummary<TRes>
    implements CopyWith$Fragment$WorkSummary<TRes> {
  _CopyWithImpl$Fragment$WorkSummary(
    this._instance,
    this._then,
  );

  final Fragment$WorkSummary _instance;

  final TRes Function(Fragment$WorkSummary) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$WorkSummary(
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

class _CopyWithStubImpl$Fragment$WorkSummary<TRes>
    implements CopyWith$Fragment$WorkSummary<TRes> {
  _CopyWithStubImpl$Fragment$WorkSummary(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionWorkSummary = FragmentDefinitionNode(
  name: NameNode(value: 'WorkSummary'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentWorkSummary = DocumentNode(definitions: [
  fragmentDefinitionWorkSummary,
]);

extension ClientExtension$Fragment$WorkSummary on graphql.GraphQLClient {
  void writeFragment$WorkSummary({
    required Fragment$WorkSummary data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'WorkSummary',
            document: documentNodeFragmentWorkSummary,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$WorkSummary? readFragment$WorkSummary({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'WorkSummary',
          document: documentNodeFragmentWorkSummary,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$WorkSummary.fromJson(result);
  }
}

class Variables$Query$Praises {
  factory Variables$Query$Praises({
    int? first,
    String? after,
    List<Input$PostWhereInput>? or,
    List<Input$CategoryWhereInput>? hasCategoryWith,
  }) =>
      Variables$Query$Praises._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (or != null) r'or': or,
        if (hasCategoryWith != null) r'hasCategoryWith': hasCategoryWith,
      });

  Variables$Query$Praises._(this._$data);

  factory Variables$Query$Praises.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hasCategoryWith')) {
      final l$hasCategoryWith = data['hasCategoryWith'];
      result$data['hasCategoryWith'] = (l$hasCategoryWith as List<dynamic>?)
          ?.map((e) =>
              Input$CategoryWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$Praises._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);
  String? get after => (_$data['after'] as String?);
  List<Input$PostWhereInput>? get or =>
      (_$data['or'] as List<Input$PostWhereInput>?);
  List<Input$CategoryWhereInput>? get hasCategoryWith =>
      (_$data['hasCategoryWith'] as List<Input$CategoryWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('hasCategoryWith')) {
      final l$hasCategoryWith = hasCategoryWith;
      result$data['hasCategoryWith'] =
          l$hasCategoryWith?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Praises<Variables$Query$Praises> get copyWith =>
      CopyWith$Variables$Query$Praises(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Praises) ||
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$hasCategoryWith = hasCategoryWith;
    final lOther$hasCategoryWith = other.hasCategoryWith;
    if (_$data.containsKey('hasCategoryWith') !=
        other._$data.containsKey('hasCategoryWith')) {
      return false;
    }
    if (l$hasCategoryWith != null && lOther$hasCategoryWith != null) {
      if (l$hasCategoryWith.length != lOther$hasCategoryWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasCategoryWith.length; i++) {
        final l$hasCategoryWith$entry = l$hasCategoryWith[i];
        final lOther$hasCategoryWith$entry = lOther$hasCategoryWith[i];
        if (l$hasCategoryWith$entry != lOther$hasCategoryWith$entry) {
          return false;
        }
      }
    } else if (l$hasCategoryWith != lOther$hasCategoryWith) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$after = after;
    final l$or = or;
    final l$hasCategoryWith = hasCategoryWith;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('hasCategoryWith')
          ? l$hasCategoryWith == null
              ? null
              : Object.hashAll(l$hasCategoryWith.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Praises<TRes> {
  factory CopyWith$Variables$Query$Praises(
    Variables$Query$Praises instance,
    TRes Function(Variables$Query$Praises) then,
  ) = _CopyWithImpl$Variables$Query$Praises;

  factory CopyWith$Variables$Query$Praises.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Praises;

  TRes call({
    int? first,
    String? after,
    List<Input$PostWhereInput>? or,
    List<Input$CategoryWhereInput>? hasCategoryWith,
  });
}

class _CopyWithImpl$Variables$Query$Praises<TRes>
    implements CopyWith$Variables$Query$Praises<TRes> {
  _CopyWithImpl$Variables$Query$Praises(
    this._instance,
    this._then,
  );

  final Variables$Query$Praises _instance;

  final TRes Function(Variables$Query$Praises) _then;

  static const _undefined = {};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
    Object? or = _undefined,
    Object? hasCategoryWith = _undefined,
  }) =>
      _then(Variables$Query$Praises._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (or != _undefined) 'or': (or as List<Input$PostWhereInput>?),
        if (hasCategoryWith != _undefined)
          'hasCategoryWith':
              (hasCategoryWith as List<Input$CategoryWhereInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Praises<TRes>
    implements CopyWith$Variables$Query$Praises<TRes> {
  _CopyWithStubImpl$Variables$Query$Praises(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
    List<Input$PostWhereInput>? or,
    List<Input$CategoryWhereInput>? hasCategoryWith,
  }) =>
      _res;
}

class Query$Praises {
  Query$Praises({
    required this.posts,
    required this.$__typename,
  });

  factory Query$Praises.fromJson(Map<String, dynamic> json) {
    final l$posts = json['posts'];
    final l$$__typename = json['__typename'];
    return Query$Praises(
      posts: Query$Praises$posts.fromJson((l$posts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Praises$posts posts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$posts = posts;
    _resultData['posts'] = l$posts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$posts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Praises) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$posts = posts;
    final lOther$posts = other.posts;
    if (l$posts != lOther$posts) {
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

extension UtilityExtension$Query$Praises on Query$Praises {
  CopyWith$Query$Praises<Query$Praises> get copyWith => CopyWith$Query$Praises(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Praises<TRes> {
  factory CopyWith$Query$Praises(
    Query$Praises instance,
    TRes Function(Query$Praises) then,
  ) = _CopyWithImpl$Query$Praises;

  factory CopyWith$Query$Praises.stub(TRes res) =
      _CopyWithStubImpl$Query$Praises;

  TRes call({
    Query$Praises$posts? posts,
    String? $__typename,
  });
  CopyWith$Query$Praises$posts<TRes> get posts;
}

class _CopyWithImpl$Query$Praises<TRes>
    implements CopyWith$Query$Praises<TRes> {
  _CopyWithImpl$Query$Praises(
    this._instance,
    this._then,
  );

  final Query$Praises _instance;

  final TRes Function(Query$Praises) _then;

  static const _undefined = {};

  TRes call({
    Object? posts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Praises(
        posts: posts == _undefined || posts == null
            ? _instance.posts
            : (posts as Query$Praises$posts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Praises$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$Praises$posts(local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$Praises<TRes>
    implements CopyWith$Query$Praises<TRes> {
  _CopyWithStubImpl$Query$Praises(this._res);

  TRes _res;

  call({
    Query$Praises$posts? posts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Praises$posts<TRes> get posts =>
      CopyWith$Query$Praises$posts.stub(_res);
}

const documentNodeQueryPraises = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Praises'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hasCategoryWith')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'CategoryWhereInput'),
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
        name: NameNode(value: 'posts'),
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
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'direction'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'field'),
                value: EnumValueNode(name: NameNode(value: 'CREATE_TIME')),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'praise')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'hasCategoryWith'),
                value: VariableNode(name: NameNode(value: 'hasCategoryWith')),
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
Query$Praises _parserFn$Query$Praises(Map<String, dynamic> data) =>
    Query$Praises.fromJson(data);

class Options$Query$Praises extends graphql.QueryOptions<Query$Praises> {
  Options$Query$Praises({
    String? operationName,
    Variables$Query$Praises? variables,
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
          document: documentNodeQueryPraises,
          parserFn: _parserFn$Query$Praises,
        );
}

class WatchOptions$Query$Praises
    extends graphql.WatchQueryOptions<Query$Praises> {
  WatchOptions$Query$Praises({
    String? operationName,
    Variables$Query$Praises? variables,
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
          document: documentNodeQueryPraises,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Praises,
        );
}

class FetchMoreOptions$Query$Praises extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Praises({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Praises? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryPraises,
        );
}

extension ClientExtension$Query$Praises on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Praises>> query$Praises(
          [Options$Query$Praises? options]) async =>
      await this.query(options ?? Options$Query$Praises());
  graphql.ObservableQuery<Query$Praises> watchQuery$Praises(
          [WatchOptions$Query$Praises? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Praises());
  void writeQuery$Praises({
    required Query$Praises data,
    Variables$Query$Praises? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryPraises),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Praises? readQuery$Praises({
    Variables$Query$Praises? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPraises),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Praises.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Praises> useQuery$Praises(
        [Options$Query$Praises? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Praises());
graphql.ObservableQuery<Query$Praises> useWatchQuery$Praises(
        [WatchOptions$Query$Praises? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Praises());

class Query$Praises$Widget extends graphql_flutter.Query<Query$Praises> {
  Query$Praises$Widget({
    widgets.Key? key,
    Options$Query$Praises? options,
    required graphql_flutter.QueryBuilder<Query$Praises> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Praises(),
          builder: builder,
        );
}

class Query$Praises$posts {
  Query$Praises$posts({
    this.edges,
    required this.pageInfo,
    required this.$__typename,
  });

  factory Query$Praises$posts.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$Praises$posts(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Praises$posts$edges.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$Praises$posts$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Praises$posts$edges?>? edges;

  final Query$Praises$posts$pageInfo pageInfo;

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
    if (!(other is Query$Praises$posts) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Praises$posts on Query$Praises$posts {
  CopyWith$Query$Praises$posts<Query$Praises$posts> get copyWith =>
      CopyWith$Query$Praises$posts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Praises$posts<TRes> {
  factory CopyWith$Query$Praises$posts(
    Query$Praises$posts instance,
    TRes Function(Query$Praises$posts) then,
  ) = _CopyWithImpl$Query$Praises$posts;

  factory CopyWith$Query$Praises$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$Praises$posts;

  TRes call({
    List<Query$Praises$posts$edges?>? edges,
    Query$Praises$posts$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Praises$posts$edges?>? Function(
              Iterable<
                  CopyWith$Query$Praises$posts$edges<
                      Query$Praises$posts$edges>?>?)
          _fn);
  CopyWith$Query$Praises$posts$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Praises$posts<TRes>
    implements CopyWith$Query$Praises$posts<TRes> {
  _CopyWithImpl$Query$Praises$posts(
    this._instance,
    this._then,
  );

  final Query$Praises$posts _instance;

  final TRes Function(Query$Praises$posts) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Praises$posts(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Praises$posts$edges?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$Praises$posts$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$Praises$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Praises$posts$edges<
                          Query$Praises$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Praises$posts$edges(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Query$Praises$posts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Praises$posts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$Praises$posts<TRes>
    implements CopyWith$Query$Praises$posts<TRes> {
  _CopyWithStubImpl$Query$Praises$posts(this._res);

  TRes _res;

  call({
    List<Query$Praises$posts$edges?>? edges,
    Query$Praises$posts$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$Praises$posts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Praises$posts$pageInfo.stub(_res);
}

class Query$Praises$posts$edges {
  Query$Praises$posts$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$Praises$posts$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Praises$posts$edges(
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
    if (!(other is Query$Praises$posts$edges) ||
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

extension UtilityExtension$Query$Praises$posts$edges
    on Query$Praises$posts$edges {
  CopyWith$Query$Praises$posts$edges<Query$Praises$posts$edges> get copyWith =>
      CopyWith$Query$Praises$posts$edges(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Praises$posts$edges<TRes> {
  factory CopyWith$Query$Praises$posts$edges(
    Query$Praises$posts$edges instance,
    TRes Function(Query$Praises$posts$edges) then,
  ) = _CopyWithImpl$Query$Praises$posts$edges;

  factory CopyWith$Query$Praises$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Praises$posts$edges;

  TRes call({
    Fragment$PraiseSummary? node,
    String? $__typename,
  });
  CopyWith$Fragment$PraiseSummary<TRes> get node;
}

class _CopyWithImpl$Query$Praises$posts$edges<TRes>
    implements CopyWith$Query$Praises$posts$edges<TRes> {
  _CopyWithImpl$Query$Praises$posts$edges(
    this._instance,
    this._then,
  );

  final Query$Praises$posts$edges _instance;

  final TRes Function(Query$Praises$posts$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Praises$posts$edges(
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

class _CopyWithStubImpl$Query$Praises$posts$edges<TRes>
    implements CopyWith$Query$Praises$posts$edges<TRes> {
  _CopyWithStubImpl$Query$Praises$posts$edges(this._res);

  TRes _res;

  call({
    Fragment$PraiseSummary? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PraiseSummary<TRes> get node =>
      CopyWith$Fragment$PraiseSummary.stub(_res);
}

class Query$Praises$posts$pageInfo {
  Query$Praises$posts$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.$__typename,
  });

  factory Query$Praises$posts$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Praises$posts$pageInfo(
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
    if (!(other is Query$Praises$posts$pageInfo) ||
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

extension UtilityExtension$Query$Praises$posts$pageInfo
    on Query$Praises$posts$pageInfo {
  CopyWith$Query$Praises$posts$pageInfo<Query$Praises$posts$pageInfo>
      get copyWith => CopyWith$Query$Praises$posts$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Praises$posts$pageInfo<TRes> {
  factory CopyWith$Query$Praises$posts$pageInfo(
    Query$Praises$posts$pageInfo instance,
    TRes Function(Query$Praises$posts$pageInfo) then,
  ) = _CopyWithImpl$Query$Praises$posts$pageInfo;

  factory CopyWith$Query$Praises$posts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Praises$posts$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Praises$posts$pageInfo<TRes>
    implements CopyWith$Query$Praises$posts$pageInfo<TRes> {
  _CopyWithImpl$Query$Praises$posts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Praises$posts$pageInfo _instance;

  final TRes Function(Query$Praises$posts$pageInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Praises$posts$pageInfo(
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

class _CopyWithStubImpl$Query$Praises$posts$pageInfo<TRes>
    implements CopyWith$Query$Praises$posts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Praises$posts$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Letters {
  factory Variables$Query$Letters({
    int? first,
    String? after,
    List<Input$PostWhereInput>? or,
    List<Input$CategoryWhereInput>? hasCategoryWith,
  }) =>
      Variables$Query$Letters._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (or != null) r'or': or,
        if (hasCategoryWith != null) r'hasCategoryWith': hasCategoryWith,
      });

  Variables$Query$Letters._(this._$data);

  factory Variables$Query$Letters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hasCategoryWith')) {
      final l$hasCategoryWith = data['hasCategoryWith'];
      result$data['hasCategoryWith'] = (l$hasCategoryWith as List<dynamic>?)
          ?.map((e) =>
              Input$CategoryWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$Letters._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);
  String? get after => (_$data['after'] as String?);
  List<Input$PostWhereInput>? get or =>
      (_$data['or'] as List<Input$PostWhereInput>?);
  List<Input$CategoryWhereInput>? get hasCategoryWith =>
      (_$data['hasCategoryWith'] as List<Input$CategoryWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('hasCategoryWith')) {
      final l$hasCategoryWith = hasCategoryWith;
      result$data['hasCategoryWith'] =
          l$hasCategoryWith?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Letters<Variables$Query$Letters> get copyWith =>
      CopyWith$Variables$Query$Letters(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Letters) ||
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$hasCategoryWith = hasCategoryWith;
    final lOther$hasCategoryWith = other.hasCategoryWith;
    if (_$data.containsKey('hasCategoryWith') !=
        other._$data.containsKey('hasCategoryWith')) {
      return false;
    }
    if (l$hasCategoryWith != null && lOther$hasCategoryWith != null) {
      if (l$hasCategoryWith.length != lOther$hasCategoryWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasCategoryWith.length; i++) {
        final l$hasCategoryWith$entry = l$hasCategoryWith[i];
        final lOther$hasCategoryWith$entry = lOther$hasCategoryWith[i];
        if (l$hasCategoryWith$entry != lOther$hasCategoryWith$entry) {
          return false;
        }
      }
    } else if (l$hasCategoryWith != lOther$hasCategoryWith) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$after = after;
    final l$or = or;
    final l$hasCategoryWith = hasCategoryWith;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('hasCategoryWith')
          ? l$hasCategoryWith == null
              ? null
              : Object.hashAll(l$hasCategoryWith.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Letters<TRes> {
  factory CopyWith$Variables$Query$Letters(
    Variables$Query$Letters instance,
    TRes Function(Variables$Query$Letters) then,
  ) = _CopyWithImpl$Variables$Query$Letters;

  factory CopyWith$Variables$Query$Letters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Letters;

  TRes call({
    int? first,
    String? after,
    List<Input$PostWhereInput>? or,
    List<Input$CategoryWhereInput>? hasCategoryWith,
  });
}

class _CopyWithImpl$Variables$Query$Letters<TRes>
    implements CopyWith$Variables$Query$Letters<TRes> {
  _CopyWithImpl$Variables$Query$Letters(
    this._instance,
    this._then,
  );

  final Variables$Query$Letters _instance;

  final TRes Function(Variables$Query$Letters) _then;

  static const _undefined = {};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
    Object? or = _undefined,
    Object? hasCategoryWith = _undefined,
  }) =>
      _then(Variables$Query$Letters._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (or != _undefined) 'or': (or as List<Input$PostWhereInput>?),
        if (hasCategoryWith != _undefined)
          'hasCategoryWith':
              (hasCategoryWith as List<Input$CategoryWhereInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Letters<TRes>
    implements CopyWith$Variables$Query$Letters<TRes> {
  _CopyWithStubImpl$Variables$Query$Letters(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
    List<Input$PostWhereInput>? or,
    List<Input$CategoryWhereInput>? hasCategoryWith,
  }) =>
      _res;
}

class Query$Letters {
  Query$Letters({
    required this.posts,
    required this.$__typename,
  });

  factory Query$Letters.fromJson(Map<String, dynamic> json) {
    final l$posts = json['posts'];
    final l$$__typename = json['__typename'];
    return Query$Letters(
      posts: Query$Letters$posts.fromJson((l$posts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Letters$posts posts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$posts = posts;
    _resultData['posts'] = l$posts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$posts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Letters) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$posts = posts;
    final lOther$posts = other.posts;
    if (l$posts != lOther$posts) {
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

extension UtilityExtension$Query$Letters on Query$Letters {
  CopyWith$Query$Letters<Query$Letters> get copyWith => CopyWith$Query$Letters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Letters<TRes> {
  factory CopyWith$Query$Letters(
    Query$Letters instance,
    TRes Function(Query$Letters) then,
  ) = _CopyWithImpl$Query$Letters;

  factory CopyWith$Query$Letters.stub(TRes res) =
      _CopyWithStubImpl$Query$Letters;

  TRes call({
    Query$Letters$posts? posts,
    String? $__typename,
  });
  CopyWith$Query$Letters$posts<TRes> get posts;
}

class _CopyWithImpl$Query$Letters<TRes>
    implements CopyWith$Query$Letters<TRes> {
  _CopyWithImpl$Query$Letters(
    this._instance,
    this._then,
  );

  final Query$Letters _instance;

  final TRes Function(Query$Letters) _then;

  static const _undefined = {};

  TRes call({
    Object? posts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Letters(
        posts: posts == _undefined || posts == null
            ? _instance.posts
            : (posts as Query$Letters$posts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Letters$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$Letters$posts(local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$Letters<TRes>
    implements CopyWith$Query$Letters<TRes> {
  _CopyWithStubImpl$Query$Letters(this._res);

  TRes _res;

  call({
    Query$Letters$posts? posts,
    String? $__typename,
  }) =>
      _res;
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
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hasCategoryWith')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'CategoryWhereInput'),
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
        name: NameNode(value: 'posts'),
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
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'direction'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'field'),
                value: EnumValueNode(name: NameNode(value: 'CREATE_TIME')),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'letter')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'hasCategoryWith'),
                value: VariableNode(name: NameNode(value: 'hasCategoryWith')),
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
Query$Letters _parserFn$Query$Letters(Map<String, dynamic> data) =>
    Query$Letters.fromJson(data);

class Options$Query$Letters extends graphql.QueryOptions<Query$Letters> {
  Options$Query$Letters({
    String? operationName,
    Variables$Query$Letters? variables,
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
          document: documentNodeQueryLetters,
          parserFn: _parserFn$Query$Letters,
        );
}

class WatchOptions$Query$Letters
    extends graphql.WatchQueryOptions<Query$Letters> {
  WatchOptions$Query$Letters({
    String? operationName,
    Variables$Query$Letters? variables,
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
          document: documentNodeQueryLetters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Letters,
        );
}

class FetchMoreOptions$Query$Letters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Letters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Letters? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryLetters,
        );
}

extension ClientExtension$Query$Letters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Letters>> query$Letters(
          [Options$Query$Letters? options]) async =>
      await this.query(options ?? Options$Query$Letters());
  graphql.ObservableQuery<Query$Letters> watchQuery$Letters(
          [WatchOptions$Query$Letters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Letters());
  void writeQuery$Letters({
    required Query$Letters data,
    Variables$Query$Letters? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLetters),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Letters? readQuery$Letters({
    Variables$Query$Letters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLetters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
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
  Query$Letters$Widget({
    widgets.Key? key,
    Options$Query$Letters? options,
    required graphql_flutter.QueryBuilder<Query$Letters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Letters(),
          builder: builder,
        );
}

class Query$Letters$posts {
  Query$Letters$posts({
    this.edges,
    required this.pageInfo,
    required this.$__typename,
  });

  factory Query$Letters$posts.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$Letters$posts(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Letters$posts$edges.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$Letters$posts$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Letters$posts$edges?>? edges;

  final Query$Letters$posts$pageInfo pageInfo;

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
    if (!(other is Query$Letters$posts) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Letters$posts on Query$Letters$posts {
  CopyWith$Query$Letters$posts<Query$Letters$posts> get copyWith =>
      CopyWith$Query$Letters$posts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Letters$posts<TRes> {
  factory CopyWith$Query$Letters$posts(
    Query$Letters$posts instance,
    TRes Function(Query$Letters$posts) then,
  ) = _CopyWithImpl$Query$Letters$posts;

  factory CopyWith$Query$Letters$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$Letters$posts;

  TRes call({
    List<Query$Letters$posts$edges?>? edges,
    Query$Letters$posts$pageInfo? pageInfo,
    String? $__typename,
  });
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
  _CopyWithImpl$Query$Letters$posts(
    this._instance,
    this._then,
  );

  final Query$Letters$posts _instance;

  final TRes Function(Query$Letters$posts) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Letters$posts(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Letters$posts$edges?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$Letters$posts$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$Letters$posts$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Letters$posts$edges<
                          Query$Letters$posts$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Letters$posts$edges(
                  e,
                  (i) => i,
                )))?.toList());
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

  call({
    List<Query$Letters$posts$edges?>? edges,
    Query$Letters$posts$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$Letters$posts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Letters$posts$pageInfo.stub(_res);
}

class Query$Letters$posts$edges {
  Query$Letters$posts$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$Letters$posts$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Letters$posts$edges(
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
    if (!(other is Query$Letters$posts$edges) ||
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

extension UtilityExtension$Query$Letters$posts$edges
    on Query$Letters$posts$edges {
  CopyWith$Query$Letters$posts$edges<Query$Letters$posts$edges> get copyWith =>
      CopyWith$Query$Letters$posts$edges(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Letters$posts$edges<TRes> {
  factory CopyWith$Query$Letters$posts$edges(
    Query$Letters$posts$edges instance,
    TRes Function(Query$Letters$posts$edges) then,
  ) = _CopyWithImpl$Query$Letters$posts$edges;

  factory CopyWith$Query$Letters$posts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Letters$posts$edges;

  TRes call({
    Fragment$LetterSummary? node,
    String? $__typename,
  });
  CopyWith$Fragment$LetterSummary<TRes> get node;
}

class _CopyWithImpl$Query$Letters$posts$edges<TRes>
    implements CopyWith$Query$Letters$posts$edges<TRes> {
  _CopyWithImpl$Query$Letters$posts$edges(
    this._instance,
    this._then,
  );

  final Query$Letters$posts$edges _instance;

  final TRes Function(Query$Letters$posts$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Letters$posts$edges(
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

class _CopyWithStubImpl$Query$Letters$posts$edges<TRes>
    implements CopyWith$Query$Letters$posts$edges<TRes> {
  _CopyWithStubImpl$Query$Letters$posts$edges(this._res);

  TRes _res;

  call({
    Fragment$LetterSummary? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$LetterSummary<TRes> get node =>
      CopyWith$Fragment$LetterSummary.stub(_res);
}

class Query$Letters$posts$pageInfo {
  Query$Letters$posts$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.$__typename,
  });

  factory Query$Letters$posts$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Letters$posts$pageInfo(
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
    if (!(other is Query$Letters$posts$pageInfo) ||
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

extension UtilityExtension$Query$Letters$posts$pageInfo
    on Query$Letters$posts$pageInfo {
  CopyWith$Query$Letters$posts$pageInfo<Query$Letters$posts$pageInfo>
      get copyWith => CopyWith$Query$Letters$posts$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Letters$posts$pageInfo<TRes> {
  factory CopyWith$Query$Letters$posts$pageInfo(
    Query$Letters$posts$pageInfo instance,
    TRes Function(Query$Letters$posts$pageInfo) then,
  ) = _CopyWithImpl$Query$Letters$posts$pageInfo;

  factory CopyWith$Query$Letters$posts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Letters$posts$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Letters$posts$pageInfo<TRes>
    implements CopyWith$Query$Letters$posts$pageInfo<TRes> {
  _CopyWithImpl$Query$Letters$posts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Letters$posts$pageInfo _instance;

  final TRes Function(Query$Letters$posts$pageInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Letters$posts$pageInfo(
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

class _CopyWithStubImpl$Query$Letters$posts$pageInfo<TRes>
    implements CopyWith$Query$Letters$posts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Letters$posts$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$LikePost {
  factory Variables$Mutation$LikePost(
          {required Input$LikePostInput likePostInput}) =>
      Variables$Mutation$LikePost._({
        r'likePostInput': likePostInput,
      });

  Variables$Mutation$LikePost._(this._$data);

  factory Variables$Mutation$LikePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$likePostInput = data['likePostInput'];
    result$data['likePostInput'] =
        Input$LikePostInput.fromJson((l$likePostInput as Map<String, dynamic>));
    return Variables$Mutation$LikePost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LikePostInput get likePostInput =>
      (_$data['likePostInput'] as Input$LikePostInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$likePostInput = likePostInput;
    result$data['likePostInput'] = l$likePostInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$LikePost<Variables$Mutation$LikePost>
      get copyWith => CopyWith$Variables$Mutation$LikePost(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$LikePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$likePostInput = likePostInput;
    final lOther$likePostInput = other.likePostInput;
    if (l$likePostInput != lOther$likePostInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$likePostInput = likePostInput;
    return Object.hashAll([l$likePostInput]);
  }
}

abstract class CopyWith$Variables$Mutation$LikePost<TRes> {
  factory CopyWith$Variables$Mutation$LikePost(
    Variables$Mutation$LikePost instance,
    TRes Function(Variables$Mutation$LikePost) then,
  ) = _CopyWithImpl$Variables$Mutation$LikePost;

  factory CopyWith$Variables$Mutation$LikePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$LikePost;

  TRes call({Input$LikePostInput? likePostInput});
}

class _CopyWithImpl$Variables$Mutation$LikePost<TRes>
    implements CopyWith$Variables$Mutation$LikePost<TRes> {
  _CopyWithImpl$Variables$Mutation$LikePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$LikePost _instance;

  final TRes Function(Variables$Mutation$LikePost) _then;

  static const _undefined = {};

  TRes call({Object? likePostInput = _undefined}) =>
      _then(Variables$Mutation$LikePost._({
        ..._instance._$data,
        if (likePostInput != _undefined && likePostInput != null)
          'likePostInput': (likePostInput as Input$LikePostInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$LikePost<TRes>
    implements CopyWith$Variables$Mutation$LikePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$LikePost(this._res);

  TRes _res;

  call({Input$LikePostInput? likePostInput}) => _res;
}

class Mutation$LikePost {
  Mutation$LikePost({
    required this.action,
    required this.$__typename,
  });

  factory Mutation$LikePost.fromJson(Map<String, dynamic> json) {
    final l$action = json['action'];
    final l$$__typename = json['__typename'];
    return Mutation$LikePost(
      action:
          Mutation$LikePost$action.fromJson((l$action as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$LikePost$action action;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$action = action;
    _resultData['action'] = l$action.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$action = action;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$action,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LikePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
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

extension UtilityExtension$Mutation$LikePost on Mutation$LikePost {
  CopyWith$Mutation$LikePost<Mutation$LikePost> get copyWith =>
      CopyWith$Mutation$LikePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LikePost<TRes> {
  factory CopyWith$Mutation$LikePost(
    Mutation$LikePost instance,
    TRes Function(Mutation$LikePost) then,
  ) = _CopyWithImpl$Mutation$LikePost;

  factory CopyWith$Mutation$LikePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LikePost;

  TRes call({
    Mutation$LikePost$action? action,
    String? $__typename,
  });
  CopyWith$Mutation$LikePost$action<TRes> get action;
}

class _CopyWithImpl$Mutation$LikePost<TRes>
    implements CopyWith$Mutation$LikePost<TRes> {
  _CopyWithImpl$Mutation$LikePost(
    this._instance,
    this._then,
  );

  final Mutation$LikePost _instance;

  final TRes Function(Mutation$LikePost) _then;

  static const _undefined = {};

  TRes call({
    Object? action = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LikePost(
        action: action == _undefined || action == null
            ? _instance.action
            : (action as Mutation$LikePost$action),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$LikePost$action<TRes> get action {
    final local$action = _instance.action;
    return CopyWith$Mutation$LikePost$action(
        local$action, (e) => call(action: e));
  }
}

class _CopyWithStubImpl$Mutation$LikePost<TRes>
    implements CopyWith$Mutation$LikePost<TRes> {
  _CopyWithStubImpl$Mutation$LikePost(this._res);

  TRes _res;

  call({
    Mutation$LikePost$action? action,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$LikePost$action<TRes> get action =>
      CopyWith$Mutation$LikePost$action.stub(_res);
}

const documentNodeMutationLikePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'LikePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'likePostInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'LikePostInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'likePost'),
        alias: NameNode(value: 'action'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'likePostInput')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'clientMutationId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'post'),
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
Mutation$LikePost _parserFn$Mutation$LikePost(Map<String, dynamic> data) =>
    Mutation$LikePost.fromJson(data);
typedef OnMutationCompleted$Mutation$LikePost = FutureOr<void> Function(
  dynamic,
  Mutation$LikePost?,
);

class Options$Mutation$LikePost
    extends graphql.MutationOptions<Mutation$LikePost> {
  Options$Mutation$LikePost({
    String? operationName,
    required Variables$Mutation$LikePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LikePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$LikePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$LikePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLikePost,
          parserFn: _parserFn$Mutation$LikePost,
        );

  final OnMutationCompleted$Mutation$LikePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$LikePost
    extends graphql.WatchQueryOptions<Mutation$LikePost> {
  WatchOptions$Mutation$LikePost({
    String? operationName,
    required Variables$Mutation$LikePost variables,
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
          document: documentNodeMutationLikePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$LikePost,
        );
}

extension ClientExtension$Mutation$LikePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$LikePost>> mutate$LikePost(
          Options$Mutation$LikePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$LikePost> watchMutation$LikePost(
          WatchOptions$Mutation$LikePost options) =>
      this.watchMutation(options);
}

class Mutation$LikePost$HookResult {
  Mutation$LikePost$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$LikePost runMutation;

  final graphql.QueryResult<Mutation$LikePost> result;
}

Mutation$LikePost$HookResult useMutation$LikePost(
    [WidgetOptions$Mutation$LikePost? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$LikePost());
  return Mutation$LikePost$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$LikePost> useWatchMutation$LikePost(
        WatchOptions$Mutation$LikePost options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$LikePost
    extends graphql.MutationOptions<Mutation$LikePost> {
  WidgetOptions$Mutation$LikePost({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LikePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$LikePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$LikePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLikePost,
          parserFn: _parserFn$Mutation$LikePost,
        );

  final OnMutationCompleted$Mutation$LikePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$LikePost
    = graphql.MultiSourceResult<Mutation$LikePost> Function(
  Variables$Mutation$LikePost, {
  Object? optimisticResult,
});
typedef Builder$Mutation$LikePost = widgets.Widget Function(
  RunMutation$Mutation$LikePost,
  graphql.QueryResult<Mutation$LikePost>?,
);

class Mutation$LikePost$Widget
    extends graphql_flutter.Mutation<Mutation$LikePost> {
  Mutation$LikePost$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$LikePost? options,
    required Builder$Mutation$LikePost builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$LikePost(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$LikePost$action {
  Mutation$LikePost$action({
    this.clientMutationId,
    this.post,
    required this.$__typename,
  });

  factory Mutation$LikePost$action.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$post = json['post'];
    final l$$__typename = json['__typename'];
    return Mutation$LikePost$action(
      clientMutationId: (l$clientMutationId as String?),
      post: l$post == null
          ? null
          : Mutation$LikePost$action$post.fromJson(
              (l$post as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? clientMutationId;

  final Mutation$LikePost$action$post? post;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientMutationId = clientMutationId;
    _resultData['clientMutationId'] = l$clientMutationId;
    final l$post = post;
    _resultData['post'] = l$post?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$post = post;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clientMutationId,
      l$post,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LikePost$action) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$post = post;
    final lOther$post = other.post;
    if (l$post != lOther$post) {
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

extension UtilityExtension$Mutation$LikePost$action
    on Mutation$LikePost$action {
  CopyWith$Mutation$LikePost$action<Mutation$LikePost$action> get copyWith =>
      CopyWith$Mutation$LikePost$action(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LikePost$action<TRes> {
  factory CopyWith$Mutation$LikePost$action(
    Mutation$LikePost$action instance,
    TRes Function(Mutation$LikePost$action) then,
  ) = _CopyWithImpl$Mutation$LikePost$action;

  factory CopyWith$Mutation$LikePost$action.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LikePost$action;

  TRes call({
    String? clientMutationId,
    Mutation$LikePost$action$post? post,
    String? $__typename,
  });
  CopyWith$Mutation$LikePost$action$post<TRes> get post;
}

class _CopyWithImpl$Mutation$LikePost$action<TRes>
    implements CopyWith$Mutation$LikePost$action<TRes> {
  _CopyWithImpl$Mutation$LikePost$action(
    this._instance,
    this._then,
  );

  final Mutation$LikePost$action _instance;

  final TRes Function(Mutation$LikePost$action) _then;

  static const _undefined = {};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? post = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LikePost$action(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        post: post == _undefined
            ? _instance.post
            : (post as Mutation$LikePost$action$post?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$LikePost$action$post<TRes> get post {
    final local$post = _instance.post;
    return local$post == null
        ? CopyWith$Mutation$LikePost$action$post.stub(_then(_instance))
        : CopyWith$Mutation$LikePost$action$post(
            local$post, (e) => call(post: e));
  }
}

class _CopyWithStubImpl$Mutation$LikePost$action<TRes>
    implements CopyWith$Mutation$LikePost$action<TRes> {
  _CopyWithStubImpl$Mutation$LikePost$action(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    Mutation$LikePost$action$post? post,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$LikePost$action$post<TRes> get post =>
      CopyWith$Mutation$LikePost$action$post.stub(_res);
}

class Mutation$LikePost$action$post {
  Mutation$LikePost$action$post({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$LikePost$action$post.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$LikePost$action$post(
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
    if (!(other is Mutation$LikePost$action$post) ||
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

extension UtilityExtension$Mutation$LikePost$action$post
    on Mutation$LikePost$action$post {
  CopyWith$Mutation$LikePost$action$post<Mutation$LikePost$action$post>
      get copyWith => CopyWith$Mutation$LikePost$action$post(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$LikePost$action$post<TRes> {
  factory CopyWith$Mutation$LikePost$action$post(
    Mutation$LikePost$action$post instance,
    TRes Function(Mutation$LikePost$action$post) then,
  ) = _CopyWithImpl$Mutation$LikePost$action$post;

  factory CopyWith$Mutation$LikePost$action$post.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LikePost$action$post;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$LikePost$action$post<TRes>
    implements CopyWith$Mutation$LikePost$action$post<TRes> {
  _CopyWithImpl$Mutation$LikePost$action$post(
    this._instance,
    this._then,
  );

  final Mutation$LikePost$action$post _instance;

  final TRes Function(Mutation$LikePost$action$post) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LikePost$action$post(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$LikePost$action$post<TRes>
    implements CopyWith$Mutation$LikePost$action$post<TRes> {
  _CopyWithStubImpl$Mutation$LikePost$action$post(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UnlikePost {
  factory Variables$Mutation$UnlikePost(
          {required Input$UnlikePostInput unlikePostInput}) =>
      Variables$Mutation$UnlikePost._({
        r'unlikePostInput': unlikePostInput,
      });

  Variables$Mutation$UnlikePost._(this._$data);

  factory Variables$Mutation$UnlikePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$unlikePostInput = data['unlikePostInput'];
    result$data['unlikePostInput'] = Input$UnlikePostInput.fromJson(
        (l$unlikePostInput as Map<String, dynamic>));
    return Variables$Mutation$UnlikePost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UnlikePostInput get unlikePostInput =>
      (_$data['unlikePostInput'] as Input$UnlikePostInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$unlikePostInput = unlikePostInput;
    result$data['unlikePostInput'] = l$unlikePostInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UnlikePost<Variables$Mutation$UnlikePost>
      get copyWith => CopyWith$Variables$Mutation$UnlikePost(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UnlikePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unlikePostInput = unlikePostInput;
    final lOther$unlikePostInput = other.unlikePostInput;
    if (l$unlikePostInput != lOther$unlikePostInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$unlikePostInput = unlikePostInput;
    return Object.hashAll([l$unlikePostInput]);
  }
}

abstract class CopyWith$Variables$Mutation$UnlikePost<TRes> {
  factory CopyWith$Variables$Mutation$UnlikePost(
    Variables$Mutation$UnlikePost instance,
    TRes Function(Variables$Mutation$UnlikePost) then,
  ) = _CopyWithImpl$Variables$Mutation$UnlikePost;

  factory CopyWith$Variables$Mutation$UnlikePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnlikePost;

  TRes call({Input$UnlikePostInput? unlikePostInput});
}

class _CopyWithImpl$Variables$Mutation$UnlikePost<TRes>
    implements CopyWith$Variables$Mutation$UnlikePost<TRes> {
  _CopyWithImpl$Variables$Mutation$UnlikePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnlikePost _instance;

  final TRes Function(Variables$Mutation$UnlikePost) _then;

  static const _undefined = {};

  TRes call({Object? unlikePostInput = _undefined}) =>
      _then(Variables$Mutation$UnlikePost._({
        ..._instance._$data,
        if (unlikePostInput != _undefined && unlikePostInput != null)
          'unlikePostInput': (unlikePostInput as Input$UnlikePostInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UnlikePost<TRes>
    implements CopyWith$Variables$Mutation$UnlikePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnlikePost(this._res);

  TRes _res;

  call({Input$UnlikePostInput? unlikePostInput}) => _res;
}

class Mutation$UnlikePost {
  Mutation$UnlikePost({
    required this.action,
    required this.$__typename,
  });

  factory Mutation$UnlikePost.fromJson(Map<String, dynamic> json) {
    final l$action = json['action'];
    final l$$__typename = json['__typename'];
    return Mutation$UnlikePost(
      action: Mutation$UnlikePost$action.fromJson(
          (l$action as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnlikePost$action action;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$action = action;
    _resultData['action'] = l$action.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$action = action;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$action,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnlikePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
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

extension UtilityExtension$Mutation$UnlikePost on Mutation$UnlikePost {
  CopyWith$Mutation$UnlikePost<Mutation$UnlikePost> get copyWith =>
      CopyWith$Mutation$UnlikePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnlikePost<TRes> {
  factory CopyWith$Mutation$UnlikePost(
    Mutation$UnlikePost instance,
    TRes Function(Mutation$UnlikePost) then,
  ) = _CopyWithImpl$Mutation$UnlikePost;

  factory CopyWith$Mutation$UnlikePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnlikePost;

  TRes call({
    Mutation$UnlikePost$action? action,
    String? $__typename,
  });
  CopyWith$Mutation$UnlikePost$action<TRes> get action;
}

class _CopyWithImpl$Mutation$UnlikePost<TRes>
    implements CopyWith$Mutation$UnlikePost<TRes> {
  _CopyWithImpl$Mutation$UnlikePost(
    this._instance,
    this._then,
  );

  final Mutation$UnlikePost _instance;

  final TRes Function(Mutation$UnlikePost) _then;

  static const _undefined = {};

  TRes call({
    Object? action = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnlikePost(
        action: action == _undefined || action == null
            ? _instance.action
            : (action as Mutation$UnlikePost$action),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UnlikePost$action<TRes> get action {
    final local$action = _instance.action;
    return CopyWith$Mutation$UnlikePost$action(
        local$action, (e) => call(action: e));
  }
}

class _CopyWithStubImpl$Mutation$UnlikePost<TRes>
    implements CopyWith$Mutation$UnlikePost<TRes> {
  _CopyWithStubImpl$Mutation$UnlikePost(this._res);

  TRes _res;

  call({
    Mutation$UnlikePost$action? action,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UnlikePost$action<TRes> get action =>
      CopyWith$Mutation$UnlikePost$action.stub(_res);
}

const documentNodeMutationUnlikePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UnlikePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'unlikePostInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'UnlikePostInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'unlikePost'),
        alias: NameNode(value: 'action'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'unlikePostInput')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'clientMutationId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'post'),
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
Mutation$UnlikePost _parserFn$Mutation$UnlikePost(Map<String, dynamic> data) =>
    Mutation$UnlikePost.fromJson(data);
typedef OnMutationCompleted$Mutation$UnlikePost = FutureOr<void> Function(
  dynamic,
  Mutation$UnlikePost?,
);

class Options$Mutation$UnlikePost
    extends graphql.MutationOptions<Mutation$UnlikePost> {
  Options$Mutation$UnlikePost({
    String? operationName,
    required Variables$Mutation$UnlikePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnlikePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnlikePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UnlikePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnlikePost,
          parserFn: _parserFn$Mutation$UnlikePost,
        );

  final OnMutationCompleted$Mutation$UnlikePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UnlikePost
    extends graphql.WatchQueryOptions<Mutation$UnlikePost> {
  WatchOptions$Mutation$UnlikePost({
    String? operationName,
    required Variables$Mutation$UnlikePost variables,
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
          document: documentNodeMutationUnlikePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UnlikePost,
        );
}

extension ClientExtension$Mutation$UnlikePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UnlikePost>> mutate$UnlikePost(
          Options$Mutation$UnlikePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UnlikePost> watchMutation$UnlikePost(
          WatchOptions$Mutation$UnlikePost options) =>
      this.watchMutation(options);
}

class Mutation$UnlikePost$HookResult {
  Mutation$UnlikePost$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UnlikePost runMutation;

  final graphql.QueryResult<Mutation$UnlikePost> result;
}

Mutation$UnlikePost$HookResult useMutation$UnlikePost(
    [WidgetOptions$Mutation$UnlikePost? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UnlikePost());
  return Mutation$UnlikePost$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UnlikePost> useWatchMutation$UnlikePost(
        WatchOptions$Mutation$UnlikePost options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UnlikePost
    extends graphql.MutationOptions<Mutation$UnlikePost> {
  WidgetOptions$Mutation$UnlikePost({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnlikePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnlikePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UnlikePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnlikePost,
          parserFn: _parserFn$Mutation$UnlikePost,
        );

  final OnMutationCompleted$Mutation$UnlikePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UnlikePost
    = graphql.MultiSourceResult<Mutation$UnlikePost> Function(
  Variables$Mutation$UnlikePost, {
  Object? optimisticResult,
});
typedef Builder$Mutation$UnlikePost = widgets.Widget Function(
  RunMutation$Mutation$UnlikePost,
  graphql.QueryResult<Mutation$UnlikePost>?,
);

class Mutation$UnlikePost$Widget
    extends graphql_flutter.Mutation<Mutation$UnlikePost> {
  Mutation$UnlikePost$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UnlikePost? options,
    required Builder$Mutation$UnlikePost builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UnlikePost(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$UnlikePost$action {
  Mutation$UnlikePost$action({
    this.clientMutationId,
    this.post,
    required this.$__typename,
  });

  factory Mutation$UnlikePost$action.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$post = json['post'];
    final l$$__typename = json['__typename'];
    return Mutation$UnlikePost$action(
      clientMutationId: (l$clientMutationId as String?),
      post: l$post == null
          ? null
          : Mutation$UnlikePost$action$post.fromJson(
              (l$post as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? clientMutationId;

  final Mutation$UnlikePost$action$post? post;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientMutationId = clientMutationId;
    _resultData['clientMutationId'] = l$clientMutationId;
    final l$post = post;
    _resultData['post'] = l$post?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$post = post;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clientMutationId,
      l$post,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnlikePost$action) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$post = post;
    final lOther$post = other.post;
    if (l$post != lOther$post) {
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

extension UtilityExtension$Mutation$UnlikePost$action
    on Mutation$UnlikePost$action {
  CopyWith$Mutation$UnlikePost$action<Mutation$UnlikePost$action>
      get copyWith => CopyWith$Mutation$UnlikePost$action(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnlikePost$action<TRes> {
  factory CopyWith$Mutation$UnlikePost$action(
    Mutation$UnlikePost$action instance,
    TRes Function(Mutation$UnlikePost$action) then,
  ) = _CopyWithImpl$Mutation$UnlikePost$action;

  factory CopyWith$Mutation$UnlikePost$action.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnlikePost$action;

  TRes call({
    String? clientMutationId,
    Mutation$UnlikePost$action$post? post,
    String? $__typename,
  });
  CopyWith$Mutation$UnlikePost$action$post<TRes> get post;
}

class _CopyWithImpl$Mutation$UnlikePost$action<TRes>
    implements CopyWith$Mutation$UnlikePost$action<TRes> {
  _CopyWithImpl$Mutation$UnlikePost$action(
    this._instance,
    this._then,
  );

  final Mutation$UnlikePost$action _instance;

  final TRes Function(Mutation$UnlikePost$action) _then;

  static const _undefined = {};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? post = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnlikePost$action(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        post: post == _undefined
            ? _instance.post
            : (post as Mutation$UnlikePost$action$post?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UnlikePost$action$post<TRes> get post {
    final local$post = _instance.post;
    return local$post == null
        ? CopyWith$Mutation$UnlikePost$action$post.stub(_then(_instance))
        : CopyWith$Mutation$UnlikePost$action$post(
            local$post, (e) => call(post: e));
  }
}

class _CopyWithStubImpl$Mutation$UnlikePost$action<TRes>
    implements CopyWith$Mutation$UnlikePost$action<TRes> {
  _CopyWithStubImpl$Mutation$UnlikePost$action(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    Mutation$UnlikePost$action$post? post,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UnlikePost$action$post<TRes> get post =>
      CopyWith$Mutation$UnlikePost$action$post.stub(_res);
}

class Mutation$UnlikePost$action$post {
  Mutation$UnlikePost$action$post({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$UnlikePost$action$post.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UnlikePost$action$post(
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
    if (!(other is Mutation$UnlikePost$action$post) ||
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

extension UtilityExtension$Mutation$UnlikePost$action$post
    on Mutation$UnlikePost$action$post {
  CopyWith$Mutation$UnlikePost$action$post<Mutation$UnlikePost$action$post>
      get copyWith => CopyWith$Mutation$UnlikePost$action$post(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnlikePost$action$post<TRes> {
  factory CopyWith$Mutation$UnlikePost$action$post(
    Mutation$UnlikePost$action$post instance,
    TRes Function(Mutation$UnlikePost$action$post) then,
  ) = _CopyWithImpl$Mutation$UnlikePost$action$post;

  factory CopyWith$Mutation$UnlikePost$action$post.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnlikePost$action$post;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UnlikePost$action$post<TRes>
    implements CopyWith$Mutation$UnlikePost$action$post<TRes> {
  _CopyWithImpl$Mutation$UnlikePost$action$post(
    this._instance,
    this._then,
  );

  final Mutation$UnlikePost$action$post _instance;

  final TRes Function(Mutation$UnlikePost$action$post) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnlikePost$action$post(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UnlikePost$action$post<TRes>
    implements CopyWith$Mutation$UnlikePost$action$post<TRes> {
  _CopyWithStubImpl$Mutation$UnlikePost$action$post(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$BookmarkPost {
  factory Variables$Mutation$BookmarkPost(
          {required Input$BookmarkPostInput bookmarkPostInput}) =>
      Variables$Mutation$BookmarkPost._({
        r'bookmarkPostInput': bookmarkPostInput,
      });

  Variables$Mutation$BookmarkPost._(this._$data);

  factory Variables$Mutation$BookmarkPost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$bookmarkPostInput = data['bookmarkPostInput'];
    result$data['bookmarkPostInput'] = Input$BookmarkPostInput.fromJson(
        (l$bookmarkPostInput as Map<String, dynamic>));
    return Variables$Mutation$BookmarkPost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BookmarkPostInput get bookmarkPostInput =>
      (_$data['bookmarkPostInput'] as Input$BookmarkPostInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bookmarkPostInput = bookmarkPostInput;
    result$data['bookmarkPostInput'] = l$bookmarkPostInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$BookmarkPost<Variables$Mutation$BookmarkPost>
      get copyWith => CopyWith$Variables$Mutation$BookmarkPost(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$BookmarkPost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bookmarkPostInput = bookmarkPostInput;
    final lOther$bookmarkPostInput = other.bookmarkPostInput;
    if (l$bookmarkPostInput != lOther$bookmarkPostInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bookmarkPostInput = bookmarkPostInput;
    return Object.hashAll([l$bookmarkPostInput]);
  }
}

abstract class CopyWith$Variables$Mutation$BookmarkPost<TRes> {
  factory CopyWith$Variables$Mutation$BookmarkPost(
    Variables$Mutation$BookmarkPost instance,
    TRes Function(Variables$Mutation$BookmarkPost) then,
  ) = _CopyWithImpl$Variables$Mutation$BookmarkPost;

  factory CopyWith$Variables$Mutation$BookmarkPost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$BookmarkPost;

  TRes call({Input$BookmarkPostInput? bookmarkPostInput});
}

class _CopyWithImpl$Variables$Mutation$BookmarkPost<TRes>
    implements CopyWith$Variables$Mutation$BookmarkPost<TRes> {
  _CopyWithImpl$Variables$Mutation$BookmarkPost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$BookmarkPost _instance;

  final TRes Function(Variables$Mutation$BookmarkPost) _then;

  static const _undefined = {};

  TRes call({Object? bookmarkPostInput = _undefined}) =>
      _then(Variables$Mutation$BookmarkPost._({
        ..._instance._$data,
        if (bookmarkPostInput != _undefined && bookmarkPostInput != null)
          'bookmarkPostInput': (bookmarkPostInput as Input$BookmarkPostInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$BookmarkPost<TRes>
    implements CopyWith$Variables$Mutation$BookmarkPost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$BookmarkPost(this._res);

  TRes _res;

  call({Input$BookmarkPostInput? bookmarkPostInput}) => _res;
}

class Mutation$BookmarkPost {
  Mutation$BookmarkPost({
    required this.action,
    required this.$__typename,
  });

  factory Mutation$BookmarkPost.fromJson(Map<String, dynamic> json) {
    final l$action = json['action'];
    final l$$__typename = json['__typename'];
    return Mutation$BookmarkPost(
      action: Mutation$BookmarkPost$action.fromJson(
          (l$action as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$BookmarkPost$action action;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$action = action;
    _resultData['action'] = l$action.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$action = action;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$action,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$BookmarkPost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
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

extension UtilityExtension$Mutation$BookmarkPost on Mutation$BookmarkPost {
  CopyWith$Mutation$BookmarkPost<Mutation$BookmarkPost> get copyWith =>
      CopyWith$Mutation$BookmarkPost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$BookmarkPost<TRes> {
  factory CopyWith$Mutation$BookmarkPost(
    Mutation$BookmarkPost instance,
    TRes Function(Mutation$BookmarkPost) then,
  ) = _CopyWithImpl$Mutation$BookmarkPost;

  factory CopyWith$Mutation$BookmarkPost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BookmarkPost;

  TRes call({
    Mutation$BookmarkPost$action? action,
    String? $__typename,
  });
  CopyWith$Mutation$BookmarkPost$action<TRes> get action;
}

class _CopyWithImpl$Mutation$BookmarkPost<TRes>
    implements CopyWith$Mutation$BookmarkPost<TRes> {
  _CopyWithImpl$Mutation$BookmarkPost(
    this._instance,
    this._then,
  );

  final Mutation$BookmarkPost _instance;

  final TRes Function(Mutation$BookmarkPost) _then;

  static const _undefined = {};

  TRes call({
    Object? action = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BookmarkPost(
        action: action == _undefined || action == null
            ? _instance.action
            : (action as Mutation$BookmarkPost$action),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$BookmarkPost$action<TRes> get action {
    final local$action = _instance.action;
    return CopyWith$Mutation$BookmarkPost$action(
        local$action, (e) => call(action: e));
  }
}

class _CopyWithStubImpl$Mutation$BookmarkPost<TRes>
    implements CopyWith$Mutation$BookmarkPost<TRes> {
  _CopyWithStubImpl$Mutation$BookmarkPost(this._res);

  TRes _res;

  call({
    Mutation$BookmarkPost$action? action,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$BookmarkPost$action<TRes> get action =>
      CopyWith$Mutation$BookmarkPost$action.stub(_res);
}

const documentNodeMutationBookmarkPost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'BookmarkPost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bookmarkPostInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'BookmarkPostInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bookmarkPost'),
        alias: NameNode(value: 'action'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'bookmarkPostInput')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'clientMutationId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'post'),
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
Mutation$BookmarkPost _parserFn$Mutation$BookmarkPost(
        Map<String, dynamic> data) =>
    Mutation$BookmarkPost.fromJson(data);
typedef OnMutationCompleted$Mutation$BookmarkPost = FutureOr<void> Function(
  dynamic,
  Mutation$BookmarkPost?,
);

class Options$Mutation$BookmarkPost
    extends graphql.MutationOptions<Mutation$BookmarkPost> {
  Options$Mutation$BookmarkPost({
    String? operationName,
    required Variables$Mutation$BookmarkPost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$BookmarkPost? onCompleted,
    graphql.OnMutationUpdate<Mutation$BookmarkPost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$BookmarkPost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationBookmarkPost,
          parserFn: _parserFn$Mutation$BookmarkPost,
        );

  final OnMutationCompleted$Mutation$BookmarkPost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$BookmarkPost
    extends graphql.WatchQueryOptions<Mutation$BookmarkPost> {
  WatchOptions$Mutation$BookmarkPost({
    String? operationName,
    required Variables$Mutation$BookmarkPost variables,
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
          document: documentNodeMutationBookmarkPost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$BookmarkPost,
        );
}

extension ClientExtension$Mutation$BookmarkPost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$BookmarkPost>> mutate$BookmarkPost(
          Options$Mutation$BookmarkPost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$BookmarkPost> watchMutation$BookmarkPost(
          WatchOptions$Mutation$BookmarkPost options) =>
      this.watchMutation(options);
}

class Mutation$BookmarkPost$HookResult {
  Mutation$BookmarkPost$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$BookmarkPost runMutation;

  final graphql.QueryResult<Mutation$BookmarkPost> result;
}

Mutation$BookmarkPost$HookResult useMutation$BookmarkPost(
    [WidgetOptions$Mutation$BookmarkPost? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$BookmarkPost());
  return Mutation$BookmarkPost$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$BookmarkPost> useWatchMutation$BookmarkPost(
        WatchOptions$Mutation$BookmarkPost options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$BookmarkPost
    extends graphql.MutationOptions<Mutation$BookmarkPost> {
  WidgetOptions$Mutation$BookmarkPost({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$BookmarkPost? onCompleted,
    graphql.OnMutationUpdate<Mutation$BookmarkPost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$BookmarkPost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationBookmarkPost,
          parserFn: _parserFn$Mutation$BookmarkPost,
        );

  final OnMutationCompleted$Mutation$BookmarkPost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$BookmarkPost
    = graphql.MultiSourceResult<Mutation$BookmarkPost> Function(
  Variables$Mutation$BookmarkPost, {
  Object? optimisticResult,
});
typedef Builder$Mutation$BookmarkPost = widgets.Widget Function(
  RunMutation$Mutation$BookmarkPost,
  graphql.QueryResult<Mutation$BookmarkPost>?,
);

class Mutation$BookmarkPost$Widget
    extends graphql_flutter.Mutation<Mutation$BookmarkPost> {
  Mutation$BookmarkPost$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$BookmarkPost? options,
    required Builder$Mutation$BookmarkPost builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$BookmarkPost(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$BookmarkPost$action {
  Mutation$BookmarkPost$action({
    this.clientMutationId,
    this.post,
    required this.$__typename,
  });

  factory Mutation$BookmarkPost$action.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$post = json['post'];
    final l$$__typename = json['__typename'];
    return Mutation$BookmarkPost$action(
      clientMutationId: (l$clientMutationId as String?),
      post: l$post == null
          ? null
          : Mutation$BookmarkPost$action$post.fromJson(
              (l$post as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? clientMutationId;

  final Mutation$BookmarkPost$action$post? post;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientMutationId = clientMutationId;
    _resultData['clientMutationId'] = l$clientMutationId;
    final l$post = post;
    _resultData['post'] = l$post?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$post = post;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clientMutationId,
      l$post,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$BookmarkPost$action) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$post = post;
    final lOther$post = other.post;
    if (l$post != lOther$post) {
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

extension UtilityExtension$Mutation$BookmarkPost$action
    on Mutation$BookmarkPost$action {
  CopyWith$Mutation$BookmarkPost$action<Mutation$BookmarkPost$action>
      get copyWith => CopyWith$Mutation$BookmarkPost$action(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$BookmarkPost$action<TRes> {
  factory CopyWith$Mutation$BookmarkPost$action(
    Mutation$BookmarkPost$action instance,
    TRes Function(Mutation$BookmarkPost$action) then,
  ) = _CopyWithImpl$Mutation$BookmarkPost$action;

  factory CopyWith$Mutation$BookmarkPost$action.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BookmarkPost$action;

  TRes call({
    String? clientMutationId,
    Mutation$BookmarkPost$action$post? post,
    String? $__typename,
  });
  CopyWith$Mutation$BookmarkPost$action$post<TRes> get post;
}

class _CopyWithImpl$Mutation$BookmarkPost$action<TRes>
    implements CopyWith$Mutation$BookmarkPost$action<TRes> {
  _CopyWithImpl$Mutation$BookmarkPost$action(
    this._instance,
    this._then,
  );

  final Mutation$BookmarkPost$action _instance;

  final TRes Function(Mutation$BookmarkPost$action) _then;

  static const _undefined = {};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? post = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BookmarkPost$action(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        post: post == _undefined
            ? _instance.post
            : (post as Mutation$BookmarkPost$action$post?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$BookmarkPost$action$post<TRes> get post {
    final local$post = _instance.post;
    return local$post == null
        ? CopyWith$Mutation$BookmarkPost$action$post.stub(_then(_instance))
        : CopyWith$Mutation$BookmarkPost$action$post(
            local$post, (e) => call(post: e));
  }
}

class _CopyWithStubImpl$Mutation$BookmarkPost$action<TRes>
    implements CopyWith$Mutation$BookmarkPost$action<TRes> {
  _CopyWithStubImpl$Mutation$BookmarkPost$action(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    Mutation$BookmarkPost$action$post? post,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$BookmarkPost$action$post<TRes> get post =>
      CopyWith$Mutation$BookmarkPost$action$post.stub(_res);
}

class Mutation$BookmarkPost$action$post {
  Mutation$BookmarkPost$action$post({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$BookmarkPost$action$post.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$BookmarkPost$action$post(
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
    if (!(other is Mutation$BookmarkPost$action$post) ||
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

extension UtilityExtension$Mutation$BookmarkPost$action$post
    on Mutation$BookmarkPost$action$post {
  CopyWith$Mutation$BookmarkPost$action$post<Mutation$BookmarkPost$action$post>
      get copyWith => CopyWith$Mutation$BookmarkPost$action$post(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$BookmarkPost$action$post<TRes> {
  factory CopyWith$Mutation$BookmarkPost$action$post(
    Mutation$BookmarkPost$action$post instance,
    TRes Function(Mutation$BookmarkPost$action$post) then,
  ) = _CopyWithImpl$Mutation$BookmarkPost$action$post;

  factory CopyWith$Mutation$BookmarkPost$action$post.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BookmarkPost$action$post;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$BookmarkPost$action$post<TRes>
    implements CopyWith$Mutation$BookmarkPost$action$post<TRes> {
  _CopyWithImpl$Mutation$BookmarkPost$action$post(
    this._instance,
    this._then,
  );

  final Mutation$BookmarkPost$action$post _instance;

  final TRes Function(Mutation$BookmarkPost$action$post) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BookmarkPost$action$post(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$BookmarkPost$action$post<TRes>
    implements CopyWith$Mutation$BookmarkPost$action$post<TRes> {
  _CopyWithStubImpl$Mutation$BookmarkPost$action$post(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UnbookmarkPost {
  factory Variables$Mutation$UnbookmarkPost(
          {required Input$UnbookmarkPostInput unbookmarkPostInput}) =>
      Variables$Mutation$UnbookmarkPost._({
        r'unbookmarkPostInput': unbookmarkPostInput,
      });

  Variables$Mutation$UnbookmarkPost._(this._$data);

  factory Variables$Mutation$UnbookmarkPost.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$unbookmarkPostInput = data['unbookmarkPostInput'];
    result$data['unbookmarkPostInput'] = Input$UnbookmarkPostInput.fromJson(
        (l$unbookmarkPostInput as Map<String, dynamic>));
    return Variables$Mutation$UnbookmarkPost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UnbookmarkPostInput get unbookmarkPostInput =>
      (_$data['unbookmarkPostInput'] as Input$UnbookmarkPostInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$unbookmarkPostInput = unbookmarkPostInput;
    result$data['unbookmarkPostInput'] = l$unbookmarkPostInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UnbookmarkPost<Variables$Mutation$UnbookmarkPost>
      get copyWith => CopyWith$Variables$Mutation$UnbookmarkPost(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UnbookmarkPost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unbookmarkPostInput = unbookmarkPostInput;
    final lOther$unbookmarkPostInput = other.unbookmarkPostInput;
    if (l$unbookmarkPostInput != lOther$unbookmarkPostInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$unbookmarkPostInput = unbookmarkPostInput;
    return Object.hashAll([l$unbookmarkPostInput]);
  }
}

abstract class CopyWith$Variables$Mutation$UnbookmarkPost<TRes> {
  factory CopyWith$Variables$Mutation$UnbookmarkPost(
    Variables$Mutation$UnbookmarkPost instance,
    TRes Function(Variables$Mutation$UnbookmarkPost) then,
  ) = _CopyWithImpl$Variables$Mutation$UnbookmarkPost;

  factory CopyWith$Variables$Mutation$UnbookmarkPost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnbookmarkPost;

  TRes call({Input$UnbookmarkPostInput? unbookmarkPostInput});
}

class _CopyWithImpl$Variables$Mutation$UnbookmarkPost<TRes>
    implements CopyWith$Variables$Mutation$UnbookmarkPost<TRes> {
  _CopyWithImpl$Variables$Mutation$UnbookmarkPost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnbookmarkPost _instance;

  final TRes Function(Variables$Mutation$UnbookmarkPost) _then;

  static const _undefined = {};

  TRes call({Object? unbookmarkPostInput = _undefined}) =>
      _then(Variables$Mutation$UnbookmarkPost._({
        ..._instance._$data,
        if (unbookmarkPostInput != _undefined && unbookmarkPostInput != null)
          'unbookmarkPostInput':
              (unbookmarkPostInput as Input$UnbookmarkPostInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UnbookmarkPost<TRes>
    implements CopyWith$Variables$Mutation$UnbookmarkPost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnbookmarkPost(this._res);

  TRes _res;

  call({Input$UnbookmarkPostInput? unbookmarkPostInput}) => _res;
}

class Mutation$UnbookmarkPost {
  Mutation$UnbookmarkPost({
    required this.action,
    required this.$__typename,
  });

  factory Mutation$UnbookmarkPost.fromJson(Map<String, dynamic> json) {
    final l$action = json['action'];
    final l$$__typename = json['__typename'];
    return Mutation$UnbookmarkPost(
      action: Mutation$UnbookmarkPost$action.fromJson(
          (l$action as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnbookmarkPost$action action;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$action = action;
    _resultData['action'] = l$action.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$action = action;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$action,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnbookmarkPost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
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

extension UtilityExtension$Mutation$UnbookmarkPost on Mutation$UnbookmarkPost {
  CopyWith$Mutation$UnbookmarkPost<Mutation$UnbookmarkPost> get copyWith =>
      CopyWith$Mutation$UnbookmarkPost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnbookmarkPost<TRes> {
  factory CopyWith$Mutation$UnbookmarkPost(
    Mutation$UnbookmarkPost instance,
    TRes Function(Mutation$UnbookmarkPost) then,
  ) = _CopyWithImpl$Mutation$UnbookmarkPost;

  factory CopyWith$Mutation$UnbookmarkPost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnbookmarkPost;

  TRes call({
    Mutation$UnbookmarkPost$action? action,
    String? $__typename,
  });
  CopyWith$Mutation$UnbookmarkPost$action<TRes> get action;
}

class _CopyWithImpl$Mutation$UnbookmarkPost<TRes>
    implements CopyWith$Mutation$UnbookmarkPost<TRes> {
  _CopyWithImpl$Mutation$UnbookmarkPost(
    this._instance,
    this._then,
  );

  final Mutation$UnbookmarkPost _instance;

  final TRes Function(Mutation$UnbookmarkPost) _then;

  static const _undefined = {};

  TRes call({
    Object? action = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnbookmarkPost(
        action: action == _undefined || action == null
            ? _instance.action
            : (action as Mutation$UnbookmarkPost$action),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UnbookmarkPost$action<TRes> get action {
    final local$action = _instance.action;
    return CopyWith$Mutation$UnbookmarkPost$action(
        local$action, (e) => call(action: e));
  }
}

class _CopyWithStubImpl$Mutation$UnbookmarkPost<TRes>
    implements CopyWith$Mutation$UnbookmarkPost<TRes> {
  _CopyWithStubImpl$Mutation$UnbookmarkPost(this._res);

  TRes _res;

  call({
    Mutation$UnbookmarkPost$action? action,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UnbookmarkPost$action<TRes> get action =>
      CopyWith$Mutation$UnbookmarkPost$action.stub(_res);
}

const documentNodeMutationUnbookmarkPost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UnbookmarkPost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'unbookmarkPostInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'UnbookmarkPostInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'unbookmarkPost'),
        alias: NameNode(value: 'action'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'unbookmarkPostInput')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'clientMutationId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'post'),
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
Mutation$UnbookmarkPost _parserFn$Mutation$UnbookmarkPost(
        Map<String, dynamic> data) =>
    Mutation$UnbookmarkPost.fromJson(data);
typedef OnMutationCompleted$Mutation$UnbookmarkPost = FutureOr<void> Function(
  dynamic,
  Mutation$UnbookmarkPost?,
);

class Options$Mutation$UnbookmarkPost
    extends graphql.MutationOptions<Mutation$UnbookmarkPost> {
  Options$Mutation$UnbookmarkPost({
    String? operationName,
    required Variables$Mutation$UnbookmarkPost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnbookmarkPost? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnbookmarkPost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UnbookmarkPost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnbookmarkPost,
          parserFn: _parserFn$Mutation$UnbookmarkPost,
        );

  final OnMutationCompleted$Mutation$UnbookmarkPost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UnbookmarkPost
    extends graphql.WatchQueryOptions<Mutation$UnbookmarkPost> {
  WatchOptions$Mutation$UnbookmarkPost({
    String? operationName,
    required Variables$Mutation$UnbookmarkPost variables,
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
          document: documentNodeMutationUnbookmarkPost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UnbookmarkPost,
        );
}

extension ClientExtension$Mutation$UnbookmarkPost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UnbookmarkPost>> mutate$UnbookmarkPost(
          Options$Mutation$UnbookmarkPost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UnbookmarkPost> watchMutation$UnbookmarkPost(
          WatchOptions$Mutation$UnbookmarkPost options) =>
      this.watchMutation(options);
}

class Mutation$UnbookmarkPost$HookResult {
  Mutation$UnbookmarkPost$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UnbookmarkPost runMutation;

  final graphql.QueryResult<Mutation$UnbookmarkPost> result;
}

Mutation$UnbookmarkPost$HookResult useMutation$UnbookmarkPost(
    [WidgetOptions$Mutation$UnbookmarkPost? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UnbookmarkPost());
  return Mutation$UnbookmarkPost$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UnbookmarkPost>
    useWatchMutation$UnbookmarkPost(
            WatchOptions$Mutation$UnbookmarkPost options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UnbookmarkPost
    extends graphql.MutationOptions<Mutation$UnbookmarkPost> {
  WidgetOptions$Mutation$UnbookmarkPost({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnbookmarkPost? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnbookmarkPost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UnbookmarkPost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnbookmarkPost,
          parserFn: _parserFn$Mutation$UnbookmarkPost,
        );

  final OnMutationCompleted$Mutation$UnbookmarkPost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UnbookmarkPost
    = graphql.MultiSourceResult<Mutation$UnbookmarkPost> Function(
  Variables$Mutation$UnbookmarkPost, {
  Object? optimisticResult,
});
typedef Builder$Mutation$UnbookmarkPost = widgets.Widget Function(
  RunMutation$Mutation$UnbookmarkPost,
  graphql.QueryResult<Mutation$UnbookmarkPost>?,
);

class Mutation$UnbookmarkPost$Widget
    extends graphql_flutter.Mutation<Mutation$UnbookmarkPost> {
  Mutation$UnbookmarkPost$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UnbookmarkPost? options,
    required Builder$Mutation$UnbookmarkPost builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UnbookmarkPost(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$UnbookmarkPost$action {
  Mutation$UnbookmarkPost$action({
    this.clientMutationId,
    this.post,
    required this.$__typename,
  });

  factory Mutation$UnbookmarkPost$action.fromJson(Map<String, dynamic> json) {
    final l$clientMutationId = json['clientMutationId'];
    final l$post = json['post'];
    final l$$__typename = json['__typename'];
    return Mutation$UnbookmarkPost$action(
      clientMutationId: (l$clientMutationId as String?),
      post: l$post == null
          ? null
          : Mutation$UnbookmarkPost$action$post.fromJson(
              (l$post as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? clientMutationId;

  final Mutation$UnbookmarkPost$action$post? post;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientMutationId = clientMutationId;
    _resultData['clientMutationId'] = l$clientMutationId;
    final l$post = post;
    _resultData['post'] = l$post?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$post = post;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clientMutationId,
      l$post,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnbookmarkPost$action) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$post = post;
    final lOther$post = other.post;
    if (l$post != lOther$post) {
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

extension UtilityExtension$Mutation$UnbookmarkPost$action
    on Mutation$UnbookmarkPost$action {
  CopyWith$Mutation$UnbookmarkPost$action<Mutation$UnbookmarkPost$action>
      get copyWith => CopyWith$Mutation$UnbookmarkPost$action(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnbookmarkPost$action<TRes> {
  factory CopyWith$Mutation$UnbookmarkPost$action(
    Mutation$UnbookmarkPost$action instance,
    TRes Function(Mutation$UnbookmarkPost$action) then,
  ) = _CopyWithImpl$Mutation$UnbookmarkPost$action;

  factory CopyWith$Mutation$UnbookmarkPost$action.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnbookmarkPost$action;

  TRes call({
    String? clientMutationId,
    Mutation$UnbookmarkPost$action$post? post,
    String? $__typename,
  });
  CopyWith$Mutation$UnbookmarkPost$action$post<TRes> get post;
}

class _CopyWithImpl$Mutation$UnbookmarkPost$action<TRes>
    implements CopyWith$Mutation$UnbookmarkPost$action<TRes> {
  _CopyWithImpl$Mutation$UnbookmarkPost$action(
    this._instance,
    this._then,
  );

  final Mutation$UnbookmarkPost$action _instance;

  final TRes Function(Mutation$UnbookmarkPost$action) _then;

  static const _undefined = {};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? post = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnbookmarkPost$action(
        clientMutationId: clientMutationId == _undefined
            ? _instance.clientMutationId
            : (clientMutationId as String?),
        post: post == _undefined
            ? _instance.post
            : (post as Mutation$UnbookmarkPost$action$post?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UnbookmarkPost$action$post<TRes> get post {
    final local$post = _instance.post;
    return local$post == null
        ? CopyWith$Mutation$UnbookmarkPost$action$post.stub(_then(_instance))
        : CopyWith$Mutation$UnbookmarkPost$action$post(
            local$post, (e) => call(post: e));
  }
}

class _CopyWithStubImpl$Mutation$UnbookmarkPost$action<TRes>
    implements CopyWith$Mutation$UnbookmarkPost$action<TRes> {
  _CopyWithStubImpl$Mutation$UnbookmarkPost$action(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    Mutation$UnbookmarkPost$action$post? post,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UnbookmarkPost$action$post<TRes> get post =>
      CopyWith$Mutation$UnbookmarkPost$action$post.stub(_res);
}

class Mutation$UnbookmarkPost$action$post {
  Mutation$UnbookmarkPost$action$post({
    required this.id,
    required this.$__typename,
  });

  factory Mutation$UnbookmarkPost$action$post.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UnbookmarkPost$action$post(
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
    if (!(other is Mutation$UnbookmarkPost$action$post) ||
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

extension UtilityExtension$Mutation$UnbookmarkPost$action$post
    on Mutation$UnbookmarkPost$action$post {
  CopyWith$Mutation$UnbookmarkPost$action$post<
          Mutation$UnbookmarkPost$action$post>
      get copyWith => CopyWith$Mutation$UnbookmarkPost$action$post(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnbookmarkPost$action$post<TRes> {
  factory CopyWith$Mutation$UnbookmarkPost$action$post(
    Mutation$UnbookmarkPost$action$post instance,
    TRes Function(Mutation$UnbookmarkPost$action$post) then,
  ) = _CopyWithImpl$Mutation$UnbookmarkPost$action$post;

  factory CopyWith$Mutation$UnbookmarkPost$action$post.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnbookmarkPost$action$post;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UnbookmarkPost$action$post<TRes>
    implements CopyWith$Mutation$UnbookmarkPost$action$post<TRes> {
  _CopyWithImpl$Mutation$UnbookmarkPost$action$post(
    this._instance,
    this._then,
  );

  final Mutation$UnbookmarkPost$action$post _instance;

  final TRes Function(Mutation$UnbookmarkPost$action$post) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnbookmarkPost$action$post(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UnbookmarkPost$action$post<TRes>
    implements CopyWith$Mutation$UnbookmarkPost$action$post<TRes> {
  _CopyWithStubImpl$Mutation$UnbookmarkPost$action$post(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
