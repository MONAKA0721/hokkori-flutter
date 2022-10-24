class Input$LikePostInput {
  factory Input$LikePostInput(
          {String? clientMutationId,
          required String userID,
          required String postID}) =>
      Input$LikePostInput._({
        if (clientMutationId != null) r'clientMutationId': clientMutationId,
        r'userID': userID,
        r'postID': postID,
      });

  Input$LikePostInput._(this._$data);

  factory Input$LikePostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    final l$postID = data['postID'];
    result$data['postID'] = (l$postID as String);
    return Input$LikePostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);
  String get userID => (_$data['userID'] as String);
  String get postID => (_$data['postID'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$userID = userID;
    result$data['userID'] = l$userID;
    final l$postID = postID;
    result$data['postID'] = l$postID;
    return result$data;
  }

  CopyWith$Input$LikePostInput<Input$LikePostInput> get copyWith =>
      CopyWith$Input$LikePostInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LikePostInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    final l$postID = postID;
    final lOther$postID = other.postID;
    if (l$postID != lOther$postID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$userID = userID;
    final l$postID = postID;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$userID,
      l$postID
    ]);
  }
}

abstract class CopyWith$Input$LikePostInput<TRes> {
  factory CopyWith$Input$LikePostInput(Input$LikePostInput instance,
          TRes Function(Input$LikePostInput) then) =
      _CopyWithImpl$Input$LikePostInput;

  factory CopyWith$Input$LikePostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LikePostInput;

  TRes call({String? clientMutationId, String? userID, String? postID});
}

class _CopyWithImpl$Input$LikePostInput<TRes>
    implements CopyWith$Input$LikePostInput<TRes> {
  _CopyWithImpl$Input$LikePostInput(this._instance, this._then);

  final Input$LikePostInput _instance;

  final TRes Function(Input$LikePostInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? userID = _undefined,
          Object? postID = _undefined}) =>
      _then(Input$LikePostInput._({
        ..._instance._$data,
        if (clientMutationId != _undefined)
          'clientMutationId': (clientMutationId as String?),
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
        if (postID != _undefined && postID != null)
          'postID': (postID as String),
      }));
}

class _CopyWithStubImpl$Input$LikePostInput<TRes>
    implements CopyWith$Input$LikePostInput<TRes> {
  _CopyWithStubImpl$Input$LikePostInput(this._res);

  TRes _res;

  call({String? clientMutationId, String? userID, String? postID}) => _res;
}

class Input$UnlikePostInput {
  factory Input$UnlikePostInput(
          {String? clientMutationId,
          required String userID,
          required String postID}) =>
      Input$UnlikePostInput._({
        if (clientMutationId != null) r'clientMutationId': clientMutationId,
        r'userID': userID,
        r'postID': postID,
      });

  Input$UnlikePostInput._(this._$data);

  factory Input$UnlikePostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    final l$postID = data['postID'];
    result$data['postID'] = (l$postID as String);
    return Input$UnlikePostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);
  String get userID => (_$data['userID'] as String);
  String get postID => (_$data['postID'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$userID = userID;
    result$data['userID'] = l$userID;
    final l$postID = postID;
    result$data['postID'] = l$postID;
    return result$data;
  }

  CopyWith$Input$UnlikePostInput<Input$UnlikePostInput> get copyWith =>
      CopyWith$Input$UnlikePostInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UnlikePostInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    final l$postID = postID;
    final lOther$postID = other.postID;
    if (l$postID != lOther$postID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$userID = userID;
    final l$postID = postID;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$userID,
      l$postID
    ]);
  }
}

abstract class CopyWith$Input$UnlikePostInput<TRes> {
  factory CopyWith$Input$UnlikePostInput(Input$UnlikePostInput instance,
          TRes Function(Input$UnlikePostInput) then) =
      _CopyWithImpl$Input$UnlikePostInput;

  factory CopyWith$Input$UnlikePostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UnlikePostInput;

  TRes call({String? clientMutationId, String? userID, String? postID});
}

class _CopyWithImpl$Input$UnlikePostInput<TRes>
    implements CopyWith$Input$UnlikePostInput<TRes> {
  _CopyWithImpl$Input$UnlikePostInput(this._instance, this._then);

  final Input$UnlikePostInput _instance;

  final TRes Function(Input$UnlikePostInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? userID = _undefined,
          Object? postID = _undefined}) =>
      _then(Input$UnlikePostInput._({
        ..._instance._$data,
        if (clientMutationId != _undefined)
          'clientMutationId': (clientMutationId as String?),
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
        if (postID != _undefined && postID != null)
          'postID': (postID as String),
      }));
}

class _CopyWithStubImpl$Input$UnlikePostInput<TRes>
    implements CopyWith$Input$UnlikePostInput<TRes> {
  _CopyWithStubImpl$Input$UnlikePostInput(this._res);

  TRes _res;

  call({String? clientMutationId, String? userID, String? postID}) => _res;
}

