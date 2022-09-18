import 'package:json_annotation/json_annotation.dart';
part 'ent.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$CreateHashtagInput {
  Input$CreateHashtagInput({required this.title, this.postIDs});

  @override
  factory Input$CreateHashtagInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CreateHashtagInputFromJson(json);

  final String title;

  final List<String>? postIDs;

  Map<String, dynamic> toJson() => _$Input$CreateHashtagInputToJson(this);
  int get hashCode {
    final l$title = title;
    final l$postIDs = postIDs;
    return Object.hashAll([
      l$title,
      l$postIDs == null ? null : Object.hashAll(l$postIDs.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CreateHashtagInput) ||
        runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$postIDs = postIDs;
    final lOther$postIDs = other.postIDs;
    if (l$postIDs != null && lOther$postIDs != null) {
      if (l$postIDs.length != lOther$postIDs.length) return false;
      for (int i = 0; i < l$postIDs.length; i++) {
        final l$postIDs$entry = l$postIDs[i];
        final lOther$postIDs$entry = lOther$postIDs[i];
        if (l$postIDs$entry != lOther$postIDs$entry) return false;
      }
    } else if (l$postIDs != lOther$postIDs) {
      return false;
    }

    return true;
  }

  CopyWith$Input$CreateHashtagInput<Input$CreateHashtagInput> get copyWith =>
      CopyWith$Input$CreateHashtagInput(this, (i) => i);
}

abstract class CopyWith$Input$CreateHashtagInput<TRes> {
  factory CopyWith$Input$CreateHashtagInput(Input$CreateHashtagInput instance,
          TRes Function(Input$CreateHashtagInput) then) =
      _CopyWithImpl$Input$CreateHashtagInput;

  factory CopyWith$Input$CreateHashtagInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateHashtagInput;

  TRes call({String? title, List<String>? postIDs});
}

class _CopyWithImpl$Input$CreateHashtagInput<TRes>
    implements CopyWith$Input$CreateHashtagInput<TRes> {
  _CopyWithImpl$Input$CreateHashtagInput(this._instance, this._then);

  final Input$CreateHashtagInput _instance;

  final TRes Function(Input$CreateHashtagInput) _then;

  static const _undefined = {};

  TRes call({Object? title = _undefined, Object? postIDs = _undefined}) =>
      _then(Input$CreateHashtagInput(
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          postIDs: postIDs == _undefined
              ? _instance.postIDs
              : (postIDs as List<String>?)));
}

class _CopyWithStubImpl$Input$CreateHashtagInput<TRes>
    implements CopyWith$Input$CreateHashtagInput<TRes> {
  _CopyWithStubImpl$Input$CreateHashtagInput(this._res);

  TRes _res;

  call({String? title, List<String>? postIDs}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CreatePostInput {
  Input$CreatePostInput(
      {this.createTime,
      this.updateTime,
      required this.title,
      required this.content,
      required this.type,
      required this.spoiled,
      required this.ownerID,
      this.hashtagIDs,
      required this.workID,
      this.likedUserIDs});

  @override
  factory Input$CreatePostInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CreatePostInputFromJson(json);

  final String? createTime;

  final String? updateTime;

  final String title;

  final String content;

  @JsonKey(unknownEnumValue: Enum$PostPostType.$unknown)
  final Enum$PostPostType type;

  final bool spoiled;

  final String ownerID;

  final List<String>? hashtagIDs;

  final String workID;

  final List<String>? likedUserIDs;

  Map<String, dynamic> toJson() => _$Input$CreatePostInputToJson(this);
  int get hashCode {
    final l$createTime = createTime;
    final l$updateTime = updateTime;
    final l$title = title;
    final l$content = content;
    final l$type = type;
    final l$spoiled = spoiled;
    final l$ownerID = ownerID;
    final l$hashtagIDs = hashtagIDs;
    final l$workID = workID;
    final l$likedUserIDs = likedUserIDs;
    return Object.hashAll([
      l$createTime,
      l$updateTime,
      l$title,
      l$content,
      l$type,
      l$spoiled,
      l$ownerID,
      l$hashtagIDs == null ? null : Object.hashAll(l$hashtagIDs.map((v) => v)),
      l$workID,
      l$likedUserIDs == null
          ? null
          : Object.hashAll(l$likedUserIDs.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CreatePostInput) || runtimeType != other.runtimeType)
      return false;
    final l$createTime = createTime;
    final lOther$createTime = other.createTime;
    if (l$createTime != lOther$createTime) return false;
    final l$updateTime = updateTime;
    final lOther$updateTime = other.updateTime;
    if (l$updateTime != lOther$updateTime) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$spoiled = spoiled;
    final lOther$spoiled = other.spoiled;
    if (l$spoiled != lOther$spoiled) return false;
    final l$ownerID = ownerID;
    final lOther$ownerID = other.ownerID;
    if (l$ownerID != lOther$ownerID) return false;
    final l$hashtagIDs = hashtagIDs;
    final lOther$hashtagIDs = other.hashtagIDs;
    if (l$hashtagIDs != null && lOther$hashtagIDs != null) {
      if (l$hashtagIDs.length != lOther$hashtagIDs.length) return false;
      for (int i = 0; i < l$hashtagIDs.length; i++) {
        final l$hashtagIDs$entry = l$hashtagIDs[i];
        final lOther$hashtagIDs$entry = lOther$hashtagIDs[i];
        if (l$hashtagIDs$entry != lOther$hashtagIDs$entry) return false;
      }
    } else if (l$hashtagIDs != lOther$hashtagIDs) {
      return false;
    }

    final l$workID = workID;
    final lOther$workID = other.workID;
    if (l$workID != lOther$workID) return false;
    final l$likedUserIDs = likedUserIDs;
    final lOther$likedUserIDs = other.likedUserIDs;
    if (l$likedUserIDs != null && lOther$likedUserIDs != null) {
      if (l$likedUserIDs.length != lOther$likedUserIDs.length) return false;
      for (int i = 0; i < l$likedUserIDs.length; i++) {
        final l$likedUserIDs$entry = l$likedUserIDs[i];
        final lOther$likedUserIDs$entry = lOther$likedUserIDs[i];
        if (l$likedUserIDs$entry != lOther$likedUserIDs$entry) return false;
      }
    } else if (l$likedUserIDs != lOther$likedUserIDs) {
      return false;
    }

    return true;
  }

  CopyWith$Input$CreatePostInput<Input$CreatePostInput> get copyWith =>
      CopyWith$Input$CreatePostInput(this, (i) => i);
}

abstract class CopyWith$Input$CreatePostInput<TRes> {
  factory CopyWith$Input$CreatePostInput(Input$CreatePostInput instance,
          TRes Function(Input$CreatePostInput) then) =
      _CopyWithImpl$Input$CreatePostInput;

  factory CopyWith$Input$CreatePostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreatePostInput;

  TRes call(
      {String? createTime,
      String? updateTime,
      String? title,
      String? content,
      Enum$PostPostType? type,
      bool? spoiled,
      String? ownerID,
      List<String>? hashtagIDs,
      String? workID,
      List<String>? likedUserIDs});
}

class _CopyWithImpl$Input$CreatePostInput<TRes>
    implements CopyWith$Input$CreatePostInput<TRes> {
  _CopyWithImpl$Input$CreatePostInput(this._instance, this._then);

  final Input$CreatePostInput _instance;

  final TRes Function(Input$CreatePostInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? createTime = _undefined,
          Object? updateTime = _undefined,
          Object? title = _undefined,
          Object? content = _undefined,
          Object? type = _undefined,
          Object? spoiled = _undefined,
          Object? ownerID = _undefined,
          Object? hashtagIDs = _undefined,
          Object? workID = _undefined,
          Object? likedUserIDs = _undefined}) =>
      _then(Input$CreatePostInput(
          createTime: createTime == _undefined
              ? _instance.createTime
              : (createTime as String?),
          updateTime: updateTime == _undefined
              ? _instance.updateTime
              : (updateTime as String?),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          type: type == _undefined || type == null
              ? _instance.type
              : (type as Enum$PostPostType),
          spoiled: spoiled == _undefined || spoiled == null
              ? _instance.spoiled
              : (spoiled as bool),
          ownerID: ownerID == _undefined || ownerID == null
              ? _instance.ownerID
              : (ownerID as String),
          hashtagIDs: hashtagIDs == _undefined
              ? _instance.hashtagIDs
              : (hashtagIDs as List<String>?),
          workID: workID == _undefined || workID == null
              ? _instance.workID
              : (workID as String),
          likedUserIDs: likedUserIDs == _undefined
              ? _instance.likedUserIDs
              : (likedUserIDs as List<String>?)));
}

class _CopyWithStubImpl$Input$CreatePostInput<TRes>
    implements CopyWith$Input$CreatePostInput<TRes> {
  _CopyWithStubImpl$Input$CreatePostInput(this._res);

  TRes _res;

  call(
          {String? createTime,
          String? updateTime,
          String? title,
          String? content,
          Enum$PostPostType? type,
          bool? spoiled,
          String? ownerID,
          List<String>? hashtagIDs,
          String? workID,
          List<String>? likedUserIDs}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CreateUserInput {
  Input$CreateUserInput({required this.name, this.postIDs, this.likedPostIDs});

  @override
  factory Input$CreateUserInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CreateUserInputFromJson(json);

  final String name;

  final List<String>? postIDs;

  final List<String>? likedPostIDs;

  Map<String, dynamic> toJson() => _$Input$CreateUserInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$postIDs = postIDs;
    final l$likedPostIDs = likedPostIDs;
    return Object.hashAll([
      l$name,
      l$postIDs == null ? null : Object.hashAll(l$postIDs.map((v) => v)),
      l$likedPostIDs == null
          ? null
          : Object.hashAll(l$likedPostIDs.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CreateUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$postIDs = postIDs;
    final lOther$postIDs = other.postIDs;
    if (l$postIDs != null && lOther$postIDs != null) {
      if (l$postIDs.length != lOther$postIDs.length) return false;
      for (int i = 0; i < l$postIDs.length; i++) {
        final l$postIDs$entry = l$postIDs[i];
        final lOther$postIDs$entry = lOther$postIDs[i];
        if (l$postIDs$entry != lOther$postIDs$entry) return false;
      }
    } else if (l$postIDs != lOther$postIDs) {
      return false;
    }

    final l$likedPostIDs = likedPostIDs;
    final lOther$likedPostIDs = other.likedPostIDs;
    if (l$likedPostIDs != null && lOther$likedPostIDs != null) {
      if (l$likedPostIDs.length != lOther$likedPostIDs.length) return false;
      for (int i = 0; i < l$likedPostIDs.length; i++) {
        final l$likedPostIDs$entry = l$likedPostIDs[i];
        final lOther$likedPostIDs$entry = lOther$likedPostIDs[i];
        if (l$likedPostIDs$entry != lOther$likedPostIDs$entry) return false;
      }
    } else if (l$likedPostIDs != lOther$likedPostIDs) {
      return false;
    }

    return true;
  }

  CopyWith$Input$CreateUserInput<Input$CreateUserInput> get copyWith =>
      CopyWith$Input$CreateUserInput(this, (i) => i);
}

abstract class CopyWith$Input$CreateUserInput<TRes> {
  factory CopyWith$Input$CreateUserInput(Input$CreateUserInput instance,
          TRes Function(Input$CreateUserInput) then) =
      _CopyWithImpl$Input$CreateUserInput;

  factory CopyWith$Input$CreateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUserInput;

  TRes call({String? name, List<String>? postIDs, List<String>? likedPostIDs});
}

class _CopyWithImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithImpl$Input$CreateUserInput(this._instance, this._then);

  final Input$CreateUserInput _instance;

  final TRes Function(Input$CreateUserInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? postIDs = _undefined,
          Object? likedPostIDs = _undefined}) =>
      _then(Input$CreateUserInput(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          postIDs: postIDs == _undefined
              ? _instance.postIDs
              : (postIDs as List<String>?),
          likedPostIDs: likedPostIDs == _undefined
              ? _instance.likedPostIDs
              : (likedPostIDs as List<String>?)));
}

class _CopyWithStubImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithStubImpl$Input$CreateUserInput(this._res);

  TRes _res;

  call({String? name, List<String>? postIDs, List<String>? likedPostIDs}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CreateWorkInput {
  Input$CreateWorkInput({required this.title, this.thumbnail, this.postIDs});

  @override
  factory Input$CreateWorkInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CreateWorkInputFromJson(json);

  final String title;

  final String? thumbnail;

  final List<String>? postIDs;

  Map<String, dynamic> toJson() => _$Input$CreateWorkInputToJson(this);
  int get hashCode {
    final l$title = title;
    final l$thumbnail = thumbnail;
    final l$postIDs = postIDs;
    return Object.hashAll([
      l$title,
      l$thumbnail,
      l$postIDs == null ? null : Object.hashAll(l$postIDs.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CreateWorkInput) || runtimeType != other.runtimeType)
      return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) return false;
    final l$postIDs = postIDs;
    final lOther$postIDs = other.postIDs;
    if (l$postIDs != null && lOther$postIDs != null) {
      if (l$postIDs.length != lOther$postIDs.length) return false;
      for (int i = 0; i < l$postIDs.length; i++) {
        final l$postIDs$entry = l$postIDs[i];
        final lOther$postIDs$entry = lOther$postIDs[i];
        if (l$postIDs$entry != lOther$postIDs$entry) return false;
      }
    } else if (l$postIDs != lOther$postIDs) {
      return false;
    }

    return true;
  }

  CopyWith$Input$CreateWorkInput<Input$CreateWorkInput> get copyWith =>
      CopyWith$Input$CreateWorkInput(this, (i) => i);
}

abstract class CopyWith$Input$CreateWorkInput<TRes> {
  factory CopyWith$Input$CreateWorkInput(Input$CreateWorkInput instance,
          TRes Function(Input$CreateWorkInput) then) =
      _CopyWithImpl$Input$CreateWorkInput;

  factory CopyWith$Input$CreateWorkInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateWorkInput;

  TRes call({String? title, String? thumbnail, List<String>? postIDs});
}

class _CopyWithImpl$Input$CreateWorkInput<TRes>
    implements CopyWith$Input$CreateWorkInput<TRes> {
  _CopyWithImpl$Input$CreateWorkInput(this._instance, this._then);

  final Input$CreateWorkInput _instance;

  final TRes Function(Input$CreateWorkInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? thumbnail = _undefined,
          Object? postIDs = _undefined}) =>
      _then(Input$CreateWorkInput(
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          thumbnail: thumbnail == _undefined
              ? _instance.thumbnail
              : (thumbnail as String?),
          postIDs: postIDs == _undefined
              ? _instance.postIDs
              : (postIDs as List<String>?)));
}

class _CopyWithStubImpl$Input$CreateWorkInput<TRes>
    implements CopyWith$Input$CreateWorkInput<TRes> {
  _CopyWithStubImpl$Input$CreateWorkInput(this._res);

  TRes _res;

  call({String? title, String? thumbnail, List<String>? postIDs}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$HashtagWhereInput {
  Input$HashtagWhereInput(
      {this.not,
      this.and,
      this.or,
      this.id,
      this.idNEQ,
      this.idIn,
      this.idNotIn,
      this.idGT,
      this.idGTE,
      this.idLT,
      this.idLTE,
      this.title,
      this.titleNEQ,
      this.titleIn,
      this.titleNotIn,
      this.titleGT,
      this.titleGTE,
      this.titleLT,
      this.titleLTE,
      this.titleContains,
      this.titleHasPrefix,
      this.titleHasSuffix,
      this.titleEqualFold,
      this.titleContainsFold,
      this.hasPosts,
      this.hasPostsWith});

  @override
  factory Input$HashtagWhereInput.fromJson(Map<String, dynamic> json) =>
      _$Input$HashtagWhereInputFromJson(json);

  final Input$HashtagWhereInput? not;

  final List<Input$HashtagWhereInput>? and;

  final List<Input$HashtagWhereInput>? or;

  final String? id;

  final String? idNEQ;

  final List<String>? idIn;

  final List<String>? idNotIn;

  final String? idGT;

  final String? idGTE;

  final String? idLT;

  final String? idLTE;

  final String? title;

  final String? titleNEQ;

  final List<String>? titleIn;

  final List<String>? titleNotIn;

  final String? titleGT;

  final String? titleGTE;

  final String? titleLT;

  final String? titleLTE;

  final String? titleContains;

  final String? titleHasPrefix;

  final String? titleHasSuffix;

  final String? titleEqualFold;

  final String? titleContainsFold;

  final bool? hasPosts;

  final List<Input$PostWhereInput>? hasPostsWith;

  Map<String, dynamic> toJson() => _$Input$HashtagWhereInputToJson(this);
  int get hashCode {
    final l$not = not;
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$idNEQ = idNEQ;
    final l$idIn = idIn;
    final l$idNotIn = idNotIn;
    final l$idGT = idGT;
    final l$idGTE = idGTE;
    final l$idLT = idLT;
    final l$idLTE = idLTE;
    final l$title = title;
    final l$titleNEQ = titleNEQ;
    final l$titleIn = titleIn;
    final l$titleNotIn = titleNotIn;
    final l$titleGT = titleGT;
    final l$titleGTE = titleGTE;
    final l$titleLT = titleLT;
    final l$titleLTE = titleLTE;
    final l$titleContains = titleContains;
    final l$titleHasPrefix = titleHasPrefix;
    final l$titleHasSuffix = titleHasSuffix;
    final l$titleEqualFold = titleEqualFold;
    final l$titleContainsFold = titleContainsFold;
    final l$hasPosts = hasPosts;
    final l$hasPostsWith = hasPostsWith;
    return Object.hashAll([
      l$not,
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$id,
      l$idNEQ,
      l$idIn == null ? null : Object.hashAll(l$idIn.map((v) => v)),
      l$idNotIn == null ? null : Object.hashAll(l$idNotIn.map((v) => v)),
      l$idGT,
      l$idGTE,
      l$idLT,
      l$idLTE,
      l$title,
      l$titleNEQ,
      l$titleIn == null ? null : Object.hashAll(l$titleIn.map((v) => v)),
      l$titleNotIn == null ? null : Object.hashAll(l$titleNotIn.map((v) => v)),
      l$titleGT,
      l$titleGTE,
      l$titleLT,
      l$titleLTE,
      l$titleContains,
      l$titleHasPrefix,
      l$titleHasSuffix,
      l$titleEqualFold,
      l$titleContainsFold,
      l$hasPosts,
      l$hasPostsWith == null
          ? null
          : Object.hashAll(l$hasPostsWith.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$HashtagWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

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

    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$idNEQ = idNEQ;
    final lOther$idNEQ = other.idNEQ;
    if (l$idNEQ != lOther$idNEQ) return false;
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) return false;
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) return false;
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }

    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) return false;
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) return false;
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }

    final l$idGT = idGT;
    final lOther$idGT = other.idGT;
    if (l$idGT != lOther$idGT) return false;
    final l$idGTE = idGTE;
    final lOther$idGTE = other.idGTE;
    if (l$idGTE != lOther$idGTE) return false;
    final l$idLT = idLT;
    final lOther$idLT = other.idLT;
    if (l$idLT != lOther$idLT) return false;
    final l$idLTE = idLTE;
    final lOther$idLTE = other.idLTE;
    if (l$idLTE != lOther$idLTE) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$titleNEQ = titleNEQ;
    final lOther$titleNEQ = other.titleNEQ;
    if (l$titleNEQ != lOther$titleNEQ) return false;
    final l$titleIn = titleIn;
    final lOther$titleIn = other.titleIn;
    if (l$titleIn != null && lOther$titleIn != null) {
      if (l$titleIn.length != lOther$titleIn.length) return false;
      for (int i = 0; i < l$titleIn.length; i++) {
        final l$titleIn$entry = l$titleIn[i];
        final lOther$titleIn$entry = lOther$titleIn[i];
        if (l$titleIn$entry != lOther$titleIn$entry) return false;
      }
    } else if (l$titleIn != lOther$titleIn) {
      return false;
    }

    final l$titleNotIn = titleNotIn;
    final lOther$titleNotIn = other.titleNotIn;
    if (l$titleNotIn != null && lOther$titleNotIn != null) {
      if (l$titleNotIn.length != lOther$titleNotIn.length) return false;
      for (int i = 0; i < l$titleNotIn.length; i++) {
        final l$titleNotIn$entry = l$titleNotIn[i];
        final lOther$titleNotIn$entry = lOther$titleNotIn[i];
        if (l$titleNotIn$entry != lOther$titleNotIn$entry) return false;
      }
    } else if (l$titleNotIn != lOther$titleNotIn) {
      return false;
    }

    final l$titleGT = titleGT;
    final lOther$titleGT = other.titleGT;
    if (l$titleGT != lOther$titleGT) return false;
    final l$titleGTE = titleGTE;
    final lOther$titleGTE = other.titleGTE;
    if (l$titleGTE != lOther$titleGTE) return false;
    final l$titleLT = titleLT;
    final lOther$titleLT = other.titleLT;
    if (l$titleLT != lOther$titleLT) return false;
    final l$titleLTE = titleLTE;
    final lOther$titleLTE = other.titleLTE;
    if (l$titleLTE != lOther$titleLTE) return false;
    final l$titleContains = titleContains;
    final lOther$titleContains = other.titleContains;
    if (l$titleContains != lOther$titleContains) return false;
    final l$titleHasPrefix = titleHasPrefix;
    final lOther$titleHasPrefix = other.titleHasPrefix;
    if (l$titleHasPrefix != lOther$titleHasPrefix) return false;
    final l$titleHasSuffix = titleHasSuffix;
    final lOther$titleHasSuffix = other.titleHasSuffix;
    if (l$titleHasSuffix != lOther$titleHasSuffix) return false;
    final l$titleEqualFold = titleEqualFold;
    final lOther$titleEqualFold = other.titleEqualFold;
    if (l$titleEqualFold != lOther$titleEqualFold) return false;
    final l$titleContainsFold = titleContainsFold;
    final lOther$titleContainsFold = other.titleContainsFold;
    if (l$titleContainsFold != lOther$titleContainsFold) return false;
    final l$hasPosts = hasPosts;
    final lOther$hasPosts = other.hasPosts;
    if (l$hasPosts != lOther$hasPosts) return false;
    final l$hasPostsWith = hasPostsWith;
    final lOther$hasPostsWith = other.hasPostsWith;
    if (l$hasPostsWith != null && lOther$hasPostsWith != null) {
      if (l$hasPostsWith.length != lOther$hasPostsWith.length) return false;
      for (int i = 0; i < l$hasPostsWith.length; i++) {
        final l$hasPostsWith$entry = l$hasPostsWith[i];
        final lOther$hasPostsWith$entry = lOther$hasPostsWith[i];
        if (l$hasPostsWith$entry != lOther$hasPostsWith$entry) return false;
      }
    } else if (l$hasPostsWith != lOther$hasPostsWith) {
      return false;
    }

    return true;
  }

  CopyWith$Input$HashtagWhereInput<Input$HashtagWhereInput> get copyWith =>
      CopyWith$Input$HashtagWhereInput(this, (i) => i);
}

abstract class CopyWith$Input$HashtagWhereInput<TRes> {
  factory CopyWith$Input$HashtagWhereInput(Input$HashtagWhereInput instance,
          TRes Function(Input$HashtagWhereInput) then) =
      _CopyWithImpl$Input$HashtagWhereInput;

  factory CopyWith$Input$HashtagWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$HashtagWhereInput;

  TRes call(
      {Input$HashtagWhereInput? not,
      List<Input$HashtagWhereInput>? and,
      List<Input$HashtagWhereInput>? or,
      String? id,
      String? idNEQ,
      List<String>? idIn,
      List<String>? idNotIn,
      String? idGT,
      String? idGTE,
      String? idLT,
      String? idLTE,
      String? title,
      String? titleNEQ,
      List<String>? titleIn,
      List<String>? titleNotIn,
      String? titleGT,
      String? titleGTE,
      String? titleLT,
      String? titleLTE,
      String? titleContains,
      String? titleHasPrefix,
      String? titleHasSuffix,
      String? titleEqualFold,
      String? titleContainsFold,
      bool? hasPosts,
      List<Input$PostWhereInput>? hasPostsWith});
  CopyWith$Input$HashtagWhereInput<TRes> get not;
  TRes and(
      Iterable<Input$HashtagWhereInput>? Function(
              Iterable<
                  CopyWith$Input$HashtagWhereInput<Input$HashtagWhereInput>>?)
          _fn);
  TRes or(
      Iterable<Input$HashtagWhereInput>? Function(
              Iterable<
                  CopyWith$Input$HashtagWhereInput<Input$HashtagWhereInput>>?)
          _fn);
  TRes hasPostsWith(
      Iterable<Input$PostWhereInput>? Function(
              Iterable<CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$HashtagWhereInput<TRes>
    implements CopyWith$Input$HashtagWhereInput<TRes> {
  _CopyWithImpl$Input$HashtagWhereInput(this._instance, this._then);

  final Input$HashtagWhereInput _instance;

  final TRes Function(Input$HashtagWhereInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? not = _undefined,
          Object? and = _undefined,
          Object? or = _undefined,
          Object? id = _undefined,
          Object? idNEQ = _undefined,
          Object? idIn = _undefined,
          Object? idNotIn = _undefined,
          Object? idGT = _undefined,
          Object? idGTE = _undefined,
          Object? idLT = _undefined,
          Object? idLTE = _undefined,
          Object? title = _undefined,
          Object? titleNEQ = _undefined,
          Object? titleIn = _undefined,
          Object? titleNotIn = _undefined,
          Object? titleGT = _undefined,
          Object? titleGTE = _undefined,
          Object? titleLT = _undefined,
          Object? titleLTE = _undefined,
          Object? titleContains = _undefined,
          Object? titleHasPrefix = _undefined,
          Object? titleHasSuffix = _undefined,
          Object? titleEqualFold = _undefined,
          Object? titleContainsFold = _undefined,
          Object? hasPosts = _undefined,
          Object? hasPostsWith = _undefined}) =>
      _then(Input$HashtagWhereInput(
          not: not == _undefined
              ? _instance.not
              : (not as Input$HashtagWhereInput?),
          and: and == _undefined
              ? _instance.and
              : (and as List<Input$HashtagWhereInput>?),
          or: or == _undefined
              ? _instance.or
              : (or as List<Input$HashtagWhereInput>?),
          id: id == _undefined ? _instance.id : (id as String?),
          idNEQ: idNEQ == _undefined ? _instance.idNEQ : (idNEQ as String?),
          idIn: idIn == _undefined ? _instance.idIn : (idIn as List<String>?),
          idNotIn: idNotIn == _undefined
              ? _instance.idNotIn
              : (idNotIn as List<String>?),
          idGT: idGT == _undefined ? _instance.idGT : (idGT as String?),
          idGTE: idGTE == _undefined ? _instance.idGTE : (idGTE as String?),
          idLT: idLT == _undefined ? _instance.idLT : (idLT as String?),
          idLTE: idLTE == _undefined ? _instance.idLTE : (idLTE as String?),
          title: title == _undefined ? _instance.title : (title as String?),
          titleNEQ: titleNEQ == _undefined
              ? _instance.titleNEQ
              : (titleNEQ as String?),
          titleIn: titleIn == _undefined
              ? _instance.titleIn
              : (titleIn as List<String>?),
          titleNotIn: titleNotIn == _undefined
              ? _instance.titleNotIn
              : (titleNotIn as List<String>?),
          titleGT:
              titleGT == _undefined ? _instance.titleGT : (titleGT as String?),
          titleGTE: titleGTE == _undefined
              ? _instance.titleGTE
              : (titleGTE as String?),
          titleLT:
              titleLT == _undefined ? _instance.titleLT : (titleLT as String?),
          titleLTE: titleLTE == _undefined
              ? _instance.titleLTE
              : (titleLTE as String?),
          titleContains: titleContains == _undefined
              ? _instance.titleContains
              : (titleContains as String?),
          titleHasPrefix: titleHasPrefix == _undefined
              ? _instance.titleHasPrefix
              : (titleHasPrefix as String?),
          titleHasSuffix: titleHasSuffix == _undefined
              ? _instance.titleHasSuffix
              : (titleHasSuffix as String?),
          titleEqualFold: titleEqualFold == _undefined
              ? _instance.titleEqualFold
              : (titleEqualFold as String?),
          titleContainsFold: titleContainsFold == _undefined
              ? _instance.titleContainsFold
              : (titleContainsFold as String?),
          hasPosts:
              hasPosts == _undefined ? _instance.hasPosts : (hasPosts as bool?),
          hasPostsWith: hasPostsWith == _undefined
              ? _instance.hasPostsWith
              : (hasPostsWith as List<Input$PostWhereInput>?)));
  CopyWith$Input$HashtagWhereInput<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$HashtagWhereInput.stub(_then(_instance))
        : CopyWith$Input$HashtagWhereInput(local$not, (e) => call(not: e));
  }

  TRes and(
          Iterable<Input$HashtagWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$HashtagWhereInput<
                          Input$HashtagWhereInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
                  ?.map((e) => CopyWith$Input$HashtagWhereInput(e, (i) => i)))
              ?.toList());
  TRes or(
          Iterable<Input$HashtagWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$HashtagWhereInput<
                          Input$HashtagWhereInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
                  ?.map((e) => CopyWith$Input$HashtagWhereInput(e, (i) => i)))
              ?.toList());
  TRes hasPostsWith(
          Iterable<Input$PostWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
              _fn) =>
      call(
          hasPostsWith: _fn(_instance.hasPostsWith
                  ?.map((e) => CopyWith$Input$PostWhereInput(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Input$HashtagWhereInput<TRes>
    implements CopyWith$Input$HashtagWhereInput<TRes> {
  _CopyWithStubImpl$Input$HashtagWhereInput(this._res);

  TRes _res;

  call(
          {Input$HashtagWhereInput? not,
          List<Input$HashtagWhereInput>? and,
          List<Input$HashtagWhereInput>? or,
          String? id,
          String? idNEQ,
          List<String>? idIn,
          List<String>? idNotIn,
          String? idGT,
          String? idGTE,
          String? idLT,
          String? idLTE,
          String? title,
          String? titleNEQ,
          List<String>? titleIn,
          List<String>? titleNotIn,
          String? titleGT,
          String? titleGTE,
          String? titleLT,
          String? titleLTE,
          String? titleContains,
          String? titleHasPrefix,
          String? titleHasSuffix,
          String? titleEqualFold,
          String? titleContainsFold,
          bool? hasPosts,
          List<Input$PostWhereInput>? hasPostsWith}) =>
      _res;
  CopyWith$Input$HashtagWhereInput<TRes> get not =>
      CopyWith$Input$HashtagWhereInput.stub(_res);
  and(_fn) => _res;
  or(_fn) => _res;
  hasPostsWith(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$PostOrder {
  Input$PostOrder({required this.direction, required this.field});

  @override
  factory Input$PostOrder.fromJson(Map<String, dynamic> json) =>
      _$Input$PostOrderFromJson(json);

  @JsonKey(unknownEnumValue: Enum$OrderDirection.$unknown)
  final Enum$OrderDirection direction;

  @JsonKey(unknownEnumValue: Enum$PostOrderField.$unknown)
  final Enum$PostOrderField field;

  Map<String, dynamic> toJson() => _$Input$PostOrderToJson(this);
  int get hashCode {
    final l$direction = direction;
    final l$field = field;
    return Object.hashAll([l$direction, l$field]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$PostOrder) || runtimeType != other.runtimeType)
      return false;
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    return true;
  }

  CopyWith$Input$PostOrder<Input$PostOrder> get copyWith =>
      CopyWith$Input$PostOrder(this, (i) => i);
}

abstract class CopyWith$Input$PostOrder<TRes> {
  factory CopyWith$Input$PostOrder(
          Input$PostOrder instance, TRes Function(Input$PostOrder) then) =
      _CopyWithImpl$Input$PostOrder;

  factory CopyWith$Input$PostOrder.stub(TRes res) =
      _CopyWithStubImpl$Input$PostOrder;

  TRes call({Enum$OrderDirection? direction, Enum$PostOrderField? field});
}

class _CopyWithImpl$Input$PostOrder<TRes>
    implements CopyWith$Input$PostOrder<TRes> {
  _CopyWithImpl$Input$PostOrder(this._instance, this._then);

  final Input$PostOrder _instance;

  final TRes Function(Input$PostOrder) _then;

  static const _undefined = {};

  TRes call({Object? direction = _undefined, Object? field = _undefined}) =>
      _then(Input$PostOrder(
          direction: direction == _undefined || direction == null
              ? _instance.direction
              : (direction as Enum$OrderDirection),
          field: field == _undefined || field == null
              ? _instance.field
              : (field as Enum$PostOrderField)));
}

class _CopyWithStubImpl$Input$PostOrder<TRes>
    implements CopyWith$Input$PostOrder<TRes> {
  _CopyWithStubImpl$Input$PostOrder(this._res);

  TRes _res;

  call({Enum$OrderDirection? direction, Enum$PostOrderField? field}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$PostWhereInput {
  Input$PostWhereInput(
      {this.not,
      this.and,
      this.or,
      this.id,
      this.idNEQ,
      this.idIn,
      this.idNotIn,
      this.idGT,
      this.idGTE,
      this.idLT,
      this.idLTE,
      this.createTime,
      this.createTimeNEQ,
      this.createTimeIn,
      this.createTimeNotIn,
      this.createTimeGT,
      this.createTimeGTE,
      this.createTimeLT,
      this.createTimeLTE,
      this.updateTime,
      this.updateTimeNEQ,
      this.updateTimeIn,
      this.updateTimeNotIn,
      this.updateTimeGT,
      this.updateTimeGTE,
      this.updateTimeLT,
      this.updateTimeLTE,
      this.title,
      this.titleNEQ,
      this.titleIn,
      this.titleNotIn,
      this.titleGT,
      this.titleGTE,
      this.titleLT,
      this.titleLTE,
      this.titleContains,
      this.titleHasPrefix,
      this.titleHasSuffix,
      this.titleEqualFold,
      this.titleContainsFold,
      this.content,
      this.contentNEQ,
      this.contentIn,
      this.contentNotIn,
      this.contentGT,
      this.contentGTE,
      this.contentLT,
      this.contentLTE,
      this.contentContains,
      this.contentHasPrefix,
      this.contentHasSuffix,
      this.contentEqualFold,
      this.contentContainsFold,
      this.type,
      this.typeNEQ,
      this.typeIn,
      this.typeNotIn,
      this.spoiled,
      this.spoiledNEQ,
      this.hasOwner,
      this.hasOwnerWith,
      this.hasHashtags,
      this.hasHashtagsWith,
      this.hasWork,
      this.hasWorkWith,
      this.hasLikedUsers,
      this.hasLikedUsersWith});

  @override
  factory Input$PostWhereInput.fromJson(Map<String, dynamic> json) =>
      _$Input$PostWhereInputFromJson(json);

  final Input$PostWhereInput? not;

  final List<Input$PostWhereInput>? and;

  final List<Input$PostWhereInput>? or;

  final String? id;

  final String? idNEQ;

  final List<String>? idIn;

  final List<String>? idNotIn;

  final String? idGT;

  final String? idGTE;

  final String? idLT;

  final String? idLTE;

  final String? createTime;

  final String? createTimeNEQ;

  final List<String>? createTimeIn;

  final List<String>? createTimeNotIn;

  final String? createTimeGT;

  final String? createTimeGTE;

  final String? createTimeLT;

  final String? createTimeLTE;

  final String? updateTime;

  final String? updateTimeNEQ;

  final List<String>? updateTimeIn;

  final List<String>? updateTimeNotIn;

  final String? updateTimeGT;

  final String? updateTimeGTE;

  final String? updateTimeLT;

  final String? updateTimeLTE;

  final String? title;

  final String? titleNEQ;

  final List<String>? titleIn;

  final List<String>? titleNotIn;

  final String? titleGT;

  final String? titleGTE;

  final String? titleLT;

  final String? titleLTE;

  final String? titleContains;

  final String? titleHasPrefix;

  final String? titleHasSuffix;

  final String? titleEqualFold;

  final String? titleContainsFold;

  final String? content;

  final String? contentNEQ;

  final List<String>? contentIn;

  final List<String>? contentNotIn;

  final String? contentGT;

  final String? contentGTE;

  final String? contentLT;

  final String? contentLTE;

  final String? contentContains;

  final String? contentHasPrefix;

  final String? contentHasSuffix;

  final String? contentEqualFold;

  final String? contentContainsFold;

  @JsonKey(unknownEnumValue: Enum$PostPostType.$unknown)
  final Enum$PostPostType? type;

  @JsonKey(unknownEnumValue: Enum$PostPostType.$unknown)
  final Enum$PostPostType? typeNEQ;

  @JsonKey(unknownEnumValue: Enum$PostPostType.$unknown)
  final List<Enum$PostPostType>? typeIn;

  @JsonKey(unknownEnumValue: Enum$PostPostType.$unknown)
  final List<Enum$PostPostType>? typeNotIn;

  final bool? spoiled;

  final bool? spoiledNEQ;

  final bool? hasOwner;

  final List<Input$UserWhereInput>? hasOwnerWith;

  final bool? hasHashtags;

  final List<Input$HashtagWhereInput>? hasHashtagsWith;

  final bool? hasWork;

  final List<Input$WorkWhereInput>? hasWorkWith;

  final bool? hasLikedUsers;

  final List<Input$UserWhereInput>? hasLikedUsersWith;

  Map<String, dynamic> toJson() => _$Input$PostWhereInputToJson(this);
  int get hashCode {
    final l$not = not;
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$idNEQ = idNEQ;
    final l$idIn = idIn;
    final l$idNotIn = idNotIn;
    final l$idGT = idGT;
    final l$idGTE = idGTE;
    final l$idLT = idLT;
    final l$idLTE = idLTE;
    final l$createTime = createTime;
    final l$createTimeNEQ = createTimeNEQ;
    final l$createTimeIn = createTimeIn;
    final l$createTimeNotIn = createTimeNotIn;
    final l$createTimeGT = createTimeGT;
    final l$createTimeGTE = createTimeGTE;
    final l$createTimeLT = createTimeLT;
    final l$createTimeLTE = createTimeLTE;
    final l$updateTime = updateTime;
    final l$updateTimeNEQ = updateTimeNEQ;
    final l$updateTimeIn = updateTimeIn;
    final l$updateTimeNotIn = updateTimeNotIn;
    final l$updateTimeGT = updateTimeGT;
    final l$updateTimeGTE = updateTimeGTE;
    final l$updateTimeLT = updateTimeLT;
    final l$updateTimeLTE = updateTimeLTE;
    final l$title = title;
    final l$titleNEQ = titleNEQ;
    final l$titleIn = titleIn;
    final l$titleNotIn = titleNotIn;
    final l$titleGT = titleGT;
    final l$titleGTE = titleGTE;
    final l$titleLT = titleLT;
    final l$titleLTE = titleLTE;
    final l$titleContains = titleContains;
    final l$titleHasPrefix = titleHasPrefix;
    final l$titleHasSuffix = titleHasSuffix;
    final l$titleEqualFold = titleEqualFold;
    final l$titleContainsFold = titleContainsFold;
    final l$content = content;
    final l$contentNEQ = contentNEQ;
    final l$contentIn = contentIn;
    final l$contentNotIn = contentNotIn;
    final l$contentGT = contentGT;
    final l$contentGTE = contentGTE;
    final l$contentLT = contentLT;
    final l$contentLTE = contentLTE;
    final l$contentContains = contentContains;
    final l$contentHasPrefix = contentHasPrefix;
    final l$contentHasSuffix = contentHasSuffix;
    final l$contentEqualFold = contentEqualFold;
    final l$contentContainsFold = contentContainsFold;
    final l$type = type;
    final l$typeNEQ = typeNEQ;
    final l$typeIn = typeIn;
    final l$typeNotIn = typeNotIn;
    final l$spoiled = spoiled;
    final l$spoiledNEQ = spoiledNEQ;
    final l$hasOwner = hasOwner;
    final l$hasOwnerWith = hasOwnerWith;
    final l$hasHashtags = hasHashtags;
    final l$hasHashtagsWith = hasHashtagsWith;
    final l$hasWork = hasWork;
    final l$hasWorkWith = hasWorkWith;
    final l$hasLikedUsers = hasLikedUsers;
    final l$hasLikedUsersWith = hasLikedUsersWith;
    return Object.hashAll([
      l$not,
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$id,
      l$idNEQ,
      l$idIn == null ? null : Object.hashAll(l$idIn.map((v) => v)),
      l$idNotIn == null ? null : Object.hashAll(l$idNotIn.map((v) => v)),
      l$idGT,
      l$idGTE,
      l$idLT,
      l$idLTE,
      l$createTime,
      l$createTimeNEQ,
      l$createTimeIn == null
          ? null
          : Object.hashAll(l$createTimeIn.map((v) => v)),
      l$createTimeNotIn == null
          ? null
          : Object.hashAll(l$createTimeNotIn.map((v) => v)),
      l$createTimeGT,
      l$createTimeGTE,
      l$createTimeLT,
      l$createTimeLTE,
      l$updateTime,
      l$updateTimeNEQ,
      l$updateTimeIn == null
          ? null
          : Object.hashAll(l$updateTimeIn.map((v) => v)),
      l$updateTimeNotIn == null
          ? null
          : Object.hashAll(l$updateTimeNotIn.map((v) => v)),
      l$updateTimeGT,
      l$updateTimeGTE,
      l$updateTimeLT,
      l$updateTimeLTE,
      l$title,
      l$titleNEQ,
      l$titleIn == null ? null : Object.hashAll(l$titleIn.map((v) => v)),
      l$titleNotIn == null ? null : Object.hashAll(l$titleNotIn.map((v) => v)),
      l$titleGT,
      l$titleGTE,
      l$titleLT,
      l$titleLTE,
      l$titleContains,
      l$titleHasPrefix,
      l$titleHasSuffix,
      l$titleEqualFold,
      l$titleContainsFold,
      l$content,
      l$contentNEQ,
      l$contentIn == null ? null : Object.hashAll(l$contentIn.map((v) => v)),
      l$contentNotIn == null
          ? null
          : Object.hashAll(l$contentNotIn.map((v) => v)),
      l$contentGT,
      l$contentGTE,
      l$contentLT,
      l$contentLTE,
      l$contentContains,
      l$contentHasPrefix,
      l$contentHasSuffix,
      l$contentEqualFold,
      l$contentContainsFold,
      l$type,
      l$typeNEQ,
      l$typeIn == null ? null : Object.hashAll(l$typeIn.map((v) => v)),
      l$typeNotIn == null ? null : Object.hashAll(l$typeNotIn.map((v) => v)),
      l$spoiled,
      l$spoiledNEQ,
      l$hasOwner,
      l$hasOwnerWith == null
          ? null
          : Object.hashAll(l$hasOwnerWith.map((v) => v)),
      l$hasHashtags,
      l$hasHashtagsWith == null
          ? null
          : Object.hashAll(l$hasHashtagsWith.map((v) => v)),
      l$hasWork,
      l$hasWorkWith == null
          ? null
          : Object.hashAll(l$hasWorkWith.map((v) => v)),
      l$hasLikedUsers,
      l$hasLikedUsersWith == null
          ? null
          : Object.hashAll(l$hasLikedUsersWith.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$PostWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

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

    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$idNEQ = idNEQ;
    final lOther$idNEQ = other.idNEQ;
    if (l$idNEQ != lOther$idNEQ) return false;
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) return false;
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) return false;
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }

    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) return false;
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) return false;
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }

    final l$idGT = idGT;
    final lOther$idGT = other.idGT;
    if (l$idGT != lOther$idGT) return false;
    final l$idGTE = idGTE;
    final lOther$idGTE = other.idGTE;
    if (l$idGTE != lOther$idGTE) return false;
    final l$idLT = idLT;
    final lOther$idLT = other.idLT;
    if (l$idLT != lOther$idLT) return false;
    final l$idLTE = idLTE;
    final lOther$idLTE = other.idLTE;
    if (l$idLTE != lOther$idLTE) return false;
    final l$createTime = createTime;
    final lOther$createTime = other.createTime;
    if (l$createTime != lOther$createTime) return false;
    final l$createTimeNEQ = createTimeNEQ;
    final lOther$createTimeNEQ = other.createTimeNEQ;
    if (l$createTimeNEQ != lOther$createTimeNEQ) return false;
    final l$createTimeIn = createTimeIn;
    final lOther$createTimeIn = other.createTimeIn;
    if (l$createTimeIn != null && lOther$createTimeIn != null) {
      if (l$createTimeIn.length != lOther$createTimeIn.length) return false;
      for (int i = 0; i < l$createTimeIn.length; i++) {
        final l$createTimeIn$entry = l$createTimeIn[i];
        final lOther$createTimeIn$entry = lOther$createTimeIn[i];
        if (l$createTimeIn$entry != lOther$createTimeIn$entry) return false;
      }
    } else if (l$createTimeIn != lOther$createTimeIn) {
      return false;
    }

    final l$createTimeNotIn = createTimeNotIn;
    final lOther$createTimeNotIn = other.createTimeNotIn;
    if (l$createTimeNotIn != null && lOther$createTimeNotIn != null) {
      if (l$createTimeNotIn.length != lOther$createTimeNotIn.length)
        return false;
      for (int i = 0; i < l$createTimeNotIn.length; i++) {
        final l$createTimeNotIn$entry = l$createTimeNotIn[i];
        final lOther$createTimeNotIn$entry = lOther$createTimeNotIn[i];
        if (l$createTimeNotIn$entry != lOther$createTimeNotIn$entry)
          return false;
      }
    } else if (l$createTimeNotIn != lOther$createTimeNotIn) {
      return false;
    }

    final l$createTimeGT = createTimeGT;
    final lOther$createTimeGT = other.createTimeGT;
    if (l$createTimeGT != lOther$createTimeGT) return false;
    final l$createTimeGTE = createTimeGTE;
    final lOther$createTimeGTE = other.createTimeGTE;
    if (l$createTimeGTE != lOther$createTimeGTE) return false;
    final l$createTimeLT = createTimeLT;
    final lOther$createTimeLT = other.createTimeLT;
    if (l$createTimeLT != lOther$createTimeLT) return false;
    final l$createTimeLTE = createTimeLTE;
    final lOther$createTimeLTE = other.createTimeLTE;
    if (l$createTimeLTE != lOther$createTimeLTE) return false;
    final l$updateTime = updateTime;
    final lOther$updateTime = other.updateTime;
    if (l$updateTime != lOther$updateTime) return false;
    final l$updateTimeNEQ = updateTimeNEQ;
    final lOther$updateTimeNEQ = other.updateTimeNEQ;
    if (l$updateTimeNEQ != lOther$updateTimeNEQ) return false;
    final l$updateTimeIn = updateTimeIn;
    final lOther$updateTimeIn = other.updateTimeIn;
    if (l$updateTimeIn != null && lOther$updateTimeIn != null) {
      if (l$updateTimeIn.length != lOther$updateTimeIn.length) return false;
      for (int i = 0; i < l$updateTimeIn.length; i++) {
        final l$updateTimeIn$entry = l$updateTimeIn[i];
        final lOther$updateTimeIn$entry = lOther$updateTimeIn[i];
        if (l$updateTimeIn$entry != lOther$updateTimeIn$entry) return false;
      }
    } else if (l$updateTimeIn != lOther$updateTimeIn) {
      return false;
    }

    final l$updateTimeNotIn = updateTimeNotIn;
    final lOther$updateTimeNotIn = other.updateTimeNotIn;
    if (l$updateTimeNotIn != null && lOther$updateTimeNotIn != null) {
      if (l$updateTimeNotIn.length != lOther$updateTimeNotIn.length)
        return false;
      for (int i = 0; i < l$updateTimeNotIn.length; i++) {
        final l$updateTimeNotIn$entry = l$updateTimeNotIn[i];
        final lOther$updateTimeNotIn$entry = lOther$updateTimeNotIn[i];
        if (l$updateTimeNotIn$entry != lOther$updateTimeNotIn$entry)
          return false;
      }
    } else if (l$updateTimeNotIn != lOther$updateTimeNotIn) {
      return false;
    }

    final l$updateTimeGT = updateTimeGT;
    final lOther$updateTimeGT = other.updateTimeGT;
    if (l$updateTimeGT != lOther$updateTimeGT) return false;
    final l$updateTimeGTE = updateTimeGTE;
    final lOther$updateTimeGTE = other.updateTimeGTE;
    if (l$updateTimeGTE != lOther$updateTimeGTE) return false;
    final l$updateTimeLT = updateTimeLT;
    final lOther$updateTimeLT = other.updateTimeLT;
    if (l$updateTimeLT != lOther$updateTimeLT) return false;
    final l$updateTimeLTE = updateTimeLTE;
    final lOther$updateTimeLTE = other.updateTimeLTE;
    if (l$updateTimeLTE != lOther$updateTimeLTE) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$titleNEQ = titleNEQ;
    final lOther$titleNEQ = other.titleNEQ;
    if (l$titleNEQ != lOther$titleNEQ) return false;
    final l$titleIn = titleIn;
    final lOther$titleIn = other.titleIn;
    if (l$titleIn != null && lOther$titleIn != null) {
      if (l$titleIn.length != lOther$titleIn.length) return false;
      for (int i = 0; i < l$titleIn.length; i++) {
        final l$titleIn$entry = l$titleIn[i];
        final lOther$titleIn$entry = lOther$titleIn[i];
        if (l$titleIn$entry != lOther$titleIn$entry) return false;
      }
    } else if (l$titleIn != lOther$titleIn) {
      return false;
    }

    final l$titleNotIn = titleNotIn;
    final lOther$titleNotIn = other.titleNotIn;
    if (l$titleNotIn != null && lOther$titleNotIn != null) {
      if (l$titleNotIn.length != lOther$titleNotIn.length) return false;
      for (int i = 0; i < l$titleNotIn.length; i++) {
        final l$titleNotIn$entry = l$titleNotIn[i];
        final lOther$titleNotIn$entry = lOther$titleNotIn[i];
        if (l$titleNotIn$entry != lOther$titleNotIn$entry) return false;
      }
    } else if (l$titleNotIn != lOther$titleNotIn) {
      return false;
    }

    final l$titleGT = titleGT;
    final lOther$titleGT = other.titleGT;
    if (l$titleGT != lOther$titleGT) return false;
    final l$titleGTE = titleGTE;
    final lOther$titleGTE = other.titleGTE;
    if (l$titleGTE != lOther$titleGTE) return false;
    final l$titleLT = titleLT;
    final lOther$titleLT = other.titleLT;
    if (l$titleLT != lOther$titleLT) return false;
    final l$titleLTE = titleLTE;
    final lOther$titleLTE = other.titleLTE;
    if (l$titleLTE != lOther$titleLTE) return false;
    final l$titleContains = titleContains;
    final lOther$titleContains = other.titleContains;
    if (l$titleContains != lOther$titleContains) return false;
    final l$titleHasPrefix = titleHasPrefix;
    final lOther$titleHasPrefix = other.titleHasPrefix;
    if (l$titleHasPrefix != lOther$titleHasPrefix) return false;
    final l$titleHasSuffix = titleHasSuffix;
    final lOther$titleHasSuffix = other.titleHasSuffix;
    if (l$titleHasSuffix != lOther$titleHasSuffix) return false;
    final l$titleEqualFold = titleEqualFold;
    final lOther$titleEqualFold = other.titleEqualFold;
    if (l$titleEqualFold != lOther$titleEqualFold) return false;
    final l$titleContainsFold = titleContainsFold;
    final lOther$titleContainsFold = other.titleContainsFold;
    if (l$titleContainsFold != lOther$titleContainsFold) return false;
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) return false;
    final l$contentNEQ = contentNEQ;
    final lOther$contentNEQ = other.contentNEQ;
    if (l$contentNEQ != lOther$contentNEQ) return false;
    final l$contentIn = contentIn;
    final lOther$contentIn = other.contentIn;
    if (l$contentIn != null && lOther$contentIn != null) {
      if (l$contentIn.length != lOther$contentIn.length) return false;
      for (int i = 0; i < l$contentIn.length; i++) {
        final l$contentIn$entry = l$contentIn[i];
        final lOther$contentIn$entry = lOther$contentIn[i];
        if (l$contentIn$entry != lOther$contentIn$entry) return false;
      }
    } else if (l$contentIn != lOther$contentIn) {
      return false;
    }

    final l$contentNotIn = contentNotIn;
    final lOther$contentNotIn = other.contentNotIn;
    if (l$contentNotIn != null && lOther$contentNotIn != null) {
      if (l$contentNotIn.length != lOther$contentNotIn.length) return false;
      for (int i = 0; i < l$contentNotIn.length; i++) {
        final l$contentNotIn$entry = l$contentNotIn[i];
        final lOther$contentNotIn$entry = lOther$contentNotIn[i];
        if (l$contentNotIn$entry != lOther$contentNotIn$entry) return false;
      }
    } else if (l$contentNotIn != lOther$contentNotIn) {
      return false;
    }

    final l$contentGT = contentGT;
    final lOther$contentGT = other.contentGT;
    if (l$contentGT != lOther$contentGT) return false;
    final l$contentGTE = contentGTE;
    final lOther$contentGTE = other.contentGTE;
    if (l$contentGTE != lOther$contentGTE) return false;
    final l$contentLT = contentLT;
    final lOther$contentLT = other.contentLT;
    if (l$contentLT != lOther$contentLT) return false;
    final l$contentLTE = contentLTE;
    final lOther$contentLTE = other.contentLTE;
    if (l$contentLTE != lOther$contentLTE) return false;
    final l$contentContains = contentContains;
    final lOther$contentContains = other.contentContains;
    if (l$contentContains != lOther$contentContains) return false;
    final l$contentHasPrefix = contentHasPrefix;
    final lOther$contentHasPrefix = other.contentHasPrefix;
    if (l$contentHasPrefix != lOther$contentHasPrefix) return false;
    final l$contentHasSuffix = contentHasSuffix;
    final lOther$contentHasSuffix = other.contentHasSuffix;
    if (l$contentHasSuffix != lOther$contentHasSuffix) return false;
    final l$contentEqualFold = contentEqualFold;
    final lOther$contentEqualFold = other.contentEqualFold;
    if (l$contentEqualFold != lOther$contentEqualFold) return false;
    final l$contentContainsFold = contentContainsFold;
    final lOther$contentContainsFold = other.contentContainsFold;
    if (l$contentContainsFold != lOther$contentContainsFold) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$typeNEQ = typeNEQ;
    final lOther$typeNEQ = other.typeNEQ;
    if (l$typeNEQ != lOther$typeNEQ) return false;
    final l$typeIn = typeIn;
    final lOther$typeIn = other.typeIn;
    if (l$typeIn != null && lOther$typeIn != null) {
      if (l$typeIn.length != lOther$typeIn.length) return false;
      for (int i = 0; i < l$typeIn.length; i++) {
        final l$typeIn$entry = l$typeIn[i];
        final lOther$typeIn$entry = lOther$typeIn[i];
        if (l$typeIn$entry != lOther$typeIn$entry) return false;
      }
    } else if (l$typeIn != lOther$typeIn) {
      return false;
    }

    final l$typeNotIn = typeNotIn;
    final lOther$typeNotIn = other.typeNotIn;
    if (l$typeNotIn != null && lOther$typeNotIn != null) {
      if (l$typeNotIn.length != lOther$typeNotIn.length) return false;
      for (int i = 0; i < l$typeNotIn.length; i++) {
        final l$typeNotIn$entry = l$typeNotIn[i];
        final lOther$typeNotIn$entry = lOther$typeNotIn[i];
        if (l$typeNotIn$entry != lOther$typeNotIn$entry) return false;
      }
    } else if (l$typeNotIn != lOther$typeNotIn) {
      return false;
    }

    final l$spoiled = spoiled;
    final lOther$spoiled = other.spoiled;
    if (l$spoiled != lOther$spoiled) return false;
    final l$spoiledNEQ = spoiledNEQ;
    final lOther$spoiledNEQ = other.spoiledNEQ;
    if (l$spoiledNEQ != lOther$spoiledNEQ) return false;
    final l$hasOwner = hasOwner;
    final lOther$hasOwner = other.hasOwner;
    if (l$hasOwner != lOther$hasOwner) return false;
    final l$hasOwnerWith = hasOwnerWith;
    final lOther$hasOwnerWith = other.hasOwnerWith;
    if (l$hasOwnerWith != null && lOther$hasOwnerWith != null) {
      if (l$hasOwnerWith.length != lOther$hasOwnerWith.length) return false;
      for (int i = 0; i < l$hasOwnerWith.length; i++) {
        final l$hasOwnerWith$entry = l$hasOwnerWith[i];
        final lOther$hasOwnerWith$entry = lOther$hasOwnerWith[i];
        if (l$hasOwnerWith$entry != lOther$hasOwnerWith$entry) return false;
      }
    } else if (l$hasOwnerWith != lOther$hasOwnerWith) {
      return false;
    }

    final l$hasHashtags = hasHashtags;
    final lOther$hasHashtags = other.hasHashtags;
    if (l$hasHashtags != lOther$hasHashtags) return false;
    final l$hasHashtagsWith = hasHashtagsWith;
    final lOther$hasHashtagsWith = other.hasHashtagsWith;
    if (l$hasHashtagsWith != null && lOther$hasHashtagsWith != null) {
      if (l$hasHashtagsWith.length != lOther$hasHashtagsWith.length)
        return false;
      for (int i = 0; i < l$hasHashtagsWith.length; i++) {
        final l$hasHashtagsWith$entry = l$hasHashtagsWith[i];
        final lOther$hasHashtagsWith$entry = lOther$hasHashtagsWith[i];
        if (l$hasHashtagsWith$entry != lOther$hasHashtagsWith$entry)
          return false;
      }
    } else if (l$hasHashtagsWith != lOther$hasHashtagsWith) {
      return false;
    }

    final l$hasWork = hasWork;
    final lOther$hasWork = other.hasWork;
    if (l$hasWork != lOther$hasWork) return false;
    final l$hasWorkWith = hasWorkWith;
    final lOther$hasWorkWith = other.hasWorkWith;
    if (l$hasWorkWith != null && lOther$hasWorkWith != null) {
      if (l$hasWorkWith.length != lOther$hasWorkWith.length) return false;
      for (int i = 0; i < l$hasWorkWith.length; i++) {
        final l$hasWorkWith$entry = l$hasWorkWith[i];
        final lOther$hasWorkWith$entry = lOther$hasWorkWith[i];
        if (l$hasWorkWith$entry != lOther$hasWorkWith$entry) return false;
      }
    } else if (l$hasWorkWith != lOther$hasWorkWith) {
      return false;
    }

    final l$hasLikedUsers = hasLikedUsers;
    final lOther$hasLikedUsers = other.hasLikedUsers;
    if (l$hasLikedUsers != lOther$hasLikedUsers) return false;
    final l$hasLikedUsersWith = hasLikedUsersWith;
    final lOther$hasLikedUsersWith = other.hasLikedUsersWith;
    if (l$hasLikedUsersWith != null && lOther$hasLikedUsersWith != null) {
      if (l$hasLikedUsersWith.length != lOther$hasLikedUsersWith.length)
        return false;
      for (int i = 0; i < l$hasLikedUsersWith.length; i++) {
        final l$hasLikedUsersWith$entry = l$hasLikedUsersWith[i];
        final lOther$hasLikedUsersWith$entry = lOther$hasLikedUsersWith[i];
        if (l$hasLikedUsersWith$entry != lOther$hasLikedUsersWith$entry)
          return false;
      }
    } else if (l$hasLikedUsersWith != lOther$hasLikedUsersWith) {
      return false;
    }

    return true;
  }

  CopyWith$Input$PostWhereInput<Input$PostWhereInput> get copyWith =>
      CopyWith$Input$PostWhereInput(this, (i) => i);
}

abstract class CopyWith$Input$PostWhereInput<TRes> {
  factory CopyWith$Input$PostWhereInput(Input$PostWhereInput instance,
          TRes Function(Input$PostWhereInput) then) =
      _CopyWithImpl$Input$PostWhereInput;

  factory CopyWith$Input$PostWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PostWhereInput;

  TRes call(
      {Input$PostWhereInput? not,
      List<Input$PostWhereInput>? and,
      List<Input$PostWhereInput>? or,
      String? id,
      String? idNEQ,
      List<String>? idIn,
      List<String>? idNotIn,
      String? idGT,
      String? idGTE,
      String? idLT,
      String? idLTE,
      String? createTime,
      String? createTimeNEQ,
      List<String>? createTimeIn,
      List<String>? createTimeNotIn,
      String? createTimeGT,
      String? createTimeGTE,
      String? createTimeLT,
      String? createTimeLTE,
      String? updateTime,
      String? updateTimeNEQ,
      List<String>? updateTimeIn,
      List<String>? updateTimeNotIn,
      String? updateTimeGT,
      String? updateTimeGTE,
      String? updateTimeLT,
      String? updateTimeLTE,
      String? title,
      String? titleNEQ,
      List<String>? titleIn,
      List<String>? titleNotIn,
      String? titleGT,
      String? titleGTE,
      String? titleLT,
      String? titleLTE,
      String? titleContains,
      String? titleHasPrefix,
      String? titleHasSuffix,
      String? titleEqualFold,
      String? titleContainsFold,
      String? content,
      String? contentNEQ,
      List<String>? contentIn,
      List<String>? contentNotIn,
      String? contentGT,
      String? contentGTE,
      String? contentLT,
      String? contentLTE,
      String? contentContains,
      String? contentHasPrefix,
      String? contentHasSuffix,
      String? contentEqualFold,
      String? contentContainsFold,
      Enum$PostPostType? type,
      Enum$PostPostType? typeNEQ,
      List<Enum$PostPostType>? typeIn,
      List<Enum$PostPostType>? typeNotIn,
      bool? spoiled,
      bool? spoiledNEQ,
      bool? hasOwner,
      List<Input$UserWhereInput>? hasOwnerWith,
      bool? hasHashtags,
      List<Input$HashtagWhereInput>? hasHashtagsWith,
      bool? hasWork,
      List<Input$WorkWhereInput>? hasWorkWith,
      bool? hasLikedUsers,
      List<Input$UserWhereInput>? hasLikedUsersWith});
  CopyWith$Input$PostWhereInput<TRes> get not;
  TRes and(
      Iterable<Input$PostWhereInput>? Function(
              Iterable<CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
          _fn);
  TRes or(
      Iterable<Input$PostWhereInput>? Function(
              Iterable<CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
          _fn);
  TRes hasOwnerWith(
      Iterable<Input$UserWhereInput>? Function(
              Iterable<CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
          _fn);
  TRes hasHashtagsWith(
      Iterable<Input$HashtagWhereInput>? Function(
              Iterable<
                  CopyWith$Input$HashtagWhereInput<Input$HashtagWhereInput>>?)
          _fn);
  TRes hasWorkWith(
      Iterable<Input$WorkWhereInput>? Function(
              Iterable<CopyWith$Input$WorkWhereInput<Input$WorkWhereInput>>?)
          _fn);
  TRes hasLikedUsersWith(
      Iterable<Input$UserWhereInput>? Function(
              Iterable<CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$PostWhereInput<TRes>
    implements CopyWith$Input$PostWhereInput<TRes> {
  _CopyWithImpl$Input$PostWhereInput(this._instance, this._then);

  final Input$PostWhereInput _instance;

  final TRes Function(Input$PostWhereInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? not = _undefined,
          Object? and = _undefined,
          Object? or = _undefined,
          Object? id = _undefined,
          Object? idNEQ = _undefined,
          Object? idIn = _undefined,
          Object? idNotIn = _undefined,
          Object? idGT = _undefined,
          Object? idGTE = _undefined,
          Object? idLT = _undefined,
          Object? idLTE = _undefined,
          Object? createTime = _undefined,
          Object? createTimeNEQ = _undefined,
          Object? createTimeIn = _undefined,
          Object? createTimeNotIn = _undefined,
          Object? createTimeGT = _undefined,
          Object? createTimeGTE = _undefined,
          Object? createTimeLT = _undefined,
          Object? createTimeLTE = _undefined,
          Object? updateTime = _undefined,
          Object? updateTimeNEQ = _undefined,
          Object? updateTimeIn = _undefined,
          Object? updateTimeNotIn = _undefined,
          Object? updateTimeGT = _undefined,
          Object? updateTimeGTE = _undefined,
          Object? updateTimeLT = _undefined,
          Object? updateTimeLTE = _undefined,
          Object? title = _undefined,
          Object? titleNEQ = _undefined,
          Object? titleIn = _undefined,
          Object? titleNotIn = _undefined,
          Object? titleGT = _undefined,
          Object? titleGTE = _undefined,
          Object? titleLT = _undefined,
          Object? titleLTE = _undefined,
          Object? titleContains = _undefined,
          Object? titleHasPrefix = _undefined,
          Object? titleHasSuffix = _undefined,
          Object? titleEqualFold = _undefined,
          Object? titleContainsFold = _undefined,
          Object? content = _undefined,
          Object? contentNEQ = _undefined,
          Object? contentIn = _undefined,
          Object? contentNotIn = _undefined,
          Object? contentGT = _undefined,
          Object? contentGTE = _undefined,
          Object? contentLT = _undefined,
          Object? contentLTE = _undefined,
          Object? contentContains = _undefined,
          Object? contentHasPrefix = _undefined,
          Object? contentHasSuffix = _undefined,
          Object? contentEqualFold = _undefined,
          Object? contentContainsFold = _undefined,
          Object? type = _undefined,
          Object? typeNEQ = _undefined,
          Object? typeIn = _undefined,
          Object? typeNotIn = _undefined,
          Object? spoiled = _undefined,
          Object? spoiledNEQ = _undefined,
          Object? hasOwner = _undefined,
          Object? hasOwnerWith = _undefined,
          Object? hasHashtags = _undefined,
          Object? hasHashtagsWith = _undefined,
          Object? hasWork = _undefined,
          Object? hasWorkWith = _undefined,
          Object? hasLikedUsers = _undefined,
          Object? hasLikedUsersWith = _undefined}) =>
      _then(Input$PostWhereInput(
          not: not == _undefined
              ? _instance.not
              : (not as Input$PostWhereInput?),
          and: and == _undefined
              ? _instance.and
              : (and as List<Input$PostWhereInput>?),
          or: or == _undefined
              ? _instance.or
              : (or as List<Input$PostWhereInput>?),
          id: id == _undefined ? _instance.id : (id as String?),
          idNEQ: idNEQ == _undefined ? _instance.idNEQ : (idNEQ as String?),
          idIn: idIn == _undefined ? _instance.idIn : (idIn as List<String>?),
          idNotIn: idNotIn == _undefined
              ? _instance.idNotIn
              : (idNotIn as List<String>?),
          idGT: idGT == _undefined ? _instance.idGT : (idGT as String?),
          idGTE: idGTE == _undefined ? _instance.idGTE : (idGTE as String?),
          idLT: idLT == _undefined ? _instance.idLT : (idLT as String?),
          idLTE: idLTE == _undefined ? _instance.idLTE : (idLTE as String?),
          createTime: createTime == _undefined
              ? _instance.createTime
              : (createTime as String?),
          createTimeNEQ: createTimeNEQ == _undefined
              ? _instance.createTimeNEQ
              : (createTimeNEQ as String?),
          createTimeIn: createTimeIn == _undefined
              ? _instance.createTimeIn
              : (createTimeIn as List<String>?),
          createTimeNotIn: createTimeNotIn == _undefined
              ? _instance.createTimeNotIn
              : (createTimeNotIn as List<String>?),
          createTimeGT: createTimeGT == _undefined
              ? _instance.createTimeGT
              : (createTimeGT as String?),
          createTimeGTE: createTimeGTE == _undefined
              ? _instance.createTimeGTE
              : (createTimeGTE as String?),
          createTimeLT: createTimeLT == _undefined
              ? _instance.createTimeLT
              : (createTimeLT as String?),
          createTimeLTE: createTimeLTE == _undefined
              ? _instance.createTimeLTE
              : (createTimeLTE as String?),
          updateTime: updateTime == _undefined
              ? _instance.updateTime
              : (updateTime as String?),
          updateTimeNEQ: updateTimeNEQ == _undefined
              ? _instance.updateTimeNEQ
              : (updateTimeNEQ as String?),
          updateTimeIn: updateTimeIn == _undefined
              ? _instance.updateTimeIn
              : (updateTimeIn as List<String>?),
          updateTimeNotIn: updateTimeNotIn == _undefined
              ? _instance.updateTimeNotIn
              : (updateTimeNotIn as List<String>?),
          updateTimeGT: updateTimeGT == _undefined
              ? _instance.updateTimeGT
              : (updateTimeGT as String?),
          updateTimeGTE: updateTimeGTE == _undefined ? _instance.updateTimeGTE : (updateTimeGTE as String?),
          updateTimeLT: updateTimeLT == _undefined ? _instance.updateTimeLT : (updateTimeLT as String?),
          updateTimeLTE: updateTimeLTE == _undefined ? _instance.updateTimeLTE : (updateTimeLTE as String?),
          title: title == _undefined ? _instance.title : (title as String?),
          titleNEQ: titleNEQ == _undefined ? _instance.titleNEQ : (titleNEQ as String?),
          titleIn: titleIn == _undefined ? _instance.titleIn : (titleIn as List<String>?),
          titleNotIn: titleNotIn == _undefined ? _instance.titleNotIn : (titleNotIn as List<String>?),
          titleGT: titleGT == _undefined ? _instance.titleGT : (titleGT as String?),
          titleGTE: titleGTE == _undefined ? _instance.titleGTE : (titleGTE as String?),
          titleLT: titleLT == _undefined ? _instance.titleLT : (titleLT as String?),
          titleLTE: titleLTE == _undefined ? _instance.titleLTE : (titleLTE as String?),
          titleContains: titleContains == _undefined ? _instance.titleContains : (titleContains as String?),
          titleHasPrefix: titleHasPrefix == _undefined ? _instance.titleHasPrefix : (titleHasPrefix as String?),
          titleHasSuffix: titleHasSuffix == _undefined ? _instance.titleHasSuffix : (titleHasSuffix as String?),
          titleEqualFold: titleEqualFold == _undefined ? _instance.titleEqualFold : (titleEqualFold as String?),
          titleContainsFold: titleContainsFold == _undefined ? _instance.titleContainsFold : (titleContainsFold as String?),
          content: content == _undefined ? _instance.content : (content as String?),
          contentNEQ: contentNEQ == _undefined ? _instance.contentNEQ : (contentNEQ as String?),
          contentIn: contentIn == _undefined ? _instance.contentIn : (contentIn as List<String>?),
          contentNotIn: contentNotIn == _undefined ? _instance.contentNotIn : (contentNotIn as List<String>?),
          contentGT: contentGT == _undefined ? _instance.contentGT : (contentGT as String?),
          contentGTE: contentGTE == _undefined ? _instance.contentGTE : (contentGTE as String?),
          contentLT: contentLT == _undefined ? _instance.contentLT : (contentLT as String?),
          contentLTE: contentLTE == _undefined ? _instance.contentLTE : (contentLTE as String?),
          contentContains: contentContains == _undefined ? _instance.contentContains : (contentContains as String?),
          contentHasPrefix: contentHasPrefix == _undefined ? _instance.contentHasPrefix : (contentHasPrefix as String?),
          contentHasSuffix: contentHasSuffix == _undefined ? _instance.contentHasSuffix : (contentHasSuffix as String?),
          contentEqualFold: contentEqualFold == _undefined ? _instance.contentEqualFold : (contentEqualFold as String?),
          contentContainsFold: contentContainsFold == _undefined ? _instance.contentContainsFold : (contentContainsFold as String?),
          type: type == _undefined ? _instance.type : (type as Enum$PostPostType?),
          typeNEQ: typeNEQ == _undefined ? _instance.typeNEQ : (typeNEQ as Enum$PostPostType?),
          typeIn: typeIn == _undefined ? _instance.typeIn : (typeIn as List<Enum$PostPostType>?),
          typeNotIn: typeNotIn == _undefined ? _instance.typeNotIn : (typeNotIn as List<Enum$PostPostType>?),
          spoiled: spoiled == _undefined ? _instance.spoiled : (spoiled as bool?),
          spoiledNEQ: spoiledNEQ == _undefined ? _instance.spoiledNEQ : (spoiledNEQ as bool?),
          hasOwner: hasOwner == _undefined ? _instance.hasOwner : (hasOwner as bool?),
          hasOwnerWith: hasOwnerWith == _undefined ? _instance.hasOwnerWith : (hasOwnerWith as List<Input$UserWhereInput>?),
          hasHashtags: hasHashtags == _undefined ? _instance.hasHashtags : (hasHashtags as bool?),
          hasHashtagsWith: hasHashtagsWith == _undefined ? _instance.hasHashtagsWith : (hasHashtagsWith as List<Input$HashtagWhereInput>?),
          hasWork: hasWork == _undefined ? _instance.hasWork : (hasWork as bool?),
          hasWorkWith: hasWorkWith == _undefined ? _instance.hasWorkWith : (hasWorkWith as List<Input$WorkWhereInput>?),
          hasLikedUsers: hasLikedUsers == _undefined ? _instance.hasLikedUsers : (hasLikedUsers as bool?),
          hasLikedUsersWith: hasLikedUsersWith == _undefined ? _instance.hasLikedUsersWith : (hasLikedUsersWith as List<Input$UserWhereInput>?)));
  CopyWith$Input$PostWhereInput<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$PostWhereInput.stub(_then(_instance))
        : CopyWith$Input$PostWhereInput(local$not, (e) => call(not: e));
  }

  TRes and(
          Iterable<Input$PostWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
                  ?.map((e) => CopyWith$Input$PostWhereInput(e, (i) => i)))
              ?.toList());
  TRes or(
          Iterable<Input$PostWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
                  ?.map((e) => CopyWith$Input$PostWhereInput(e, (i) => i)))
              ?.toList());
  TRes hasOwnerWith(
          Iterable<Input$UserWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
              _fn) =>
      call(
          hasOwnerWith: _fn(_instance.hasOwnerWith
                  ?.map((e) => CopyWith$Input$UserWhereInput(e, (i) => i)))
              ?.toList());
  TRes hasHashtagsWith(
          Iterable<Input$HashtagWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$HashtagWhereInput<
                          Input$HashtagWhereInput>>?)
              _fn) =>
      call(
          hasHashtagsWith: _fn(_instance.hasHashtagsWith
                  ?.map((e) => CopyWith$Input$HashtagWhereInput(e, (i) => i)))
              ?.toList());
  TRes hasWorkWith(
          Iterable<Input$WorkWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$WorkWhereInput<Input$WorkWhereInput>>?)
              _fn) =>
      call(
          hasWorkWith: _fn(_instance.hasWorkWith
                  ?.map((e) => CopyWith$Input$WorkWhereInput(e, (i) => i)))
              ?.toList());
  TRes hasLikedUsersWith(
          Iterable<Input$UserWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
              _fn) =>
      call(
          hasLikedUsersWith: _fn(_instance.hasLikedUsersWith
                  ?.map((e) => CopyWith$Input$UserWhereInput(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Input$PostWhereInput<TRes>
    implements CopyWith$Input$PostWhereInput<TRes> {
  _CopyWithStubImpl$Input$PostWhereInput(this._res);

  TRes _res;

  call(
          {Input$PostWhereInput? not,
          List<Input$PostWhereInput>? and,
          List<Input$PostWhereInput>? or,
          String? id,
          String? idNEQ,
          List<String>? idIn,
          List<String>? idNotIn,
          String? idGT,
          String? idGTE,
          String? idLT,
          String? idLTE,
          String? createTime,
          String? createTimeNEQ,
          List<String>? createTimeIn,
          List<String>? createTimeNotIn,
          String? createTimeGT,
          String? createTimeGTE,
          String? createTimeLT,
          String? createTimeLTE,
          String? updateTime,
          String? updateTimeNEQ,
          List<String>? updateTimeIn,
          List<String>? updateTimeNotIn,
          String? updateTimeGT,
          String? updateTimeGTE,
          String? updateTimeLT,
          String? updateTimeLTE,
          String? title,
          String? titleNEQ,
          List<String>? titleIn,
          List<String>? titleNotIn,
          String? titleGT,
          String? titleGTE,
          String? titleLT,
          String? titleLTE,
          String? titleContains,
          String? titleHasPrefix,
          String? titleHasSuffix,
          String? titleEqualFold,
          String? titleContainsFold,
          String? content,
          String? contentNEQ,
          List<String>? contentIn,
          List<String>? contentNotIn,
          String? contentGT,
          String? contentGTE,
          String? contentLT,
          String? contentLTE,
          String? contentContains,
          String? contentHasPrefix,
          String? contentHasSuffix,
          String? contentEqualFold,
          String? contentContainsFold,
          Enum$PostPostType? type,
          Enum$PostPostType? typeNEQ,
          List<Enum$PostPostType>? typeIn,
          List<Enum$PostPostType>? typeNotIn,
          bool? spoiled,
          bool? spoiledNEQ,
          bool? hasOwner,
          List<Input$UserWhereInput>? hasOwnerWith,
          bool? hasHashtags,
          List<Input$HashtagWhereInput>? hasHashtagsWith,
          bool? hasWork,
          List<Input$WorkWhereInput>? hasWorkWith,
          bool? hasLikedUsers,
          List<Input$UserWhereInput>? hasLikedUsersWith}) =>
      _res;
  CopyWith$Input$PostWhereInput<TRes> get not =>
      CopyWith$Input$PostWhereInput.stub(_res);
  and(_fn) => _res;
  or(_fn) => _res;
  hasOwnerWith(_fn) => _res;
  hasHashtagsWith(_fn) => _res;
  hasWorkWith(_fn) => _res;
  hasLikedUsersWith(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UpdateHashtagInput {
  Input$UpdateHashtagInput({this.title, this.addPostIDs, this.removePostIDs});

  @override
  factory Input$UpdateHashtagInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UpdateHashtagInputFromJson(json);

  final String? title;

  final List<String>? addPostIDs;

  final List<String>? removePostIDs;

  Map<String, dynamic> toJson() => _$Input$UpdateHashtagInputToJson(this);
  int get hashCode {
    final l$title = title;
    final l$addPostIDs = addPostIDs;
    final l$removePostIDs = removePostIDs;
    return Object.hashAll([
      l$title,
      l$addPostIDs == null ? null : Object.hashAll(l$addPostIDs.map((v) => v)),
      l$removePostIDs == null
          ? null
          : Object.hashAll(l$removePostIDs.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UpdateHashtagInput) ||
        runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$addPostIDs = addPostIDs;
    final lOther$addPostIDs = other.addPostIDs;
    if (l$addPostIDs != null && lOther$addPostIDs != null) {
      if (l$addPostIDs.length != lOther$addPostIDs.length) return false;
      for (int i = 0; i < l$addPostIDs.length; i++) {
        final l$addPostIDs$entry = l$addPostIDs[i];
        final lOther$addPostIDs$entry = lOther$addPostIDs[i];
        if (l$addPostIDs$entry != lOther$addPostIDs$entry) return false;
      }
    } else if (l$addPostIDs != lOther$addPostIDs) {
      return false;
    }

    final l$removePostIDs = removePostIDs;
    final lOther$removePostIDs = other.removePostIDs;
    if (l$removePostIDs != null && lOther$removePostIDs != null) {
      if (l$removePostIDs.length != lOther$removePostIDs.length) return false;
      for (int i = 0; i < l$removePostIDs.length; i++) {
        final l$removePostIDs$entry = l$removePostIDs[i];
        final lOther$removePostIDs$entry = lOther$removePostIDs[i];
        if (l$removePostIDs$entry != lOther$removePostIDs$entry) return false;
      }
    } else if (l$removePostIDs != lOther$removePostIDs) {
      return false;
    }

    return true;
  }

  CopyWith$Input$UpdateHashtagInput<Input$UpdateHashtagInput> get copyWith =>
      CopyWith$Input$UpdateHashtagInput(this, (i) => i);
}

abstract class CopyWith$Input$UpdateHashtagInput<TRes> {
  factory CopyWith$Input$UpdateHashtagInput(Input$UpdateHashtagInput instance,
          TRes Function(Input$UpdateHashtagInput) then) =
      _CopyWithImpl$Input$UpdateHashtagInput;

  factory CopyWith$Input$UpdateHashtagInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateHashtagInput;

  TRes call(
      {String? title, List<String>? addPostIDs, List<String>? removePostIDs});
}

class _CopyWithImpl$Input$UpdateHashtagInput<TRes>
    implements CopyWith$Input$UpdateHashtagInput<TRes> {
  _CopyWithImpl$Input$UpdateHashtagInput(this._instance, this._then);

  final Input$UpdateHashtagInput _instance;

  final TRes Function(Input$UpdateHashtagInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? addPostIDs = _undefined,
          Object? removePostIDs = _undefined}) =>
      _then(Input$UpdateHashtagInput(
          title: title == _undefined ? _instance.title : (title as String?),
          addPostIDs: addPostIDs == _undefined
              ? _instance.addPostIDs
              : (addPostIDs as List<String>?),
          removePostIDs: removePostIDs == _undefined
              ? _instance.removePostIDs
              : (removePostIDs as List<String>?)));
}

class _CopyWithStubImpl$Input$UpdateHashtagInput<TRes>
    implements CopyWith$Input$UpdateHashtagInput<TRes> {
  _CopyWithStubImpl$Input$UpdateHashtagInput(this._res);

  TRes _res;

  call(
          {String? title,
          List<String>? addPostIDs,
          List<String>? removePostIDs}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UpdatePostInput {
  Input$UpdatePostInput(
      {this.updateTime,
      this.title,
      this.content,
      this.type,
      this.spoiled,
      this.clearOwner,
      this.ownerID,
      this.addHashtagIDs,
      this.removeHashtagIDs,
      this.clearWork,
      this.workID,
      this.addLikedUserIDs,
      this.removeLikedUserIDs});

  @override
  factory Input$UpdatePostInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UpdatePostInputFromJson(json);

  final String? updateTime;

  final String? title;

  final String? content;

  @JsonKey(unknownEnumValue: Enum$PostPostType.$unknown)
  final Enum$PostPostType? type;

  final bool? spoiled;

  final bool? clearOwner;

  final String? ownerID;

  final List<String>? addHashtagIDs;

  final List<String>? removeHashtagIDs;

  final bool? clearWork;

  final String? workID;

  final List<String>? addLikedUserIDs;

  final List<String>? removeLikedUserIDs;

  Map<String, dynamic> toJson() => _$Input$UpdatePostInputToJson(this);
  int get hashCode {
    final l$updateTime = updateTime;
    final l$title = title;
    final l$content = content;
    final l$type = type;
    final l$spoiled = spoiled;
    final l$clearOwner = clearOwner;
    final l$ownerID = ownerID;
    final l$addHashtagIDs = addHashtagIDs;
    final l$removeHashtagIDs = removeHashtagIDs;
    final l$clearWork = clearWork;
    final l$workID = workID;
    final l$addLikedUserIDs = addLikedUserIDs;
    final l$removeLikedUserIDs = removeLikedUserIDs;
    return Object.hashAll([
      l$updateTime,
      l$title,
      l$content,
      l$type,
      l$spoiled,
      l$clearOwner,
      l$ownerID,
      l$addHashtagIDs == null
          ? null
          : Object.hashAll(l$addHashtagIDs.map((v) => v)),
      l$removeHashtagIDs == null
          ? null
          : Object.hashAll(l$removeHashtagIDs.map((v) => v)),
      l$clearWork,
      l$workID,
      l$addLikedUserIDs == null
          ? null
          : Object.hashAll(l$addLikedUserIDs.map((v) => v)),
      l$removeLikedUserIDs == null
          ? null
          : Object.hashAll(l$removeLikedUserIDs.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UpdatePostInput) || runtimeType != other.runtimeType)
      return false;
    final l$updateTime = updateTime;
    final lOther$updateTime = other.updateTime;
    if (l$updateTime != lOther$updateTime) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$spoiled = spoiled;
    final lOther$spoiled = other.spoiled;
    if (l$spoiled != lOther$spoiled) return false;
    final l$clearOwner = clearOwner;
    final lOther$clearOwner = other.clearOwner;
    if (l$clearOwner != lOther$clearOwner) return false;
    final l$ownerID = ownerID;
    final lOther$ownerID = other.ownerID;
    if (l$ownerID != lOther$ownerID) return false;
    final l$addHashtagIDs = addHashtagIDs;
    final lOther$addHashtagIDs = other.addHashtagIDs;
    if (l$addHashtagIDs != null && lOther$addHashtagIDs != null) {
      if (l$addHashtagIDs.length != lOther$addHashtagIDs.length) return false;
      for (int i = 0; i < l$addHashtagIDs.length; i++) {
        final l$addHashtagIDs$entry = l$addHashtagIDs[i];
        final lOther$addHashtagIDs$entry = lOther$addHashtagIDs[i];
        if (l$addHashtagIDs$entry != lOther$addHashtagIDs$entry) return false;
      }
    } else if (l$addHashtagIDs != lOther$addHashtagIDs) {
      return false;
    }

    final l$removeHashtagIDs = removeHashtagIDs;
    final lOther$removeHashtagIDs = other.removeHashtagIDs;
    if (l$removeHashtagIDs != null && lOther$removeHashtagIDs != null) {
      if (l$removeHashtagIDs.length != lOther$removeHashtagIDs.length)
        return false;
      for (int i = 0; i < l$removeHashtagIDs.length; i++) {
        final l$removeHashtagIDs$entry = l$removeHashtagIDs[i];
        final lOther$removeHashtagIDs$entry = lOther$removeHashtagIDs[i];
        if (l$removeHashtagIDs$entry != lOther$removeHashtagIDs$entry)
          return false;
      }
    } else if (l$removeHashtagIDs != lOther$removeHashtagIDs) {
      return false;
    }

    final l$clearWork = clearWork;
    final lOther$clearWork = other.clearWork;
    if (l$clearWork != lOther$clearWork) return false;
    final l$workID = workID;
    final lOther$workID = other.workID;
    if (l$workID != lOther$workID) return false;
    final l$addLikedUserIDs = addLikedUserIDs;
    final lOther$addLikedUserIDs = other.addLikedUserIDs;
    if (l$addLikedUserIDs != null && lOther$addLikedUserIDs != null) {
      if (l$addLikedUserIDs.length != lOther$addLikedUserIDs.length)
        return false;
      for (int i = 0; i < l$addLikedUserIDs.length; i++) {
        final l$addLikedUserIDs$entry = l$addLikedUserIDs[i];
        final lOther$addLikedUserIDs$entry = lOther$addLikedUserIDs[i];
        if (l$addLikedUserIDs$entry != lOther$addLikedUserIDs$entry)
          return false;
      }
    } else if (l$addLikedUserIDs != lOther$addLikedUserIDs) {
      return false;
    }

    final l$removeLikedUserIDs = removeLikedUserIDs;
    final lOther$removeLikedUserIDs = other.removeLikedUserIDs;
    if (l$removeLikedUserIDs != null && lOther$removeLikedUserIDs != null) {
      if (l$removeLikedUserIDs.length != lOther$removeLikedUserIDs.length)
        return false;
      for (int i = 0; i < l$removeLikedUserIDs.length; i++) {
        final l$removeLikedUserIDs$entry = l$removeLikedUserIDs[i];
        final lOther$removeLikedUserIDs$entry = lOther$removeLikedUserIDs[i];
        if (l$removeLikedUserIDs$entry != lOther$removeLikedUserIDs$entry)
          return false;
      }
    } else if (l$removeLikedUserIDs != lOther$removeLikedUserIDs) {
      return false;
    }

    return true;
  }

  CopyWith$Input$UpdatePostInput<Input$UpdatePostInput> get copyWith =>
      CopyWith$Input$UpdatePostInput(this, (i) => i);
}

abstract class CopyWith$Input$UpdatePostInput<TRes> {
  factory CopyWith$Input$UpdatePostInput(Input$UpdatePostInput instance,
          TRes Function(Input$UpdatePostInput) then) =
      _CopyWithImpl$Input$UpdatePostInput;

  factory CopyWith$Input$UpdatePostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdatePostInput;

  TRes call(
      {String? updateTime,
      String? title,
      String? content,
      Enum$PostPostType? type,
      bool? spoiled,
      bool? clearOwner,
      String? ownerID,
      List<String>? addHashtagIDs,
      List<String>? removeHashtagIDs,
      bool? clearWork,
      String? workID,
      List<String>? addLikedUserIDs,
      List<String>? removeLikedUserIDs});
}

class _CopyWithImpl$Input$UpdatePostInput<TRes>
    implements CopyWith$Input$UpdatePostInput<TRes> {
  _CopyWithImpl$Input$UpdatePostInput(this._instance, this._then);

  final Input$UpdatePostInput _instance;

  final TRes Function(Input$UpdatePostInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? updateTime = _undefined,
          Object? title = _undefined,
          Object? content = _undefined,
          Object? type = _undefined,
          Object? spoiled = _undefined,
          Object? clearOwner = _undefined,
          Object? ownerID = _undefined,
          Object? addHashtagIDs = _undefined,
          Object? removeHashtagIDs = _undefined,
          Object? clearWork = _undefined,
          Object? workID = _undefined,
          Object? addLikedUserIDs = _undefined,
          Object? removeLikedUserIDs = _undefined}) =>
      _then(Input$UpdatePostInput(
          updateTime: updateTime == _undefined
              ? _instance.updateTime
              : (updateTime as String?),
          title: title == _undefined ? _instance.title : (title as String?),
          content:
              content == _undefined ? _instance.content : (content as String?),
          type: type == _undefined
              ? _instance.type
              : (type as Enum$PostPostType?),
          spoiled:
              spoiled == _undefined ? _instance.spoiled : (spoiled as bool?),
          clearOwner: clearOwner == _undefined
              ? _instance.clearOwner
              : (clearOwner as bool?),
          ownerID:
              ownerID == _undefined ? _instance.ownerID : (ownerID as String?),
          addHashtagIDs: addHashtagIDs == _undefined
              ? _instance.addHashtagIDs
              : (addHashtagIDs as List<String>?),
          removeHashtagIDs: removeHashtagIDs == _undefined
              ? _instance.removeHashtagIDs
              : (removeHashtagIDs as List<String>?),
          clearWork: clearWork == _undefined
              ? _instance.clearWork
              : (clearWork as bool?),
          workID: workID == _undefined ? _instance.workID : (workID as String?),
          addLikedUserIDs: addLikedUserIDs == _undefined
              ? _instance.addLikedUserIDs
              : (addLikedUserIDs as List<String>?),
          removeLikedUserIDs: removeLikedUserIDs == _undefined
              ? _instance.removeLikedUserIDs
              : (removeLikedUserIDs as List<String>?)));
}

class _CopyWithStubImpl$Input$UpdatePostInput<TRes>
    implements CopyWith$Input$UpdatePostInput<TRes> {
  _CopyWithStubImpl$Input$UpdatePostInput(this._res);

  TRes _res;

  call(
          {String? updateTime,
          String? title,
          String? content,
          Enum$PostPostType? type,
          bool? spoiled,
          bool? clearOwner,
          String? ownerID,
          List<String>? addHashtagIDs,
          List<String>? removeHashtagIDs,
          bool? clearWork,
          String? workID,
          List<String>? addLikedUserIDs,
          List<String>? removeLikedUserIDs}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UpdateUserInput {
  Input$UpdateUserInput(
      {this.name,
      this.addPostIDs,
      this.removePostIDs,
      this.addLikedPostIDs,
      this.removeLikedPostIDs});

  @override
  factory Input$UpdateUserInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UpdateUserInputFromJson(json);

  final String? name;

  final List<String>? addPostIDs;

  final List<String>? removePostIDs;

  final List<String>? addLikedPostIDs;

  final List<String>? removeLikedPostIDs;

  Map<String, dynamic> toJson() => _$Input$UpdateUserInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$addPostIDs = addPostIDs;
    final l$removePostIDs = removePostIDs;
    final l$addLikedPostIDs = addLikedPostIDs;
    final l$removeLikedPostIDs = removeLikedPostIDs;
    return Object.hashAll([
      l$name,
      l$addPostIDs == null ? null : Object.hashAll(l$addPostIDs.map((v) => v)),
      l$removePostIDs == null
          ? null
          : Object.hashAll(l$removePostIDs.map((v) => v)),
      l$addLikedPostIDs == null
          ? null
          : Object.hashAll(l$addLikedPostIDs.map((v) => v)),
      l$removeLikedPostIDs == null
          ? null
          : Object.hashAll(l$removeLikedPostIDs.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UpdateUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$addPostIDs = addPostIDs;
    final lOther$addPostIDs = other.addPostIDs;
    if (l$addPostIDs != null && lOther$addPostIDs != null) {
      if (l$addPostIDs.length != lOther$addPostIDs.length) return false;
      for (int i = 0; i < l$addPostIDs.length; i++) {
        final l$addPostIDs$entry = l$addPostIDs[i];
        final lOther$addPostIDs$entry = lOther$addPostIDs[i];
        if (l$addPostIDs$entry != lOther$addPostIDs$entry) return false;
      }
    } else if (l$addPostIDs != lOther$addPostIDs) {
      return false;
    }

    final l$removePostIDs = removePostIDs;
    final lOther$removePostIDs = other.removePostIDs;
    if (l$removePostIDs != null && lOther$removePostIDs != null) {
      if (l$removePostIDs.length != lOther$removePostIDs.length) return false;
      for (int i = 0; i < l$removePostIDs.length; i++) {
        final l$removePostIDs$entry = l$removePostIDs[i];
        final lOther$removePostIDs$entry = lOther$removePostIDs[i];
        if (l$removePostIDs$entry != lOther$removePostIDs$entry) return false;
      }
    } else if (l$removePostIDs != lOther$removePostIDs) {
      return false;
    }

    final l$addLikedPostIDs = addLikedPostIDs;
    final lOther$addLikedPostIDs = other.addLikedPostIDs;
    if (l$addLikedPostIDs != null && lOther$addLikedPostIDs != null) {
      if (l$addLikedPostIDs.length != lOther$addLikedPostIDs.length)
        return false;
      for (int i = 0; i < l$addLikedPostIDs.length; i++) {
        final l$addLikedPostIDs$entry = l$addLikedPostIDs[i];
        final lOther$addLikedPostIDs$entry = lOther$addLikedPostIDs[i];
        if (l$addLikedPostIDs$entry != lOther$addLikedPostIDs$entry)
          return false;
      }
    } else if (l$addLikedPostIDs != lOther$addLikedPostIDs) {
      return false;
    }

    final l$removeLikedPostIDs = removeLikedPostIDs;
    final lOther$removeLikedPostIDs = other.removeLikedPostIDs;
    if (l$removeLikedPostIDs != null && lOther$removeLikedPostIDs != null) {
      if (l$removeLikedPostIDs.length != lOther$removeLikedPostIDs.length)
        return false;
      for (int i = 0; i < l$removeLikedPostIDs.length; i++) {
        final l$removeLikedPostIDs$entry = l$removeLikedPostIDs[i];
        final lOther$removeLikedPostIDs$entry = lOther$removeLikedPostIDs[i];
        if (l$removeLikedPostIDs$entry != lOther$removeLikedPostIDs$entry)
          return false;
      }
    } else if (l$removeLikedPostIDs != lOther$removeLikedPostIDs) {
      return false;
    }

    return true;
  }

  CopyWith$Input$UpdateUserInput<Input$UpdateUserInput> get copyWith =>
      CopyWith$Input$UpdateUserInput(this, (i) => i);
}

abstract class CopyWith$Input$UpdateUserInput<TRes> {
  factory CopyWith$Input$UpdateUserInput(Input$UpdateUserInput instance,
          TRes Function(Input$UpdateUserInput) then) =
      _CopyWithImpl$Input$UpdateUserInput;

  factory CopyWith$Input$UpdateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserInput;

  TRes call(
      {String? name,
      List<String>? addPostIDs,
      List<String>? removePostIDs,
      List<String>? addLikedPostIDs,
      List<String>? removeLikedPostIDs});
}

class _CopyWithImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithImpl$Input$UpdateUserInput(this._instance, this._then);

  final Input$UpdateUserInput _instance;

  final TRes Function(Input$UpdateUserInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? addPostIDs = _undefined,
          Object? removePostIDs = _undefined,
          Object? addLikedPostIDs = _undefined,
          Object? removeLikedPostIDs = _undefined}) =>
      _then(Input$UpdateUserInput(
          name: name == _undefined ? _instance.name : (name as String?),
          addPostIDs: addPostIDs == _undefined
              ? _instance.addPostIDs
              : (addPostIDs as List<String>?),
          removePostIDs: removePostIDs == _undefined
              ? _instance.removePostIDs
              : (removePostIDs as List<String>?),
          addLikedPostIDs: addLikedPostIDs == _undefined
              ? _instance.addLikedPostIDs
              : (addLikedPostIDs as List<String>?),
          removeLikedPostIDs: removeLikedPostIDs == _undefined
              ? _instance.removeLikedPostIDs
              : (removeLikedPostIDs as List<String>?)));
}

class _CopyWithStubImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithStubImpl$Input$UpdateUserInput(this._res);

  TRes _res;

  call(
          {String? name,
          List<String>? addPostIDs,
          List<String>? removePostIDs,
          List<String>? addLikedPostIDs,
          List<String>? removeLikedPostIDs}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UpdateWorkInput {
  Input$UpdateWorkInput(
      {this.title,
      this.clearThumbnail,
      this.thumbnail,
      this.addPostIDs,
      this.removePostIDs});

  @override
  factory Input$UpdateWorkInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UpdateWorkInputFromJson(json);

  final String? title;

  final bool? clearThumbnail;

  final String? thumbnail;

  final List<String>? addPostIDs;

  final List<String>? removePostIDs;

  Map<String, dynamic> toJson() => _$Input$UpdateWorkInputToJson(this);
  int get hashCode {
    final l$title = title;
    final l$clearThumbnail = clearThumbnail;
    final l$thumbnail = thumbnail;
    final l$addPostIDs = addPostIDs;
    final l$removePostIDs = removePostIDs;
    return Object.hashAll([
      l$title,
      l$clearThumbnail,
      l$thumbnail,
      l$addPostIDs == null ? null : Object.hashAll(l$addPostIDs.map((v) => v)),
      l$removePostIDs == null
          ? null
          : Object.hashAll(l$removePostIDs.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UpdateWorkInput) || runtimeType != other.runtimeType)
      return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$clearThumbnail = clearThumbnail;
    final lOther$clearThumbnail = other.clearThumbnail;
    if (l$clearThumbnail != lOther$clearThumbnail) return false;
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) return false;
    final l$addPostIDs = addPostIDs;
    final lOther$addPostIDs = other.addPostIDs;
    if (l$addPostIDs != null && lOther$addPostIDs != null) {
      if (l$addPostIDs.length != lOther$addPostIDs.length) return false;
      for (int i = 0; i < l$addPostIDs.length; i++) {
        final l$addPostIDs$entry = l$addPostIDs[i];
        final lOther$addPostIDs$entry = lOther$addPostIDs[i];
        if (l$addPostIDs$entry != lOther$addPostIDs$entry) return false;
      }
    } else if (l$addPostIDs != lOther$addPostIDs) {
      return false;
    }

    final l$removePostIDs = removePostIDs;
    final lOther$removePostIDs = other.removePostIDs;
    if (l$removePostIDs != null && lOther$removePostIDs != null) {
      if (l$removePostIDs.length != lOther$removePostIDs.length) return false;
      for (int i = 0; i < l$removePostIDs.length; i++) {
        final l$removePostIDs$entry = l$removePostIDs[i];
        final lOther$removePostIDs$entry = lOther$removePostIDs[i];
        if (l$removePostIDs$entry != lOther$removePostIDs$entry) return false;
      }
    } else if (l$removePostIDs != lOther$removePostIDs) {
      return false;
    }

    return true;
  }

  CopyWith$Input$UpdateWorkInput<Input$UpdateWorkInput> get copyWith =>
      CopyWith$Input$UpdateWorkInput(this, (i) => i);
}

abstract class CopyWith$Input$UpdateWorkInput<TRes> {
  factory CopyWith$Input$UpdateWorkInput(Input$UpdateWorkInput instance,
          TRes Function(Input$UpdateWorkInput) then) =
      _CopyWithImpl$Input$UpdateWorkInput;

  factory CopyWith$Input$UpdateWorkInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateWorkInput;

  TRes call(
      {String? title,
      bool? clearThumbnail,
      String? thumbnail,
      List<String>? addPostIDs,
      List<String>? removePostIDs});
}

class _CopyWithImpl$Input$UpdateWorkInput<TRes>
    implements CopyWith$Input$UpdateWorkInput<TRes> {
  _CopyWithImpl$Input$UpdateWorkInput(this._instance, this._then);

  final Input$UpdateWorkInput _instance;

  final TRes Function(Input$UpdateWorkInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? clearThumbnail = _undefined,
          Object? thumbnail = _undefined,
          Object? addPostIDs = _undefined,
          Object? removePostIDs = _undefined}) =>
      _then(Input$UpdateWorkInput(
          title: title == _undefined ? _instance.title : (title as String?),
          clearThumbnail: clearThumbnail == _undefined
              ? _instance.clearThumbnail
              : (clearThumbnail as bool?),
          thumbnail: thumbnail == _undefined
              ? _instance.thumbnail
              : (thumbnail as String?),
          addPostIDs: addPostIDs == _undefined
              ? _instance.addPostIDs
              : (addPostIDs as List<String>?),
          removePostIDs: removePostIDs == _undefined
              ? _instance.removePostIDs
              : (removePostIDs as List<String>?)));
}

class _CopyWithStubImpl$Input$UpdateWorkInput<TRes>
    implements CopyWith$Input$UpdateWorkInput<TRes> {
  _CopyWithStubImpl$Input$UpdateWorkInput(this._res);

  TRes _res;

  call(
          {String? title,
          bool? clearThumbnail,
          String? thumbnail,
          List<String>? addPostIDs,
          List<String>? removePostIDs}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UserWhereInput {
  Input$UserWhereInput(
      {this.not,
      this.and,
      this.or,
      this.id,
      this.idNEQ,
      this.idIn,
      this.idNotIn,
      this.idGT,
      this.idGTE,
      this.idLT,
      this.idLTE,
      this.name,
      this.nameNEQ,
      this.nameIn,
      this.nameNotIn,
      this.nameGT,
      this.nameGTE,
      this.nameLT,
      this.nameLTE,
      this.nameContains,
      this.nameHasPrefix,
      this.nameHasSuffix,
      this.nameEqualFold,
      this.nameContainsFold,
      this.hasPosts,
      this.hasPostsWith,
      this.hasLikedPosts,
      this.hasLikedPostsWith});

  @override
  factory Input$UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UserWhereInputFromJson(json);

  final Input$UserWhereInput? not;

  final List<Input$UserWhereInput>? and;

  final List<Input$UserWhereInput>? or;

  final String? id;

  final String? idNEQ;

  final List<String>? idIn;

  final List<String>? idNotIn;

  final String? idGT;

  final String? idGTE;

  final String? idLT;

  final String? idLTE;

  final String? name;

  final String? nameNEQ;

  final List<String>? nameIn;

  final List<String>? nameNotIn;

  final String? nameGT;

  final String? nameGTE;

  final String? nameLT;

  final String? nameLTE;

  final String? nameContains;

  final String? nameHasPrefix;

  final String? nameHasSuffix;

  final String? nameEqualFold;

  final String? nameContainsFold;

  final bool? hasPosts;

  final List<Input$PostWhereInput>? hasPostsWith;

  final bool? hasLikedPosts;

  final List<Input$PostWhereInput>? hasLikedPostsWith;

  Map<String, dynamic> toJson() => _$Input$UserWhereInputToJson(this);
  int get hashCode {
    final l$not = not;
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$idNEQ = idNEQ;
    final l$idIn = idIn;
    final l$idNotIn = idNotIn;
    final l$idGT = idGT;
    final l$idGTE = idGTE;
    final l$idLT = idLT;
    final l$idLTE = idLTE;
    final l$name = name;
    final l$nameNEQ = nameNEQ;
    final l$nameIn = nameIn;
    final l$nameNotIn = nameNotIn;
    final l$nameGT = nameGT;
    final l$nameGTE = nameGTE;
    final l$nameLT = nameLT;
    final l$nameLTE = nameLTE;
    final l$nameContains = nameContains;
    final l$nameHasPrefix = nameHasPrefix;
    final l$nameHasSuffix = nameHasSuffix;
    final l$nameEqualFold = nameEqualFold;
    final l$nameContainsFold = nameContainsFold;
    final l$hasPosts = hasPosts;
    final l$hasPostsWith = hasPostsWith;
    final l$hasLikedPosts = hasLikedPosts;
    final l$hasLikedPostsWith = hasLikedPostsWith;
    return Object.hashAll([
      l$not,
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$id,
      l$idNEQ,
      l$idIn == null ? null : Object.hashAll(l$idIn.map((v) => v)),
      l$idNotIn == null ? null : Object.hashAll(l$idNotIn.map((v) => v)),
      l$idGT,
      l$idGTE,
      l$idLT,
      l$idLTE,
      l$name,
      l$nameNEQ,
      l$nameIn == null ? null : Object.hashAll(l$nameIn.map((v) => v)),
      l$nameNotIn == null ? null : Object.hashAll(l$nameNotIn.map((v) => v)),
      l$nameGT,
      l$nameGTE,
      l$nameLT,
      l$nameLTE,
      l$nameContains,
      l$nameHasPrefix,
      l$nameHasSuffix,
      l$nameEqualFold,
      l$nameContainsFold,
      l$hasPosts,
      l$hasPostsWith == null
          ? null
          : Object.hashAll(l$hasPostsWith.map((v) => v)),
      l$hasLikedPosts,
      l$hasLikedPostsWith == null
          ? null
          : Object.hashAll(l$hasLikedPostsWith.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UserWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

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

    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$idNEQ = idNEQ;
    final lOther$idNEQ = other.idNEQ;
    if (l$idNEQ != lOther$idNEQ) return false;
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) return false;
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) return false;
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }

    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) return false;
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) return false;
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }

    final l$idGT = idGT;
    final lOther$idGT = other.idGT;
    if (l$idGT != lOther$idGT) return false;
    final l$idGTE = idGTE;
    final lOther$idGTE = other.idGTE;
    if (l$idGTE != lOther$idGTE) return false;
    final l$idLT = idLT;
    final lOther$idLT = other.idLT;
    if (l$idLT != lOther$idLT) return false;
    final l$idLTE = idLTE;
    final lOther$idLTE = other.idLTE;
    if (l$idLTE != lOther$idLTE) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$nameNEQ = nameNEQ;
    final lOther$nameNEQ = other.nameNEQ;
    if (l$nameNEQ != lOther$nameNEQ) return false;
    final l$nameIn = nameIn;
    final lOther$nameIn = other.nameIn;
    if (l$nameIn != null && lOther$nameIn != null) {
      if (l$nameIn.length != lOther$nameIn.length) return false;
      for (int i = 0; i < l$nameIn.length; i++) {
        final l$nameIn$entry = l$nameIn[i];
        final lOther$nameIn$entry = lOther$nameIn[i];
        if (l$nameIn$entry != lOther$nameIn$entry) return false;
      }
    } else if (l$nameIn != lOther$nameIn) {
      return false;
    }

    final l$nameNotIn = nameNotIn;
    final lOther$nameNotIn = other.nameNotIn;
    if (l$nameNotIn != null && lOther$nameNotIn != null) {
      if (l$nameNotIn.length != lOther$nameNotIn.length) return false;
      for (int i = 0; i < l$nameNotIn.length; i++) {
        final l$nameNotIn$entry = l$nameNotIn[i];
        final lOther$nameNotIn$entry = lOther$nameNotIn[i];
        if (l$nameNotIn$entry != lOther$nameNotIn$entry) return false;
      }
    } else if (l$nameNotIn != lOther$nameNotIn) {
      return false;
    }

    final l$nameGT = nameGT;
    final lOther$nameGT = other.nameGT;
    if (l$nameGT != lOther$nameGT) return false;
    final l$nameGTE = nameGTE;
    final lOther$nameGTE = other.nameGTE;
    if (l$nameGTE != lOther$nameGTE) return false;
    final l$nameLT = nameLT;
    final lOther$nameLT = other.nameLT;
    if (l$nameLT != lOther$nameLT) return false;
    final l$nameLTE = nameLTE;
    final lOther$nameLTE = other.nameLTE;
    if (l$nameLTE != lOther$nameLTE) return false;
    final l$nameContains = nameContains;
    final lOther$nameContains = other.nameContains;
    if (l$nameContains != lOther$nameContains) return false;
    final l$nameHasPrefix = nameHasPrefix;
    final lOther$nameHasPrefix = other.nameHasPrefix;
    if (l$nameHasPrefix != lOther$nameHasPrefix) return false;
    final l$nameHasSuffix = nameHasSuffix;
    final lOther$nameHasSuffix = other.nameHasSuffix;
    if (l$nameHasSuffix != lOther$nameHasSuffix) return false;
    final l$nameEqualFold = nameEqualFold;
    final lOther$nameEqualFold = other.nameEqualFold;
    if (l$nameEqualFold != lOther$nameEqualFold) return false;
    final l$nameContainsFold = nameContainsFold;
    final lOther$nameContainsFold = other.nameContainsFold;
    if (l$nameContainsFold != lOther$nameContainsFold) return false;
    final l$hasPosts = hasPosts;
    final lOther$hasPosts = other.hasPosts;
    if (l$hasPosts != lOther$hasPosts) return false;
    final l$hasPostsWith = hasPostsWith;
    final lOther$hasPostsWith = other.hasPostsWith;
    if (l$hasPostsWith != null && lOther$hasPostsWith != null) {
      if (l$hasPostsWith.length != lOther$hasPostsWith.length) return false;
      for (int i = 0; i < l$hasPostsWith.length; i++) {
        final l$hasPostsWith$entry = l$hasPostsWith[i];
        final lOther$hasPostsWith$entry = lOther$hasPostsWith[i];
        if (l$hasPostsWith$entry != lOther$hasPostsWith$entry) return false;
      }
    } else if (l$hasPostsWith != lOther$hasPostsWith) {
      return false;
    }

    final l$hasLikedPosts = hasLikedPosts;
    final lOther$hasLikedPosts = other.hasLikedPosts;
    if (l$hasLikedPosts != lOther$hasLikedPosts) return false;
    final l$hasLikedPostsWith = hasLikedPostsWith;
    final lOther$hasLikedPostsWith = other.hasLikedPostsWith;
    if (l$hasLikedPostsWith != null && lOther$hasLikedPostsWith != null) {
      if (l$hasLikedPostsWith.length != lOther$hasLikedPostsWith.length)
        return false;
      for (int i = 0; i < l$hasLikedPostsWith.length; i++) {
        final l$hasLikedPostsWith$entry = l$hasLikedPostsWith[i];
        final lOther$hasLikedPostsWith$entry = lOther$hasLikedPostsWith[i];
        if (l$hasLikedPostsWith$entry != lOther$hasLikedPostsWith$entry)
          return false;
      }
    } else if (l$hasLikedPostsWith != lOther$hasLikedPostsWith) {
      return false;
    }

    return true;
  }

  CopyWith$Input$UserWhereInput<Input$UserWhereInput> get copyWith =>
      CopyWith$Input$UserWhereInput(this, (i) => i);
}

abstract class CopyWith$Input$UserWhereInput<TRes> {
  factory CopyWith$Input$UserWhereInput(Input$UserWhereInput instance,
          TRes Function(Input$UserWhereInput) then) =
      _CopyWithImpl$Input$UserWhereInput;

  factory CopyWith$Input$UserWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserWhereInput;

  TRes call(
      {Input$UserWhereInput? not,
      List<Input$UserWhereInput>? and,
      List<Input$UserWhereInput>? or,
      String? id,
      String? idNEQ,
      List<String>? idIn,
      List<String>? idNotIn,
      String? idGT,
      String? idGTE,
      String? idLT,
      String? idLTE,
      String? name,
      String? nameNEQ,
      List<String>? nameIn,
      List<String>? nameNotIn,
      String? nameGT,
      String? nameGTE,
      String? nameLT,
      String? nameLTE,
      String? nameContains,
      String? nameHasPrefix,
      String? nameHasSuffix,
      String? nameEqualFold,
      String? nameContainsFold,
      bool? hasPosts,
      List<Input$PostWhereInput>? hasPostsWith,
      bool? hasLikedPosts,
      List<Input$PostWhereInput>? hasLikedPostsWith});
  CopyWith$Input$UserWhereInput<TRes> get not;
  TRes and(
      Iterable<Input$UserWhereInput>? Function(
              Iterable<CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
          _fn);
  TRes or(
      Iterable<Input$UserWhereInput>? Function(
              Iterable<CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
          _fn);
  TRes hasPostsWith(
      Iterable<Input$PostWhereInput>? Function(
              Iterable<CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
          _fn);
  TRes hasLikedPostsWith(
      Iterable<Input$PostWhereInput>? Function(
              Iterable<CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$UserWhereInput<TRes>
    implements CopyWith$Input$UserWhereInput<TRes> {
  _CopyWithImpl$Input$UserWhereInput(this._instance, this._then);

  final Input$UserWhereInput _instance;

  final TRes Function(Input$UserWhereInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? not = _undefined,
          Object? and = _undefined,
          Object? or = _undefined,
          Object? id = _undefined,
          Object? idNEQ = _undefined,
          Object? idIn = _undefined,
          Object? idNotIn = _undefined,
          Object? idGT = _undefined,
          Object? idGTE = _undefined,
          Object? idLT = _undefined,
          Object? idLTE = _undefined,
          Object? name = _undefined,
          Object? nameNEQ = _undefined,
          Object? nameIn = _undefined,
          Object? nameNotIn = _undefined,
          Object? nameGT = _undefined,
          Object? nameGTE = _undefined,
          Object? nameLT = _undefined,
          Object? nameLTE = _undefined,
          Object? nameContains = _undefined,
          Object? nameHasPrefix = _undefined,
          Object? nameHasSuffix = _undefined,
          Object? nameEqualFold = _undefined,
          Object? nameContainsFold = _undefined,
          Object? hasPosts = _undefined,
          Object? hasPostsWith = _undefined,
          Object? hasLikedPosts = _undefined,
          Object? hasLikedPostsWith = _undefined}) =>
      _then(Input$UserWhereInput(
          not: not == _undefined
              ? _instance.not
              : (not as Input$UserWhereInput?),
          and: and == _undefined
              ? _instance.and
              : (and as List<Input$UserWhereInput>?),
          or: or == _undefined
              ? _instance.or
              : (or as List<Input$UserWhereInput>?),
          id: id == _undefined ? _instance.id : (id as String?),
          idNEQ: idNEQ == _undefined ? _instance.idNEQ : (idNEQ as String?),
          idIn: idIn == _undefined ? _instance.idIn : (idIn as List<String>?),
          idNotIn: idNotIn == _undefined
              ? _instance.idNotIn
              : (idNotIn as List<String>?),
          idGT: idGT == _undefined ? _instance.idGT : (idGT as String?),
          idGTE: idGTE == _undefined ? _instance.idGTE : (idGTE as String?),
          idLT: idLT == _undefined ? _instance.idLT : (idLT as String?),
          idLTE: idLTE == _undefined ? _instance.idLTE : (idLTE as String?),
          name: name == _undefined ? _instance.name : (name as String?),
          nameNEQ:
              nameNEQ == _undefined ? _instance.nameNEQ : (nameNEQ as String?),
          nameIn: nameIn == _undefined
              ? _instance.nameIn
              : (nameIn as List<String>?),
          nameNotIn: nameNotIn == _undefined
              ? _instance.nameNotIn
              : (nameNotIn as List<String>?),
          nameGT: nameGT == _undefined ? _instance.nameGT : (nameGT as String?),
          nameGTE:
              nameGTE == _undefined ? _instance.nameGTE : (nameGTE as String?),
          nameLT: nameLT == _undefined ? _instance.nameLT : (nameLT as String?),
          nameLTE:
              nameLTE == _undefined ? _instance.nameLTE : (nameLTE as String?),
          nameContains: nameContains == _undefined
              ? _instance.nameContains
              : (nameContains as String?),
          nameHasPrefix: nameHasPrefix == _undefined
              ? _instance.nameHasPrefix
              : (nameHasPrefix as String?),
          nameHasSuffix: nameHasSuffix == _undefined
              ? _instance.nameHasSuffix
              : (nameHasSuffix as String?),
          nameEqualFold: nameEqualFold == _undefined
              ? _instance.nameEqualFold
              : (nameEqualFold as String?),
          nameContainsFold: nameContainsFold == _undefined
              ? _instance.nameContainsFold
              : (nameContainsFold as String?),
          hasPosts:
              hasPosts == _undefined ? _instance.hasPosts : (hasPosts as bool?),
          hasPostsWith: hasPostsWith == _undefined
              ? _instance.hasPostsWith
              : (hasPostsWith as List<Input$PostWhereInput>?),
          hasLikedPosts: hasLikedPosts == _undefined
              ? _instance.hasLikedPosts
              : (hasLikedPosts as bool?),
          hasLikedPostsWith: hasLikedPostsWith == _undefined
              ? _instance.hasLikedPostsWith
              : (hasLikedPostsWith as List<Input$PostWhereInput>?)));
  CopyWith$Input$UserWhereInput<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$UserWhereInput.stub(_then(_instance))
        : CopyWith$Input$UserWhereInput(local$not, (e) => call(not: e));
  }

  TRes and(
          Iterable<Input$UserWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
                  ?.map((e) => CopyWith$Input$UserWhereInput(e, (i) => i)))
              ?.toList());
  TRes or(
          Iterable<Input$UserWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
                  ?.map((e) => CopyWith$Input$UserWhereInput(e, (i) => i)))
              ?.toList());
  TRes hasPostsWith(
          Iterable<Input$PostWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
              _fn) =>
      call(
          hasPostsWith: _fn(_instance.hasPostsWith
                  ?.map((e) => CopyWith$Input$PostWhereInput(e, (i) => i)))
              ?.toList());
  TRes hasLikedPostsWith(
          Iterable<Input$PostWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
              _fn) =>
      call(
          hasLikedPostsWith: _fn(_instance.hasLikedPostsWith
                  ?.map((e) => CopyWith$Input$PostWhereInput(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Input$UserWhereInput<TRes>
    implements CopyWith$Input$UserWhereInput<TRes> {
  _CopyWithStubImpl$Input$UserWhereInput(this._res);

  TRes _res;

  call(
          {Input$UserWhereInput? not,
          List<Input$UserWhereInput>? and,
          List<Input$UserWhereInput>? or,
          String? id,
          String? idNEQ,
          List<String>? idIn,
          List<String>? idNotIn,
          String? idGT,
          String? idGTE,
          String? idLT,
          String? idLTE,
          String? name,
          String? nameNEQ,
          List<String>? nameIn,
          List<String>? nameNotIn,
          String? nameGT,
          String? nameGTE,
          String? nameLT,
          String? nameLTE,
          String? nameContains,
          String? nameHasPrefix,
          String? nameHasSuffix,
          String? nameEqualFold,
          String? nameContainsFold,
          bool? hasPosts,
          List<Input$PostWhereInput>? hasPostsWith,
          bool? hasLikedPosts,
          List<Input$PostWhereInput>? hasLikedPostsWith}) =>
      _res;
  CopyWith$Input$UserWhereInput<TRes> get not =>
      CopyWith$Input$UserWhereInput.stub(_res);
  and(_fn) => _res;
  or(_fn) => _res;
  hasPostsWith(_fn) => _res;
  hasLikedPostsWith(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$WorkWhereInput {
  Input$WorkWhereInput(
      {this.not,
      this.and,
      this.or,
      this.id,
      this.idNEQ,
      this.idIn,
      this.idNotIn,
      this.idGT,
      this.idGTE,
      this.idLT,
      this.idLTE,
      this.title,
      this.titleNEQ,
      this.titleIn,
      this.titleNotIn,
      this.titleGT,
      this.titleGTE,
      this.titleLT,
      this.titleLTE,
      this.titleContains,
      this.titleHasPrefix,
      this.titleHasSuffix,
      this.titleEqualFold,
      this.titleContainsFold,
      this.thumbnail,
      this.thumbnailNEQ,
      this.thumbnailIn,
      this.thumbnailNotIn,
      this.thumbnailGT,
      this.thumbnailGTE,
      this.thumbnailLT,
      this.thumbnailLTE,
      this.thumbnailContains,
      this.thumbnailHasPrefix,
      this.thumbnailHasSuffix,
      this.thumbnailIsNil,
      this.thumbnailNotNil,
      this.thumbnailEqualFold,
      this.thumbnailContainsFold,
      this.hasPosts,
      this.hasPostsWith});

  @override
  factory Input$WorkWhereInput.fromJson(Map<String, dynamic> json) =>
      _$Input$WorkWhereInputFromJson(json);

  final Input$WorkWhereInput? not;

  final List<Input$WorkWhereInput>? and;

  final List<Input$WorkWhereInput>? or;

  final String? id;

  final String? idNEQ;

  final List<String>? idIn;

  final List<String>? idNotIn;

  final String? idGT;

  final String? idGTE;

  final String? idLT;

  final String? idLTE;

  final String? title;

  final String? titleNEQ;

  final List<String>? titleIn;

  final List<String>? titleNotIn;

  final String? titleGT;

  final String? titleGTE;

  final String? titleLT;

  final String? titleLTE;

  final String? titleContains;

  final String? titleHasPrefix;

  final String? titleHasSuffix;

  final String? titleEqualFold;

  final String? titleContainsFold;

  final String? thumbnail;

  final String? thumbnailNEQ;

  final List<String>? thumbnailIn;

  final List<String>? thumbnailNotIn;

  final String? thumbnailGT;

  final String? thumbnailGTE;

  final String? thumbnailLT;

  final String? thumbnailLTE;

  final String? thumbnailContains;

  final String? thumbnailHasPrefix;

  final String? thumbnailHasSuffix;

  final bool? thumbnailIsNil;

  final bool? thumbnailNotNil;

  final String? thumbnailEqualFold;

  final String? thumbnailContainsFold;

  final bool? hasPosts;

  final List<Input$PostWhereInput>? hasPostsWith;

  Map<String, dynamic> toJson() => _$Input$WorkWhereInputToJson(this);
  int get hashCode {
    final l$not = not;
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$idNEQ = idNEQ;
    final l$idIn = idIn;
    final l$idNotIn = idNotIn;
    final l$idGT = idGT;
    final l$idGTE = idGTE;
    final l$idLT = idLT;
    final l$idLTE = idLTE;
    final l$title = title;
    final l$titleNEQ = titleNEQ;
    final l$titleIn = titleIn;
    final l$titleNotIn = titleNotIn;
    final l$titleGT = titleGT;
    final l$titleGTE = titleGTE;
    final l$titleLT = titleLT;
    final l$titleLTE = titleLTE;
    final l$titleContains = titleContains;
    final l$titleHasPrefix = titleHasPrefix;
    final l$titleHasSuffix = titleHasSuffix;
    final l$titleEqualFold = titleEqualFold;
    final l$titleContainsFold = titleContainsFold;
    final l$thumbnail = thumbnail;
    final l$thumbnailNEQ = thumbnailNEQ;
    final l$thumbnailIn = thumbnailIn;
    final l$thumbnailNotIn = thumbnailNotIn;
    final l$thumbnailGT = thumbnailGT;
    final l$thumbnailGTE = thumbnailGTE;
    final l$thumbnailLT = thumbnailLT;
    final l$thumbnailLTE = thumbnailLTE;
    final l$thumbnailContains = thumbnailContains;
    final l$thumbnailHasPrefix = thumbnailHasPrefix;
    final l$thumbnailHasSuffix = thumbnailHasSuffix;
    final l$thumbnailIsNil = thumbnailIsNil;
    final l$thumbnailNotNil = thumbnailNotNil;
    final l$thumbnailEqualFold = thumbnailEqualFold;
    final l$thumbnailContainsFold = thumbnailContainsFold;
    final l$hasPosts = hasPosts;
    final l$hasPostsWith = hasPostsWith;
    return Object.hashAll([
      l$not,
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$id,
      l$idNEQ,
      l$idIn == null ? null : Object.hashAll(l$idIn.map((v) => v)),
      l$idNotIn == null ? null : Object.hashAll(l$idNotIn.map((v) => v)),
      l$idGT,
      l$idGTE,
      l$idLT,
      l$idLTE,
      l$title,
      l$titleNEQ,
      l$titleIn == null ? null : Object.hashAll(l$titleIn.map((v) => v)),
      l$titleNotIn == null ? null : Object.hashAll(l$titleNotIn.map((v) => v)),
      l$titleGT,
      l$titleGTE,
      l$titleLT,
      l$titleLTE,
      l$titleContains,
      l$titleHasPrefix,
      l$titleHasSuffix,
      l$titleEqualFold,
      l$titleContainsFold,
      l$thumbnail,
      l$thumbnailNEQ,
      l$thumbnailIn == null
          ? null
          : Object.hashAll(l$thumbnailIn.map((v) => v)),
      l$thumbnailNotIn == null
          ? null
          : Object.hashAll(l$thumbnailNotIn.map((v) => v)),
      l$thumbnailGT,
      l$thumbnailGTE,
      l$thumbnailLT,
      l$thumbnailLTE,
      l$thumbnailContains,
      l$thumbnailHasPrefix,
      l$thumbnailHasSuffix,
      l$thumbnailIsNil,
      l$thumbnailNotNil,
      l$thumbnailEqualFold,
      l$thumbnailContainsFold,
      l$hasPosts,
      l$hasPostsWith == null
          ? null
          : Object.hashAll(l$hasPostsWith.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$WorkWhereInput) || runtimeType != other.runtimeType)
      return false;
    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

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

    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$idNEQ = idNEQ;
    final lOther$idNEQ = other.idNEQ;
    if (l$idNEQ != lOther$idNEQ) return false;
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) return false;
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) return false;
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }

    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) return false;
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) return false;
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }

    final l$idGT = idGT;
    final lOther$idGT = other.idGT;
    if (l$idGT != lOther$idGT) return false;
    final l$idGTE = idGTE;
    final lOther$idGTE = other.idGTE;
    if (l$idGTE != lOther$idGTE) return false;
    final l$idLT = idLT;
    final lOther$idLT = other.idLT;
    if (l$idLT != lOther$idLT) return false;
    final l$idLTE = idLTE;
    final lOther$idLTE = other.idLTE;
    if (l$idLTE != lOther$idLTE) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$titleNEQ = titleNEQ;
    final lOther$titleNEQ = other.titleNEQ;
    if (l$titleNEQ != lOther$titleNEQ) return false;
    final l$titleIn = titleIn;
    final lOther$titleIn = other.titleIn;
    if (l$titleIn != null && lOther$titleIn != null) {
      if (l$titleIn.length != lOther$titleIn.length) return false;
      for (int i = 0; i < l$titleIn.length; i++) {
        final l$titleIn$entry = l$titleIn[i];
        final lOther$titleIn$entry = lOther$titleIn[i];
        if (l$titleIn$entry != lOther$titleIn$entry) return false;
      }
    } else if (l$titleIn != lOther$titleIn) {
      return false;
    }

    final l$titleNotIn = titleNotIn;
    final lOther$titleNotIn = other.titleNotIn;
    if (l$titleNotIn != null && lOther$titleNotIn != null) {
      if (l$titleNotIn.length != lOther$titleNotIn.length) return false;
      for (int i = 0; i < l$titleNotIn.length; i++) {
        final l$titleNotIn$entry = l$titleNotIn[i];
        final lOther$titleNotIn$entry = lOther$titleNotIn[i];
        if (l$titleNotIn$entry != lOther$titleNotIn$entry) return false;
      }
    } else if (l$titleNotIn != lOther$titleNotIn) {
      return false;
    }

    final l$titleGT = titleGT;
    final lOther$titleGT = other.titleGT;
    if (l$titleGT != lOther$titleGT) return false;
    final l$titleGTE = titleGTE;
    final lOther$titleGTE = other.titleGTE;
    if (l$titleGTE != lOther$titleGTE) return false;
    final l$titleLT = titleLT;
    final lOther$titleLT = other.titleLT;
    if (l$titleLT != lOther$titleLT) return false;
    final l$titleLTE = titleLTE;
    final lOther$titleLTE = other.titleLTE;
    if (l$titleLTE != lOther$titleLTE) return false;
    final l$titleContains = titleContains;
    final lOther$titleContains = other.titleContains;
    if (l$titleContains != lOther$titleContains) return false;
    final l$titleHasPrefix = titleHasPrefix;
    final lOther$titleHasPrefix = other.titleHasPrefix;
    if (l$titleHasPrefix != lOther$titleHasPrefix) return false;
    final l$titleHasSuffix = titleHasSuffix;
    final lOther$titleHasSuffix = other.titleHasSuffix;
    if (l$titleHasSuffix != lOther$titleHasSuffix) return false;
    final l$titleEqualFold = titleEqualFold;
    final lOther$titleEqualFold = other.titleEqualFold;
    if (l$titleEqualFold != lOther$titleEqualFold) return false;
    final l$titleContainsFold = titleContainsFold;
    final lOther$titleContainsFold = other.titleContainsFold;
    if (l$titleContainsFold != lOther$titleContainsFold) return false;
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) return false;
    final l$thumbnailNEQ = thumbnailNEQ;
    final lOther$thumbnailNEQ = other.thumbnailNEQ;
    if (l$thumbnailNEQ != lOther$thumbnailNEQ) return false;
    final l$thumbnailIn = thumbnailIn;
    final lOther$thumbnailIn = other.thumbnailIn;
    if (l$thumbnailIn != null && lOther$thumbnailIn != null) {
      if (l$thumbnailIn.length != lOther$thumbnailIn.length) return false;
      for (int i = 0; i < l$thumbnailIn.length; i++) {
        final l$thumbnailIn$entry = l$thumbnailIn[i];
        final lOther$thumbnailIn$entry = lOther$thumbnailIn[i];
        if (l$thumbnailIn$entry != lOther$thumbnailIn$entry) return false;
      }
    } else if (l$thumbnailIn != lOther$thumbnailIn) {
      return false;
    }

    final l$thumbnailNotIn = thumbnailNotIn;
    final lOther$thumbnailNotIn = other.thumbnailNotIn;
    if (l$thumbnailNotIn != null && lOther$thumbnailNotIn != null) {
      if (l$thumbnailNotIn.length != lOther$thumbnailNotIn.length) return false;
      for (int i = 0; i < l$thumbnailNotIn.length; i++) {
        final l$thumbnailNotIn$entry = l$thumbnailNotIn[i];
        final lOther$thumbnailNotIn$entry = lOther$thumbnailNotIn[i];
        if (l$thumbnailNotIn$entry != lOther$thumbnailNotIn$entry) return false;
      }
    } else if (l$thumbnailNotIn != lOther$thumbnailNotIn) {
      return false;
    }

    final l$thumbnailGT = thumbnailGT;
    final lOther$thumbnailGT = other.thumbnailGT;
    if (l$thumbnailGT != lOther$thumbnailGT) return false;
    final l$thumbnailGTE = thumbnailGTE;
    final lOther$thumbnailGTE = other.thumbnailGTE;
    if (l$thumbnailGTE != lOther$thumbnailGTE) return false;
    final l$thumbnailLT = thumbnailLT;
    final lOther$thumbnailLT = other.thumbnailLT;
    if (l$thumbnailLT != lOther$thumbnailLT) return false;
    final l$thumbnailLTE = thumbnailLTE;
    final lOther$thumbnailLTE = other.thumbnailLTE;
    if (l$thumbnailLTE != lOther$thumbnailLTE) return false;
    final l$thumbnailContains = thumbnailContains;
    final lOther$thumbnailContains = other.thumbnailContains;
    if (l$thumbnailContains != lOther$thumbnailContains) return false;
    final l$thumbnailHasPrefix = thumbnailHasPrefix;
    final lOther$thumbnailHasPrefix = other.thumbnailHasPrefix;
    if (l$thumbnailHasPrefix != lOther$thumbnailHasPrefix) return false;
    final l$thumbnailHasSuffix = thumbnailHasSuffix;
    final lOther$thumbnailHasSuffix = other.thumbnailHasSuffix;
    if (l$thumbnailHasSuffix != lOther$thumbnailHasSuffix) return false;
    final l$thumbnailIsNil = thumbnailIsNil;
    final lOther$thumbnailIsNil = other.thumbnailIsNil;
    if (l$thumbnailIsNil != lOther$thumbnailIsNil) return false;
    final l$thumbnailNotNil = thumbnailNotNil;
    final lOther$thumbnailNotNil = other.thumbnailNotNil;
    if (l$thumbnailNotNil != lOther$thumbnailNotNil) return false;
    final l$thumbnailEqualFold = thumbnailEqualFold;
    final lOther$thumbnailEqualFold = other.thumbnailEqualFold;
    if (l$thumbnailEqualFold != lOther$thumbnailEqualFold) return false;
    final l$thumbnailContainsFold = thumbnailContainsFold;
    final lOther$thumbnailContainsFold = other.thumbnailContainsFold;
    if (l$thumbnailContainsFold != lOther$thumbnailContainsFold) return false;
    final l$hasPosts = hasPosts;
    final lOther$hasPosts = other.hasPosts;
    if (l$hasPosts != lOther$hasPosts) return false;
    final l$hasPostsWith = hasPostsWith;
    final lOther$hasPostsWith = other.hasPostsWith;
    if (l$hasPostsWith != null && lOther$hasPostsWith != null) {
      if (l$hasPostsWith.length != lOther$hasPostsWith.length) return false;
      for (int i = 0; i < l$hasPostsWith.length; i++) {
        final l$hasPostsWith$entry = l$hasPostsWith[i];
        final lOther$hasPostsWith$entry = lOther$hasPostsWith[i];
        if (l$hasPostsWith$entry != lOther$hasPostsWith$entry) return false;
      }
    } else if (l$hasPostsWith != lOther$hasPostsWith) {
      return false;
    }

    return true;
  }

  CopyWith$Input$WorkWhereInput<Input$WorkWhereInput> get copyWith =>
      CopyWith$Input$WorkWhereInput(this, (i) => i);
}

abstract class CopyWith$Input$WorkWhereInput<TRes> {
  factory CopyWith$Input$WorkWhereInput(Input$WorkWhereInput instance,
          TRes Function(Input$WorkWhereInput) then) =
      _CopyWithImpl$Input$WorkWhereInput;

  factory CopyWith$Input$WorkWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WorkWhereInput;

  TRes call(
      {Input$WorkWhereInput? not,
      List<Input$WorkWhereInput>? and,
      List<Input$WorkWhereInput>? or,
      String? id,
      String? idNEQ,
      List<String>? idIn,
      List<String>? idNotIn,
      String? idGT,
      String? idGTE,
      String? idLT,
      String? idLTE,
      String? title,
      String? titleNEQ,
      List<String>? titleIn,
      List<String>? titleNotIn,
      String? titleGT,
      String? titleGTE,
      String? titleLT,
      String? titleLTE,
      String? titleContains,
      String? titleHasPrefix,
      String? titleHasSuffix,
      String? titleEqualFold,
      String? titleContainsFold,
      String? thumbnail,
      String? thumbnailNEQ,
      List<String>? thumbnailIn,
      List<String>? thumbnailNotIn,
      String? thumbnailGT,
      String? thumbnailGTE,
      String? thumbnailLT,
      String? thumbnailLTE,
      String? thumbnailContains,
      String? thumbnailHasPrefix,
      String? thumbnailHasSuffix,
      bool? thumbnailIsNil,
      bool? thumbnailNotNil,
      String? thumbnailEqualFold,
      String? thumbnailContainsFold,
      bool? hasPosts,
      List<Input$PostWhereInput>? hasPostsWith});
  CopyWith$Input$WorkWhereInput<TRes> get not;
  TRes and(
      Iterable<Input$WorkWhereInput>? Function(
              Iterable<CopyWith$Input$WorkWhereInput<Input$WorkWhereInput>>?)
          _fn);
  TRes or(
      Iterable<Input$WorkWhereInput>? Function(
              Iterable<CopyWith$Input$WorkWhereInput<Input$WorkWhereInput>>?)
          _fn);
  TRes hasPostsWith(
      Iterable<Input$PostWhereInput>? Function(
              Iterable<CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$WorkWhereInput<TRes>
    implements CopyWith$Input$WorkWhereInput<TRes> {
  _CopyWithImpl$Input$WorkWhereInput(this._instance, this._then);

  final Input$WorkWhereInput _instance;

  final TRes Function(Input$WorkWhereInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? not = _undefined,
          Object? and = _undefined,
          Object? or = _undefined,
          Object? id = _undefined,
          Object? idNEQ = _undefined,
          Object? idIn = _undefined,
          Object? idNotIn = _undefined,
          Object? idGT = _undefined,
          Object? idGTE = _undefined,
          Object? idLT = _undefined,
          Object? idLTE = _undefined,
          Object? title = _undefined,
          Object? titleNEQ = _undefined,
          Object? titleIn = _undefined,
          Object? titleNotIn = _undefined,
          Object? titleGT = _undefined,
          Object? titleGTE = _undefined,
          Object? titleLT = _undefined,
          Object? titleLTE = _undefined,
          Object? titleContains = _undefined,
          Object? titleHasPrefix = _undefined,
          Object? titleHasSuffix = _undefined,
          Object? titleEqualFold = _undefined,
          Object? titleContainsFold = _undefined,
          Object? thumbnail = _undefined,
          Object? thumbnailNEQ = _undefined,
          Object? thumbnailIn = _undefined,
          Object? thumbnailNotIn = _undefined,
          Object? thumbnailGT = _undefined,
          Object? thumbnailGTE = _undefined,
          Object? thumbnailLT = _undefined,
          Object? thumbnailLTE = _undefined,
          Object? thumbnailContains = _undefined,
          Object? thumbnailHasPrefix = _undefined,
          Object? thumbnailHasSuffix = _undefined,
          Object? thumbnailIsNil = _undefined,
          Object? thumbnailNotNil = _undefined,
          Object? thumbnailEqualFold = _undefined,
          Object? thumbnailContainsFold = _undefined,
          Object? hasPosts = _undefined,
          Object? hasPostsWith = _undefined}) =>
      _then(Input$WorkWhereInput(
          not: not == _undefined
              ? _instance.not
              : (not as Input$WorkWhereInput?),
          and: and == _undefined
              ? _instance.and
              : (and as List<Input$WorkWhereInput>?),
          or: or == _undefined
              ? _instance.or
              : (or as List<Input$WorkWhereInput>?),
          id: id == _undefined ? _instance.id : (id as String?),
          idNEQ: idNEQ == _undefined ? _instance.idNEQ : (idNEQ as String?),
          idIn: idIn == _undefined ? _instance.idIn : (idIn as List<String>?),
          idNotIn: idNotIn == _undefined
              ? _instance.idNotIn
              : (idNotIn as List<String>?),
          idGT: idGT == _undefined ? _instance.idGT : (idGT as String?),
          idGTE: idGTE == _undefined ? _instance.idGTE : (idGTE as String?),
          idLT: idLT == _undefined ? _instance.idLT : (idLT as String?),
          idLTE: idLTE == _undefined ? _instance.idLTE : (idLTE as String?),
          title: title == _undefined ? _instance.title : (title as String?),
          titleNEQ: titleNEQ == _undefined
              ? _instance.titleNEQ
              : (titleNEQ as String?),
          titleIn: titleIn == _undefined
              ? _instance.titleIn
              : (titleIn as List<String>?),
          titleNotIn: titleNotIn == _undefined
              ? _instance.titleNotIn
              : (titleNotIn as List<String>?),
          titleGT:
              titleGT == _undefined ? _instance.titleGT : (titleGT as String?),
          titleGTE: titleGTE == _undefined
              ? _instance.titleGTE
              : (titleGTE as String?),
          titleLT:
              titleLT == _undefined ? _instance.titleLT : (titleLT as String?),
          titleLTE: titleLTE == _undefined
              ? _instance.titleLTE
              : (titleLTE as String?),
          titleContains: titleContains == _undefined
              ? _instance.titleContains
              : (titleContains as String?),
          titleHasPrefix: titleHasPrefix == _undefined
              ? _instance.titleHasPrefix
              : (titleHasPrefix as String?),
          titleHasSuffix: titleHasSuffix == _undefined
              ? _instance.titleHasSuffix
              : (titleHasSuffix as String?),
          titleEqualFold: titleEqualFold == _undefined
              ? _instance.titleEqualFold
              : (titleEqualFold as String?),
          titleContainsFold: titleContainsFold == _undefined
              ? _instance.titleContainsFold
              : (titleContainsFold as String?),
          thumbnail: thumbnail == _undefined
              ? _instance.thumbnail
              : (thumbnail as String?),
          thumbnailNEQ:
              thumbnailNEQ == _undefined ? _instance.thumbnailNEQ : (thumbnailNEQ as String?),
          thumbnailIn: thumbnailIn == _undefined ? _instance.thumbnailIn : (thumbnailIn as List<String>?),
          thumbnailNotIn: thumbnailNotIn == _undefined ? _instance.thumbnailNotIn : (thumbnailNotIn as List<String>?),
          thumbnailGT: thumbnailGT == _undefined ? _instance.thumbnailGT : (thumbnailGT as String?),
          thumbnailGTE: thumbnailGTE == _undefined ? _instance.thumbnailGTE : (thumbnailGTE as String?),
          thumbnailLT: thumbnailLT == _undefined ? _instance.thumbnailLT : (thumbnailLT as String?),
          thumbnailLTE: thumbnailLTE == _undefined ? _instance.thumbnailLTE : (thumbnailLTE as String?),
          thumbnailContains: thumbnailContains == _undefined ? _instance.thumbnailContains : (thumbnailContains as String?),
          thumbnailHasPrefix: thumbnailHasPrefix == _undefined ? _instance.thumbnailHasPrefix : (thumbnailHasPrefix as String?),
          thumbnailHasSuffix: thumbnailHasSuffix == _undefined ? _instance.thumbnailHasSuffix : (thumbnailHasSuffix as String?),
          thumbnailIsNil: thumbnailIsNil == _undefined ? _instance.thumbnailIsNil : (thumbnailIsNil as bool?),
          thumbnailNotNil: thumbnailNotNil == _undefined ? _instance.thumbnailNotNil : (thumbnailNotNil as bool?),
          thumbnailEqualFold: thumbnailEqualFold == _undefined ? _instance.thumbnailEqualFold : (thumbnailEqualFold as String?),
          thumbnailContainsFold: thumbnailContainsFold == _undefined ? _instance.thumbnailContainsFold : (thumbnailContainsFold as String?),
          hasPosts: hasPosts == _undefined ? _instance.hasPosts : (hasPosts as bool?),
          hasPostsWith: hasPostsWith == _undefined ? _instance.hasPostsWith : (hasPostsWith as List<Input$PostWhereInput>?)));
  CopyWith$Input$WorkWhereInput<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$WorkWhereInput.stub(_then(_instance))
        : CopyWith$Input$WorkWhereInput(local$not, (e) => call(not: e));
  }

  TRes and(
          Iterable<Input$WorkWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$WorkWhereInput<Input$WorkWhereInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
                  ?.map((e) => CopyWith$Input$WorkWhereInput(e, (i) => i)))
              ?.toList());
  TRes or(
          Iterable<Input$WorkWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$WorkWhereInput<Input$WorkWhereInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
                  ?.map((e) => CopyWith$Input$WorkWhereInput(e, (i) => i)))
              ?.toList());
  TRes hasPostsWith(
          Iterable<Input$PostWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
              _fn) =>
      call(
          hasPostsWith: _fn(_instance.hasPostsWith
                  ?.map((e) => CopyWith$Input$PostWhereInput(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Input$WorkWhereInput<TRes>
    implements CopyWith$Input$WorkWhereInput<TRes> {
  _CopyWithStubImpl$Input$WorkWhereInput(this._res);

  TRes _res;

  call(
          {Input$WorkWhereInput? not,
          List<Input$WorkWhereInput>? and,
          List<Input$WorkWhereInput>? or,
          String? id,
          String? idNEQ,
          List<String>? idIn,
          List<String>? idNotIn,
          String? idGT,
          String? idGTE,
          String? idLT,
          String? idLTE,
          String? title,
          String? titleNEQ,
          List<String>? titleIn,
          List<String>? titleNotIn,
          String? titleGT,
          String? titleGTE,
          String? titleLT,
          String? titleLTE,
          String? titleContains,
          String? titleHasPrefix,
          String? titleHasSuffix,
          String? titleEqualFold,
          String? titleContainsFold,
          String? thumbnail,
          String? thumbnailNEQ,
          List<String>? thumbnailIn,
          List<String>? thumbnailNotIn,
          String? thumbnailGT,
          String? thumbnailGTE,
          String? thumbnailLT,
          String? thumbnailLTE,
          String? thumbnailContains,
          String? thumbnailHasPrefix,
          String? thumbnailHasSuffix,
          bool? thumbnailIsNil,
          bool? thumbnailNotNil,
          String? thumbnailEqualFold,
          String? thumbnailContainsFold,
          bool? hasPosts,
          List<Input$PostWhereInput>? hasPostsWith}) =>
      _res;
  CopyWith$Input$WorkWhereInput<TRes> get not =>
      CopyWith$Input$WorkWhereInput.stub(_res);
  and(_fn) => _res;
  or(_fn) => _res;
  hasPostsWith(_fn) => _res;
}

enum Enum$OrderDirection {
  @JsonValue('ASC')
  ASC,
  @JsonValue('DESC')
  DESC,
  $unknown
}

enum Enum$PostOrderField {
  @JsonValue('CREATE_TIME')
  CREATE_TIME,
  @JsonValue('UPDATE_TIME')
  UPDATE_TIME,
  $unknown
}

enum Enum$PostPostType {
  @JsonValue('letter')
  letter,
  @JsonValue('praise')
  praise,
  $unknown
}

const possibleTypesMap = {
  'Node': {'Hashtag', 'Post', 'User', 'Work'}
};