class Input$BookmarkPostInput {
  factory Input$BookmarkPostInput(
          {String? clientMutationId,
          required String userID,
          required String postID}) =>
      Input$BookmarkPostInput._({
        if (clientMutationId != null) r'clientMutationId': clientMutationId,
        r'userID': userID,
        r'postID': postID,
      });

  Input$BookmarkPostInput._(this._$data);

  factory Input$BookmarkPostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    final l$postID = data['postID'];
    result$data['postID'] = (l$postID as String);
    return Input$BookmarkPostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);
  String get userID => (_$data['userID'] as String);
  String get postID => (_$data['postID'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$userID = userID;
    result$data['userID'] = l$userID;
    final l$postID = postID;
    result$data['postID'] = l$postID;
    return result$data;
  }

  CopyWith$Input$BookmarkPostInput<Input$BookmarkPostInput> get copyWith =>
      CopyWith$Input$BookmarkPostInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BookmarkPostInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    final l$postID = postID;
    final lOther$postID = other.postID;
    if (l$postID != lOther$postID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$userID = userID;
    final l$postID = postID;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$userID,
      l$postID
    ]);
  }
}

abstract class CopyWith$Input$BookmarkPostInput<TRes> {
  factory CopyWith$Input$BookmarkPostInput(Input$BookmarkPostInput instance,
          TRes Function(Input$BookmarkPostInput) then) =
      _CopyWithImpl$Input$BookmarkPostInput;

  factory CopyWith$Input$BookmarkPostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BookmarkPostInput;

  TRes call({String? clientMutationId, String? userID, String? postID});
}

class _CopyWithImpl$Input$BookmarkPostInput<TRes>
    implements CopyWith$Input$BookmarkPostInput<TRes> {
  _CopyWithImpl$Input$BookmarkPostInput(this._instance, this._then);

  final Input$BookmarkPostInput _instance;

  final TRes Function(Input$BookmarkPostInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? userID = _undefined,
          Object? postID = _undefined}) =>
      _then(Input$BookmarkPostInput._({
        ..._instance._$data,
        if (clientMutationId != _undefined)
          'clientMutationId': (clientMutationId as String?),
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
        if (postID != _undefined && postID != null)
          'postID': (postID as String),
      }));
}

class _CopyWithStubImpl$Input$BookmarkPostInput<TRes>
    implements CopyWith$Input$BookmarkPostInput<TRes> {
  _CopyWithStubImpl$Input$BookmarkPostInput(this._res);

  TRes _res;

  call({String? clientMutationId, String? userID, String? postID}) => _res;
}

class Input$UnbookmarkPostInput {
  factory Input$UnbookmarkPostInput(
          {String? clientMutationId,
          required String userID,
          required String postID}) =>
      Input$UnbookmarkPostInput._({
        if (clientMutationId != null) r'clientMutationId': clientMutationId,
        r'userID': userID,
        r'postID': postID,
      });

  Input$UnbookmarkPostInput._(this._$data);

  factory Input$UnbookmarkPostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    final l$postID = data['postID'];
    result$data['postID'] = (l$postID as String);
    return Input$UnbookmarkPostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);
  String get userID => (_$data['userID'] as String);
  String get postID => (_$data['postID'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$userID = userID;
    result$data['userID'] = l$userID;
    final l$postID = postID;
    result$data['postID'] = l$postID;
    return result$data;
  }

  CopyWith$Input$UnbookmarkPostInput<Input$UnbookmarkPostInput> get copyWith =>
      CopyWith$Input$UnbookmarkPostInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UnbookmarkPostInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    final l$postID = postID;
    final lOther$postID = other.postID;
    if (l$postID != lOther$postID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$userID = userID;
    final l$postID = postID;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$userID,
      l$postID
    ]);
  }
}

abstract class CopyWith$Input$UnbookmarkPostInput<TRes> {
  factory CopyWith$Input$UnbookmarkPostInput(Input$UnbookmarkPostInput instance,
          TRes Function(Input$UnbookmarkPostInput) then) =
      _CopyWithImpl$Input$UnbookmarkPostInput;

  factory CopyWith$Input$UnbookmarkPostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UnbookmarkPostInput;

  TRes call({String? clientMutationId, String? userID, String? postID});
}

class _CopyWithImpl$Input$UnbookmarkPostInput<TRes>
    implements CopyWith$Input$UnbookmarkPostInput<TRes> {
  _CopyWithImpl$Input$UnbookmarkPostInput(this._instance, this._then);

  final Input$UnbookmarkPostInput _instance;

  final TRes Function(Input$UnbookmarkPostInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? userID = _undefined,
          Object? postID = _undefined}) =>
      _then(Input$UnbookmarkPostInput._({
        ..._instance._$data,
        if (clientMutationId != _undefined)
          'clientMutationId': (clientMutationId as String?),
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
        if (postID != _undefined && postID != null)
          'postID': (postID as String),
      }));
}

class _CopyWithStubImpl$Input$UnbookmarkPostInput<TRes>
    implements CopyWith$Input$UnbookmarkPostInput<TRes> {
  _CopyWithStubImpl$Input$UnbookmarkPostInput(this._res);

  TRes _res;

  call({String? clientMutationId, String? userID, String? postID}) => _res;
}
