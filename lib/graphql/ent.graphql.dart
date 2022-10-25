class Input$CategoryWhereInput {
  factory Input$CategoryWhereInput(
          {Input$CategoryWhereInput? not,
          List<Input$CategoryWhereInput>? and,
          List<Input$CategoryWhereInput>? or,
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
          bool? hasPost,
          List<Input$PostWhereInput>? hasPostWith}) =>
      Input$CategoryWhereInput._({
        if (not != null) r'not': not,
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (idNEQ != null) r'idNEQ': idNEQ,
        if (idIn != null) r'idIn': idIn,
        if (idNotIn != null) r'idNotIn': idNotIn,
        if (idGT != null) r'idGT': idGT,
        if (idGTE != null) r'idGTE': idGTE,
        if (idLT != null) r'idLT': idLT,
        if (idLTE != null) r'idLTE': idLTE,
        if (name != null) r'name': name,
        if (nameNEQ != null) r'nameNEQ': nameNEQ,
        if (nameIn != null) r'nameIn': nameIn,
        if (nameNotIn != null) r'nameNotIn': nameNotIn,
        if (nameGT != null) r'nameGT': nameGT,
        if (nameGTE != null) r'nameGTE': nameGTE,
        if (nameLT != null) r'nameLT': nameLT,
        if (nameLTE != null) r'nameLTE': nameLTE,
        if (nameContains != null) r'nameContains': nameContains,
        if (nameHasPrefix != null) r'nameHasPrefix': nameHasPrefix,
        if (nameHasSuffix != null) r'nameHasSuffix': nameHasSuffix,
        if (nameEqualFold != null) r'nameEqualFold': nameEqualFold,
        if (nameContainsFold != null) r'nameContainsFold': nameContainsFold,
        if (hasPost != null) r'hasPost': hasPost,
        if (hasPostWith != null) r'hasPostWith': hasPostWith,
      });

  Input$CategoryWhereInput._(this._$data);

  factory Input$CategoryWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$CategoryWhereInput.fromJson((l$not as Map<String, dynamic>));
    }
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$CategoryWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$CategoryWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('idNEQ')) {
      final l$idNEQ = data['idNEQ'];
      result$data['idNEQ'] = (l$idNEQ as String?);
    }
    if (data.containsKey('idIn')) {
      final l$idIn = data['idIn'];
      result$data['idIn'] =
          (l$idIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idNotIn')) {
      final l$idNotIn = data['idNotIn'];
      result$data['idNotIn'] =
          (l$idNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idGT')) {
      final l$idGT = data['idGT'];
      result$data['idGT'] = (l$idGT as String?);
    }
    if (data.containsKey('idGTE')) {
      final l$idGTE = data['idGTE'];
      result$data['idGTE'] = (l$idGTE as String?);
    }
    if (data.containsKey('idLT')) {
      final l$idLT = data['idLT'];
      result$data['idLT'] = (l$idLT as String?);
    }
    if (data.containsKey('idLTE')) {
      final l$idLTE = data['idLTE'];
      result$data['idLTE'] = (l$idLTE as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('nameNEQ')) {
      final l$nameNEQ = data['nameNEQ'];
      result$data['nameNEQ'] = (l$nameNEQ as String?);
    }
    if (data.containsKey('nameIn')) {
      final l$nameIn = data['nameIn'];
      result$data['nameIn'] =
          (l$nameIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('nameNotIn')) {
      final l$nameNotIn = data['nameNotIn'];
      result$data['nameNotIn'] =
          (l$nameNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('nameGT')) {
      final l$nameGT = data['nameGT'];
      result$data['nameGT'] = (l$nameGT as String?);
    }
    if (data.containsKey('nameGTE')) {
      final l$nameGTE = data['nameGTE'];
      result$data['nameGTE'] = (l$nameGTE as String?);
    }
    if (data.containsKey('nameLT')) {
      final l$nameLT = data['nameLT'];
      result$data['nameLT'] = (l$nameLT as String?);
    }
    if (data.containsKey('nameLTE')) {
      final l$nameLTE = data['nameLTE'];
      result$data['nameLTE'] = (l$nameLTE as String?);
    }
    if (data.containsKey('nameContains')) {
      final l$nameContains = data['nameContains'];
      result$data['nameContains'] = (l$nameContains as String?);
    }
    if (data.containsKey('nameHasPrefix')) {
      final l$nameHasPrefix = data['nameHasPrefix'];
      result$data['nameHasPrefix'] = (l$nameHasPrefix as String?);
    }
    if (data.containsKey('nameHasSuffix')) {
      final l$nameHasSuffix = data['nameHasSuffix'];
      result$data['nameHasSuffix'] = (l$nameHasSuffix as String?);
    }
    if (data.containsKey('nameEqualFold')) {
      final l$nameEqualFold = data['nameEqualFold'];
      result$data['nameEqualFold'] = (l$nameEqualFold as String?);
    }
    if (data.containsKey('nameContainsFold')) {
      final l$nameContainsFold = data['nameContainsFold'];
      result$data['nameContainsFold'] = (l$nameContainsFold as String?);
    }
    if (data.containsKey('hasPost')) {
      final l$hasPost = data['hasPost'];
      result$data['hasPost'] = (l$hasPost as bool?);
    }
    if (data.containsKey('hasPostWith')) {
      final l$hasPostWith = data['hasPostWith'];
      result$data['hasPostWith'] = (l$hasPostWith as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$CategoryWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CategoryWhereInput? get not =>
      (_$data['not'] as Input$CategoryWhereInput?);
  List<Input$CategoryWhereInput>? get and =>
      (_$data['and'] as List<Input$CategoryWhereInput>?);
  List<Input$CategoryWhereInput>? get or =>
      (_$data['or'] as List<Input$CategoryWhereInput>?);
  String? get id => (_$data['id'] as String?);
  String? get idNEQ => (_$data['idNEQ'] as String?);
  List<String>? get idIn => (_$data['idIn'] as List<String>?);
  List<String>? get idNotIn => (_$data['idNotIn'] as List<String>?);
  String? get idGT => (_$data['idGT'] as String?);
  String? get idGTE => (_$data['idGTE'] as String?);
  String? get idLT => (_$data['idLT'] as String?);
  String? get idLTE => (_$data['idLTE'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get nameNEQ => (_$data['nameNEQ'] as String?);
  List<String>? get nameIn => (_$data['nameIn'] as List<String>?);
  List<String>? get nameNotIn => (_$data['nameNotIn'] as List<String>?);
  String? get nameGT => (_$data['nameGT'] as String?);
  String? get nameGTE => (_$data['nameGTE'] as String?);
  String? get nameLT => (_$data['nameLT'] as String?);
  String? get nameLTE => (_$data['nameLTE'] as String?);
  String? get nameContains => (_$data['nameContains'] as String?);
  String? get nameHasPrefix => (_$data['nameHasPrefix'] as String?);
  String? get nameHasSuffix => (_$data['nameHasSuffix'] as String?);
  String? get nameEqualFold => (_$data['nameEqualFold'] as String?);
  String? get nameContainsFold => (_$data['nameContainsFold'] as String?);
  bool? get hasPost => (_$data['hasPost'] as bool?);
  List<Input$PostWhereInput>? get hasPostWith =>
      (_$data['hasPostWith'] as List<Input$PostWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idNEQ')) {
      final l$idNEQ = idNEQ;
      result$data['idNEQ'] = l$idNEQ;
    }
    if (_$data.containsKey('idIn')) {
      final l$idIn = idIn;
      result$data['idIn'] = l$idIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idNotIn')) {
      final l$idNotIn = idNotIn;
      result$data['idNotIn'] = l$idNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idGT')) {
      final l$idGT = idGT;
      result$data['idGT'] = l$idGT;
    }
    if (_$data.containsKey('idGTE')) {
      final l$idGTE = idGTE;
      result$data['idGTE'] = l$idGTE;
    }
    if (_$data.containsKey('idLT')) {
      final l$idLT = idLT;
      result$data['idLT'] = l$idLT;
    }
    if (_$data.containsKey('idLTE')) {
      final l$idLTE = idLTE;
      result$data['idLTE'] = l$idLTE;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('nameNEQ')) {
      final l$nameNEQ = nameNEQ;
      result$data['nameNEQ'] = l$nameNEQ;
    }
    if (_$data.containsKey('nameIn')) {
      final l$nameIn = nameIn;
      result$data['nameIn'] = l$nameIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('nameNotIn')) {
      final l$nameNotIn = nameNotIn;
      result$data['nameNotIn'] = l$nameNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('nameGT')) {
      final l$nameGT = nameGT;
      result$data['nameGT'] = l$nameGT;
    }
    if (_$data.containsKey('nameGTE')) {
      final l$nameGTE = nameGTE;
      result$data['nameGTE'] = l$nameGTE;
    }
    if (_$data.containsKey('nameLT')) {
      final l$nameLT = nameLT;
      result$data['nameLT'] = l$nameLT;
    }
    if (_$data.containsKey('nameLTE')) {
      final l$nameLTE = nameLTE;
      result$data['nameLTE'] = l$nameLTE;
    }
    if (_$data.containsKey('nameContains')) {
      final l$nameContains = nameContains;
      result$data['nameContains'] = l$nameContains;
    }
    if (_$data.containsKey('nameHasPrefix')) {
      final l$nameHasPrefix = nameHasPrefix;
      result$data['nameHasPrefix'] = l$nameHasPrefix;
    }
    if (_$data.containsKey('nameHasSuffix')) {
      final l$nameHasSuffix = nameHasSuffix;
      result$data['nameHasSuffix'] = l$nameHasSuffix;
    }
    if (_$data.containsKey('nameEqualFold')) {
      final l$nameEqualFold = nameEqualFold;
      result$data['nameEqualFold'] = l$nameEqualFold;
    }
    if (_$data.containsKey('nameContainsFold')) {
      final l$nameContainsFold = nameContainsFold;
      result$data['nameContainsFold'] = l$nameContainsFold;
    }
    if (_$data.containsKey('hasPost')) {
      final l$hasPost = hasPost;
      result$data['hasPost'] = l$hasPost;
    }
    if (_$data.containsKey('hasPostWith')) {
      final l$hasPostWith = hasPostWith;
      result$data['hasPostWith'] =
          l$hasPostWith?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CategoryWhereInput<Input$CategoryWhereInput> get copyWith =>
      CopyWith$Input$CategoryWhereInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CategoryWhereInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idNEQ = idNEQ;
    final lOther$idNEQ = other.idNEQ;
    if (_$data.containsKey('idNEQ') != other._$data.containsKey('idNEQ')) {
      return false;
    }
    if (l$idNEQ != lOther$idNEQ) {
      return false;
    }
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (_$data.containsKey('idIn') != other._$data.containsKey('idIn')) {
      return false;
    }
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) {
        return false;
      }
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) {
          return false;
        }
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }
    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (_$data.containsKey('idNotIn') != other._$data.containsKey('idNotIn')) {
      return false;
    }
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) {
          return false;
        }
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }
    final l$idGT = idGT;
    final lOther$idGT = other.idGT;
    if (_$data.containsKey('idGT') != other._$data.containsKey('idGT')) {
      return false;
    }
    if (l$idGT != lOther$idGT) {
      return false;
    }
    final l$idGTE = idGTE;
    final lOther$idGTE = other.idGTE;
    if (_$data.containsKey('idGTE') != other._$data.containsKey('idGTE')) {
      return false;
    }
    if (l$idGTE != lOther$idGTE) {
      return false;
    }
    final l$idLT = idLT;
    final lOther$idLT = other.idLT;
    if (_$data.containsKey('idLT') != other._$data.containsKey('idLT')) {
      return false;
    }
    if (l$idLT != lOther$idLT) {
      return false;
    }
    final l$idLTE = idLTE;
    final lOther$idLTE = other.idLTE;
    if (_$data.containsKey('idLTE') != other._$data.containsKey('idLTE')) {
      return false;
    }
    if (l$idLTE != lOther$idLTE) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$nameNEQ = nameNEQ;
    final lOther$nameNEQ = other.nameNEQ;
    if (_$data.containsKey('nameNEQ') != other._$data.containsKey('nameNEQ')) {
      return false;
    }
    if (l$nameNEQ != lOther$nameNEQ) {
      return false;
    }
    final l$nameIn = nameIn;
    final lOther$nameIn = other.nameIn;
    if (_$data.containsKey('nameIn') != other._$data.containsKey('nameIn')) {
      return false;
    }
    if (l$nameIn != null && lOther$nameIn != null) {
      if (l$nameIn.length != lOther$nameIn.length) {
        return false;
      }
      for (int i = 0; i < l$nameIn.length; i++) {
        final l$nameIn$entry = l$nameIn[i];
        final lOther$nameIn$entry = lOther$nameIn[i];
        if (l$nameIn$entry != lOther$nameIn$entry) {
          return false;
        }
      }
    } else if (l$nameIn != lOther$nameIn) {
      return false;
    }
    final l$nameNotIn = nameNotIn;
    final lOther$nameNotIn = other.nameNotIn;
    if (_$data.containsKey('nameNotIn') !=
        other._$data.containsKey('nameNotIn')) {
      return false;
    }
    if (l$nameNotIn != null && lOther$nameNotIn != null) {
      if (l$nameNotIn.length != lOther$nameNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$nameNotIn.length; i++) {
        final l$nameNotIn$entry = l$nameNotIn[i];
        final lOther$nameNotIn$entry = lOther$nameNotIn[i];
        if (l$nameNotIn$entry != lOther$nameNotIn$entry) {
          return false;
        }
      }
    } else if (l$nameNotIn != lOther$nameNotIn) {
      return false;
    }
    final l$nameGT = nameGT;
    final lOther$nameGT = other.nameGT;
    if (_$data.containsKey('nameGT') != other._$data.containsKey('nameGT')) {
      return false;
    }
    if (l$nameGT != lOther$nameGT) {
      return false;
    }
    final l$nameGTE = nameGTE;
    final lOther$nameGTE = other.nameGTE;
    if (_$data.containsKey('nameGTE') != other._$data.containsKey('nameGTE')) {
      return false;
    }
    if (l$nameGTE != lOther$nameGTE) {
      return false;
    }
    final l$nameLT = nameLT;
    final lOther$nameLT = other.nameLT;
    if (_$data.containsKey('nameLT') != other._$data.containsKey('nameLT')) {
      return false;
    }
    if (l$nameLT != lOther$nameLT) {
      return false;
    }
    final l$nameLTE = nameLTE;
    final lOther$nameLTE = other.nameLTE;
    if (_$data.containsKey('nameLTE') != other._$data.containsKey('nameLTE')) {
      return false;
    }
    if (l$nameLTE != lOther$nameLTE) {
      return false;
    }
    final l$nameContains = nameContains;
    final lOther$nameContains = other.nameContains;
    if (_$data.containsKey('nameContains') !=
        other._$data.containsKey('nameContains')) {
      return false;
    }
    if (l$nameContains != lOther$nameContains) {
      return false;
    }
    final l$nameHasPrefix = nameHasPrefix;
    final lOther$nameHasPrefix = other.nameHasPrefix;
    if (_$data.containsKey('nameHasPrefix') !=
        other._$data.containsKey('nameHasPrefix')) {
      return false;
    }
    if (l$nameHasPrefix != lOther$nameHasPrefix) {
      return false;
    }
    final l$nameHasSuffix = nameHasSuffix;
    final lOther$nameHasSuffix = other.nameHasSuffix;
    if (_$data.containsKey('nameHasSuffix') !=
        other._$data.containsKey('nameHasSuffix')) {
      return false;
    }
    if (l$nameHasSuffix != lOther$nameHasSuffix) {
      return false;
    }
    final l$nameEqualFold = nameEqualFold;
    final lOther$nameEqualFold = other.nameEqualFold;
    if (_$data.containsKey('nameEqualFold') !=
        other._$data.containsKey('nameEqualFold')) {
      return false;
    }
    if (l$nameEqualFold != lOther$nameEqualFold) {
      return false;
    }
    final l$nameContainsFold = nameContainsFold;
    final lOther$nameContainsFold = other.nameContainsFold;
    if (_$data.containsKey('nameContainsFold') !=
        other._$data.containsKey('nameContainsFold')) {
      return false;
    }
    if (l$nameContainsFold != lOther$nameContainsFold) {
      return false;
    }
    final l$hasPost = hasPost;
    final lOther$hasPost = other.hasPost;
    if (_$data.containsKey('hasPost') != other._$data.containsKey('hasPost')) {
      return false;
    }
    if (l$hasPost != lOther$hasPost) {
      return false;
    }
    final l$hasPostWith = hasPostWith;
    final lOther$hasPostWith = other.hasPostWith;
    if (_$data.containsKey('hasPostWith') !=
        other._$data.containsKey('hasPostWith')) {
      return false;
    }
    if (l$hasPostWith != null && lOther$hasPostWith != null) {
      if (l$hasPostWith.length != lOther$hasPostWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasPostWith.length; i++) {
        final l$hasPostWith$entry = l$hasPostWith[i];
        final lOther$hasPostWith$entry = lOther$hasPostWith[i];
        if (l$hasPostWith$entry != lOther$hasPostWith$entry) {
          return false;
        }
      }
    } else if (l$hasPostWith != lOther$hasPostWith) {
      return false;
    }
    return true;
  }

  @override
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
    final l$hasPost = hasPost;
    final l$hasPostWith = hasPostWith;
    return Object.hashAll([
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idNEQ') ? l$idNEQ : const {},
      _$data.containsKey('idIn')
          ? l$idIn == null
              ? null
              : Object.hashAll(l$idIn.map((v) => v))
          : const {},
      _$data.containsKey('idNotIn')
          ? l$idNotIn == null
              ? null
              : Object.hashAll(l$idNotIn.map((v) => v))
          : const {},
      _$data.containsKey('idGT') ? l$idGT : const {},
      _$data.containsKey('idGTE') ? l$idGTE : const {},
      _$data.containsKey('idLT') ? l$idLT : const {},
      _$data.containsKey('idLTE') ? l$idLTE : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nameNEQ') ? l$nameNEQ : const {},
      _$data.containsKey('nameIn')
          ? l$nameIn == null
              ? null
              : Object.hashAll(l$nameIn.map((v) => v))
          : const {},
      _$data.containsKey('nameNotIn')
          ? l$nameNotIn == null
              ? null
              : Object.hashAll(l$nameNotIn.map((v) => v))
          : const {},
      _$data.containsKey('nameGT') ? l$nameGT : const {},
      _$data.containsKey('nameGTE') ? l$nameGTE : const {},
      _$data.containsKey('nameLT') ? l$nameLT : const {},
      _$data.containsKey('nameLTE') ? l$nameLTE : const {},
      _$data.containsKey('nameContains') ? l$nameContains : const {},
      _$data.containsKey('nameHasPrefix') ? l$nameHasPrefix : const {},
      _$data.containsKey('nameHasSuffix') ? l$nameHasSuffix : const {},
      _$data.containsKey('nameEqualFold') ? l$nameEqualFold : const {},
      _$data.containsKey('nameContainsFold') ? l$nameContainsFold : const {},
      _$data.containsKey('hasPost') ? l$hasPost : const {},
      _$data.containsKey('hasPostWith')
          ? l$hasPostWith == null
              ? null
              : Object.hashAll(l$hasPostWith.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$CategoryWhereInput<TRes> {
  factory CopyWith$Input$CategoryWhereInput(Input$CategoryWhereInput instance,
          TRes Function(Input$CategoryWhereInput) then) =
      _CopyWithImpl$Input$CategoryWhereInput;

  factory CopyWith$Input$CategoryWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CategoryWhereInput;

  TRes call(
      {Input$CategoryWhereInput? not,
      List<Input$CategoryWhereInput>? and,
      List<Input$CategoryWhereInput>? or,
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
      bool? hasPost,
      List<Input$PostWhereInput>? hasPostWith});
  CopyWith$Input$CategoryWhereInput<TRes> get not;
  TRes and(
      Iterable<Input$CategoryWhereInput>? Function(
              Iterable<
                  CopyWith$Input$CategoryWhereInput<Input$CategoryWhereInput>>?)
          _fn);
  TRes or(
      Iterable<Input$CategoryWhereInput>? Function(
              Iterable<
                  CopyWith$Input$CategoryWhereInput<Input$CategoryWhereInput>>?)
          _fn);
  TRes hasPostWith(
      Iterable<Input$PostWhereInput>? Function(
              Iterable<CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$CategoryWhereInput<TRes>
    implements CopyWith$Input$CategoryWhereInput<TRes> {
  _CopyWithImpl$Input$CategoryWhereInput(this._instance, this._then);

  final Input$CategoryWhereInput _instance;

  final TRes Function(Input$CategoryWhereInput) _then;

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
          Object? hasPost = _undefined,
          Object? hasPostWith = _undefined}) =>
      _then(Input$CategoryWhereInput._({
        ..._instance._$data,
        if (not != _undefined) 'not': (not as Input$CategoryWhereInput?),
        if (and != _undefined) 'and': (and as List<Input$CategoryWhereInput>?),
        if (or != _undefined) 'or': (or as List<Input$CategoryWhereInput>?),
        if (id != _undefined) 'id': (id as String?),
        if (idNEQ != _undefined) 'idNEQ': (idNEQ as String?),
        if (idIn != _undefined) 'idIn': (idIn as List<String>?),
        if (idNotIn != _undefined) 'idNotIn': (idNotIn as List<String>?),
        if (idGT != _undefined) 'idGT': (idGT as String?),
        if (idGTE != _undefined) 'idGTE': (idGTE as String?),
        if (idLT != _undefined) 'idLT': (idLT as String?),
        if (idLTE != _undefined) 'idLTE': (idLTE as String?),
        if (name != _undefined) 'name': (name as String?),
        if (nameNEQ != _undefined) 'nameNEQ': (nameNEQ as String?),
        if (nameIn != _undefined) 'nameIn': (nameIn as List<String>?),
        if (nameNotIn != _undefined) 'nameNotIn': (nameNotIn as List<String>?),
        if (nameGT != _undefined) 'nameGT': (nameGT as String?),
        if (nameGTE != _undefined) 'nameGTE': (nameGTE as String?),
        if (nameLT != _undefined) 'nameLT': (nameLT as String?),
        if (nameLTE != _undefined) 'nameLTE': (nameLTE as String?),
        if (nameContains != _undefined)
          'nameContains': (nameContains as String?),
        if (nameHasPrefix != _undefined)
          'nameHasPrefix': (nameHasPrefix as String?),
        if (nameHasSuffix != _undefined)
          'nameHasSuffix': (nameHasSuffix as String?),
        if (nameEqualFold != _undefined)
          'nameEqualFold': (nameEqualFold as String?),
        if (nameContainsFold != _undefined)
          'nameContainsFold': (nameContainsFold as String?),
        if (hasPost != _undefined) 'hasPost': (hasPost as bool?),
        if (hasPostWith != _undefined)
          'hasPostWith': (hasPostWith as List<Input$PostWhereInput>?),
      }));
  CopyWith$Input$CategoryWhereInput<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$CategoryWhereInput.stub(_then(_instance))
        : CopyWith$Input$CategoryWhereInput(local$not, (e) => call(not: e));
  }

  TRes and(
          Iterable<Input$CategoryWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$CategoryWhereInput<
                          Input$CategoryWhereInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
                  ?.map((e) => CopyWith$Input$CategoryWhereInput(e, (i) => i)))
              ?.toList());
  TRes or(
          Iterable<Input$CategoryWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$CategoryWhereInput<
                          Input$CategoryWhereInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
                  ?.map((e) => CopyWith$Input$CategoryWhereInput(e, (i) => i)))
              ?.toList());
  TRes hasPostWith(
          Iterable<Input$PostWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
              _fn) =>
      call(
          hasPostWith: _fn(_instance.hasPostWith
                  ?.map((e) => CopyWith$Input$PostWhereInput(e, (i) => i)))
              ?.toList());
}

class _CopyWithStubImpl$Input$CategoryWhereInput<TRes>
    implements CopyWith$Input$CategoryWhereInput<TRes> {
  _CopyWithStubImpl$Input$CategoryWhereInput(this._res);

  TRes _res;

  call(
          {Input$CategoryWhereInput? not,
          List<Input$CategoryWhereInput>? and,
          List<Input$CategoryWhereInput>? or,
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
          bool? hasPost,
          List<Input$PostWhereInput>? hasPostWith}) =>
      _res;
  CopyWith$Input$CategoryWhereInput<TRes> get not =>
      CopyWith$Input$CategoryWhereInput.stub(_res);
  and(_fn) => _res;
  or(_fn) => _res;
  hasPostWith(_fn) => _res;
}

class Input$CreateHashtagInput {
  factory Input$CreateHashtagInput(
          {required String title, List<String>? postIDs}) =>
      Input$CreateHashtagInput._({
        r'title': title,
        if (postIDs != null) r'postIDs': postIDs,
      });

  Input$CreateHashtagInput._(this._$data);

  factory Input$CreateHashtagInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('postIDs')) {
      final l$postIDs = data['postIDs'];
      result$data['postIDs'] =
          (l$postIDs as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$CreateHashtagInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);
  List<String>? get postIDs => (_$data['postIDs'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('postIDs')) {
      final l$postIDs = postIDs;
      result$data['postIDs'] = l$postIDs?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateHashtagInput<Input$CreateHashtagInput> get copyWith =>
      CopyWith$Input$CreateHashtagInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateHashtagInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$postIDs = postIDs;
    final lOther$postIDs = other.postIDs;
    if (_$data.containsKey('postIDs') != other._$data.containsKey('postIDs')) {
      return false;
    }
    if (l$postIDs != null && lOther$postIDs != null) {
      if (l$postIDs.length != lOther$postIDs.length) {
        return false;
      }
      for (int i = 0; i < l$postIDs.length; i++) {
        final l$postIDs$entry = l$postIDs[i];
        final lOther$postIDs$entry = lOther$postIDs[i];
        if (l$postIDs$entry != lOther$postIDs$entry) {
          return false;
        }
      }
    } else if (l$postIDs != lOther$postIDs) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$postIDs = postIDs;
    return Object.hashAll([
      l$title,
      _$data.containsKey('postIDs')
          ? l$postIDs == null
              ? null
              : Object.hashAll(l$postIDs.map((v) => v))
          : const {}
    ]);
  }
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
      _then(Input$CreateHashtagInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (postIDs != _undefined) 'postIDs': (postIDs as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$CreateHashtagInput<TRes>
    implements CopyWith$Input$CreateHashtagInput<TRes> {
  _CopyWithStubImpl$Input$CreateHashtagInput(this._res);

  TRes _res;

  call({String? title, List<String>? postIDs}) => _res;
}

class Input$CreatePostInput {
  factory Input$CreatePostInput(
          {String? createTime,
          String? updateTime,
          required String title,
          required String content,
          required Enum$PostPostType type,
          required bool spoiled,
          String? thumbnail,
          required String ownerID,
          List<String>? hashtagIDs,
          required String workID,
          required String categoryID,
          List<String>? likedUserIDs,
          List<String>? bookmarkedUserIDs}) =>
      Input$CreatePostInput._({
        if (createTime != null) r'createTime': createTime,
        if (updateTime != null) r'updateTime': updateTime,
        r'title': title,
        r'content': content,
        r'type': type,
        r'spoiled': spoiled,
        if (thumbnail != null) r'thumbnail': thumbnail,
        r'ownerID': ownerID,
        if (hashtagIDs != null) r'hashtagIDs': hashtagIDs,
        r'workID': workID,
        r'categoryID': categoryID,
        if (likedUserIDs != null) r'likedUserIDs': likedUserIDs,
        if (bookmarkedUserIDs != null) r'bookmarkedUserIDs': bookmarkedUserIDs,
      });

  Input$CreatePostInput._(this._$data);

  factory Input$CreatePostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createTime')) {
      final l$createTime = data['createTime'];
      result$data['createTime'] = (l$createTime as String?);
    }
    if (data.containsKey('updateTime')) {
      final l$updateTime = data['updateTime'];
      result$data['updateTime'] = (l$updateTime as String?);
    }
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$PostPostType((l$type as String));
    final l$spoiled = data['spoiled'];
    result$data['spoiled'] = (l$spoiled as bool);
    if (data.containsKey('thumbnail')) {
      final l$thumbnail = data['thumbnail'];
      result$data['thumbnail'] = (l$thumbnail as String?);
    }
    final l$ownerID = data['ownerID'];
    result$data['ownerID'] = (l$ownerID as String);
    if (data.containsKey('hashtagIDs')) {
      final l$hashtagIDs = data['hashtagIDs'];
      result$data['hashtagIDs'] =
          (l$hashtagIDs as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    final l$workID = data['workID'];
    result$data['workID'] = (l$workID as String);
    final l$categoryID = data['categoryID'];
    result$data['categoryID'] = (l$categoryID as String);
    if (data.containsKey('likedUserIDs')) {
      final l$likedUserIDs = data['likedUserIDs'];
      result$data['likedUserIDs'] = (l$likedUserIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('bookmarkedUserIDs')) {
      final l$bookmarkedUserIDs = data['bookmarkedUserIDs'];
      result$data['bookmarkedUserIDs'] = (l$bookmarkedUserIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input$CreatePostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get createTime => (_$data['createTime'] as String?);
  String? get updateTime => (_$data['updateTime'] as String?);
  String get title => (_$data['title'] as String);
  String get content => (_$data['content'] as String);
  Enum$PostPostType get type => (_$data['type'] as Enum$PostPostType);
  bool get spoiled => (_$data['spoiled'] as bool);
  String? get thumbnail => (_$data['thumbnail'] as String?);
  String get ownerID => (_$data['ownerID'] as String);
  List<String>? get hashtagIDs => (_$data['hashtagIDs'] as List<String>?);
  String get workID => (_$data['workID'] as String);
  String get categoryID => (_$data['categoryID'] as String);
  List<String>? get likedUserIDs => (_$data['likedUserIDs'] as List<String>?);
  List<String>? get bookmarkedUserIDs =>
      (_$data['bookmarkedUserIDs'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createTime')) {
      final l$createTime = createTime;
      result$data['createTime'] = l$createTime;
    }
    if (_$data.containsKey('updateTime')) {
      final l$updateTime = updateTime;
      result$data['updateTime'] = l$updateTime;
    }
    final l$title = title;
    result$data['title'] = l$title;
    final l$content = content;
    result$data['content'] = l$content;
    final l$type = type;
    result$data['type'] = toJson$Enum$PostPostType(l$type);
    final l$spoiled = spoiled;
    result$data['spoiled'] = l$spoiled;
    if (_$data.containsKey('thumbnail')) {
      final l$thumbnail = thumbnail;
      result$data['thumbnail'] = l$thumbnail;
    }
    final l$ownerID = ownerID;
    result$data['ownerID'] = l$ownerID;
    if (_$data.containsKey('hashtagIDs')) {
      final l$hashtagIDs = hashtagIDs;
      result$data['hashtagIDs'] = l$hashtagIDs?.map((e) => e).toList();
    }
    final l$workID = workID;
    result$data['workID'] = l$workID;
    final l$categoryID = categoryID;
    result$data['categoryID'] = l$categoryID;
    if (_$data.containsKey('likedUserIDs')) {
      final l$likedUserIDs = likedUserIDs;
      result$data['likedUserIDs'] = l$likedUserIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('bookmarkedUserIDs')) {
      final l$bookmarkedUserIDs = bookmarkedUserIDs;
      result$data['bookmarkedUserIDs'] =
          l$bookmarkedUserIDs?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreatePostInput<Input$CreatePostInput> get copyWith =>
      CopyWith$Input$CreatePostInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreatePostInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTime = createTime;
    final lOther$createTime = other.createTime;
    if (_$data.containsKey('createTime') !=
        other._$data.containsKey('createTime')) {
      return false;
    }
    if (l$createTime != lOther$createTime) {
      return false;
    }
    final l$updateTime = updateTime;
    final lOther$updateTime = other.updateTime;
    if (_$data.containsKey('updateTime') !=
        other._$data.containsKey('updateTime')) {
      return false;
    }
    if (l$updateTime != lOther$updateTime) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$spoiled = spoiled;
    final lOther$spoiled = other.spoiled;
    if (l$spoiled != lOther$spoiled) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (_$data.containsKey('thumbnail') !=
        other._$data.containsKey('thumbnail')) {
      return false;
    }
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$ownerID = ownerID;
    final lOther$ownerID = other.ownerID;
    if (l$ownerID != lOther$ownerID) {
      return false;
    }
    final l$hashtagIDs = hashtagIDs;
    final lOther$hashtagIDs = other.hashtagIDs;
    if (_$data.containsKey('hashtagIDs') !=
        other._$data.containsKey('hashtagIDs')) {
      return false;
    }
    if (l$hashtagIDs != null && lOther$hashtagIDs != null) {
      if (l$hashtagIDs.length != lOther$hashtagIDs.length) {
        return false;
      }
      for (int i = 0; i < l$hashtagIDs.length; i++) {
        final l$hashtagIDs$entry = l$hashtagIDs[i];
        final lOther$hashtagIDs$entry = lOther$hashtagIDs[i];
        if (l$hashtagIDs$entry != lOther$hashtagIDs$entry) {
          return false;
        }
      }
    } else if (l$hashtagIDs != lOther$hashtagIDs) {
      return false;
    }
    final l$workID = workID;
    final lOther$workID = other.workID;
    if (l$workID != lOther$workID) {
      return false;
    }
    final l$categoryID = categoryID;
    final lOther$categoryID = other.categoryID;
    if (l$categoryID != lOther$categoryID) {
      return false;
    }
    final l$likedUserIDs = likedUserIDs;
    final lOther$likedUserIDs = other.likedUserIDs;
    if (_$data.containsKey('likedUserIDs') !=
        other._$data.containsKey('likedUserIDs')) {
      return false;
    }
    if (l$likedUserIDs != null && lOther$likedUserIDs != null) {
      if (l$likedUserIDs.length != lOther$likedUserIDs.length) {
        return false;
      }
      for (int i = 0; i < l$likedUserIDs.length; i++) {
        final l$likedUserIDs$entry = l$likedUserIDs[i];
        final lOther$likedUserIDs$entry = lOther$likedUserIDs[i];
        if (l$likedUserIDs$entry != lOther$likedUserIDs$entry) {
          return false;
        }
      }
    } else if (l$likedUserIDs != lOther$likedUserIDs) {
      return false;
    }
    final l$bookmarkedUserIDs = bookmarkedUserIDs;
    final lOther$bookmarkedUserIDs = other.bookmarkedUserIDs;
    if (_$data.containsKey('bookmarkedUserIDs') !=
        other._$data.containsKey('bookmarkedUserIDs')) {
      return false;
    }
    if (l$bookmarkedUserIDs != null && lOther$bookmarkedUserIDs != null) {
      if (l$bookmarkedUserIDs.length != lOther$bookmarkedUserIDs.length) {
        return false;
      }
      for (int i = 0; i < l$bookmarkedUserIDs.length; i++) {
        final l$bookmarkedUserIDs$entry = l$bookmarkedUserIDs[i];
        final lOther$bookmarkedUserIDs$entry = lOther$bookmarkedUserIDs[i];
        if (l$bookmarkedUserIDs$entry != lOther$bookmarkedUserIDs$entry) {
          return false;
        }
      }
    } else if (l$bookmarkedUserIDs != lOther$bookmarkedUserIDs) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createTime = createTime;
    final l$updateTime = updateTime;
    final l$title = title;
    final l$content = content;
    final l$type = type;
    final l$spoiled = spoiled;
    final l$thumbnail = thumbnail;
    final l$ownerID = ownerID;
    final l$hashtagIDs = hashtagIDs;
    final l$workID = workID;
    final l$categoryID = categoryID;
    final l$likedUserIDs = likedUserIDs;
    final l$bookmarkedUserIDs = bookmarkedUserIDs;
    return Object.hashAll([
      _$data.containsKey('createTime') ? l$createTime : const {},
      _$data.containsKey('updateTime') ? l$updateTime : const {},
      l$title,
      l$content,
      l$type,
      l$spoiled,
      _$data.containsKey('thumbnail') ? l$thumbnail : const {},
      l$ownerID,
      _$data.containsKey('hashtagIDs')
          ? l$hashtagIDs == null
              ? null
              : Object.hashAll(l$hashtagIDs.map((v) => v))
          : const {},
      l$workID,
      l$categoryID,
      _$data.containsKey('likedUserIDs')
          ? l$likedUserIDs == null
              ? null
              : Object.hashAll(l$likedUserIDs.map((v) => v))
          : const {},
      _$data.containsKey('bookmarkedUserIDs')
          ? l$bookmarkedUserIDs == null
              ? null
              : Object.hashAll(l$bookmarkedUserIDs.map((v) => v))
          : const {}
    ]);
  }
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
      String? thumbnail,
      String? ownerID,
      List<String>? hashtagIDs,
      String? workID,
      String? categoryID,
      List<String>? likedUserIDs,
      List<String>? bookmarkedUserIDs});
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
          Object? thumbnail = _undefined,
          Object? ownerID = _undefined,
          Object? hashtagIDs = _undefined,
          Object? workID = _undefined,
          Object? categoryID = _undefined,
          Object? likedUserIDs = _undefined,
          Object? bookmarkedUserIDs = _undefined}) =>
      _then(Input$CreatePostInput._({
        ..._instance._$data,
        if (createTime != _undefined) 'createTime': (createTime as String?),
        if (updateTime != _undefined) 'updateTime': (updateTime as String?),
        if (title != _undefined && title != null) 'title': (title as String),
        if (content != _undefined && content != null)
          'content': (content as String),
        if (type != _undefined && type != null)
          'type': (type as Enum$PostPostType),
        if (spoiled != _undefined && spoiled != null)
          'spoiled': (spoiled as bool),
        if (thumbnail != _undefined) 'thumbnail': (thumbnail as String?),
        if (ownerID != _undefined && ownerID != null)
          'ownerID': (ownerID as String),
        if (hashtagIDs != _undefined)
          'hashtagIDs': (hashtagIDs as List<String>?),
        if (workID != _undefined && workID != null)
          'workID': (workID as String),
        if (categoryID != _undefined && categoryID != null)
          'categoryID': (categoryID as String),
        if (likedUserIDs != _undefined)
          'likedUserIDs': (likedUserIDs as List<String>?),
        if (bookmarkedUserIDs != _undefined)
          'bookmarkedUserIDs': (bookmarkedUserIDs as List<String>?),
      }));
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
          String? thumbnail,
          String? ownerID,
          List<String>? hashtagIDs,
          String? workID,
          String? categoryID,
          List<String>? likedUserIDs,
          List<String>? bookmarkedUserIDs}) =>
      _res;
}

class Input$CreateUserInput {
  factory Input$CreateUserInput(
          {required String name,
          String? username,
          String? profile,
          String? avatarURL,
          List<String>? postIDs,
          List<String>? likedPostIDs,
          List<String>? bookmarkedPostIDs}) =>
      Input$CreateUserInput._({
        r'name': name,
        if (username != null) r'username': username,
        if (profile != null) r'profile': profile,
        if (avatarURL != null) r'avatarURL': avatarURL,
        if (postIDs != null) r'postIDs': postIDs,
        if (likedPostIDs != null) r'likedPostIDs': likedPostIDs,
        if (bookmarkedPostIDs != null) r'bookmarkedPostIDs': bookmarkedPostIDs,
      });

  Input$CreateUserInput._(this._$data);

  factory Input$CreateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('profile')) {
      final l$profile = data['profile'];
      result$data['profile'] = (l$profile as String?);
    }
    if (data.containsKey('avatarURL')) {
      final l$avatarURL = data['avatarURL'];
      result$data['avatarURL'] = (l$avatarURL as String?);
    }
    if (data.containsKey('postIDs')) {
      final l$postIDs = data['postIDs'];
      result$data['postIDs'] =
          (l$postIDs as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('likedPostIDs')) {
      final l$likedPostIDs = data['likedPostIDs'];
      result$data['likedPostIDs'] = (l$likedPostIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('bookmarkedPostIDs')) {
      final l$bookmarkedPostIDs = data['bookmarkedPostIDs'];
      result$data['bookmarkedPostIDs'] = (l$bookmarkedPostIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input$CreateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  String? get username => (_$data['username'] as String?);
  String? get profile => (_$data['profile'] as String?);
  String? get avatarURL => (_$data['avatarURL'] as String?);
  List<String>? get postIDs => (_$data['postIDs'] as List<String>?);
  List<String>? get likedPostIDs => (_$data['likedPostIDs'] as List<String>?);
  List<String>? get bookmarkedPostIDs =>
      (_$data['bookmarkedPostIDs'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('profile')) {
      final l$profile = profile;
      result$data['profile'] = l$profile;
    }
    if (_$data.containsKey('avatarURL')) {
      final l$avatarURL = avatarURL;
      result$data['avatarURL'] = l$avatarURL;
    }
    if (_$data.containsKey('postIDs')) {
      final l$postIDs = postIDs;
      result$data['postIDs'] = l$postIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('likedPostIDs')) {
      final l$likedPostIDs = likedPostIDs;
      result$data['likedPostIDs'] = l$likedPostIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('bookmarkedPostIDs')) {
      final l$bookmarkedPostIDs = bookmarkedPostIDs;
      result$data['bookmarkedPostIDs'] =
          l$bookmarkedPostIDs?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateUserInput<Input$CreateUserInput> get copyWith =>
      CopyWith$Input$CreateUserInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateUserInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (_$data.containsKey('profile') != other._$data.containsKey('profile')) {
      return false;
    }
    if (l$profile != lOther$profile) {
      return false;
    }
    final l$avatarURL = avatarURL;
    final lOther$avatarURL = other.avatarURL;
    if (_$data.containsKey('avatarURL') !=
        other._$data.containsKey('avatarURL')) {
      return false;
    }
    if (l$avatarURL != lOther$avatarURL) {
      return false;
    }
    final l$postIDs = postIDs;
    final lOther$postIDs = other.postIDs;
    if (_$data.containsKey('postIDs') != other._$data.containsKey('postIDs')) {
      return false;
    }
    if (l$postIDs != null && lOther$postIDs != null) {
      if (l$postIDs.length != lOther$postIDs.length) {
        return false;
      }
      for (int i = 0; i < l$postIDs.length; i++) {
        final l$postIDs$entry = l$postIDs[i];
        final lOther$postIDs$entry = lOther$postIDs[i];
        if (l$postIDs$entry != lOther$postIDs$entry) {
          return false;
        }
      }
    } else if (l$postIDs != lOther$postIDs) {
      return false;
    }
    final l$likedPostIDs = likedPostIDs;
    final lOther$likedPostIDs = other.likedPostIDs;
    if (_$data.containsKey('likedPostIDs') !=
        other._$data.containsKey('likedPostIDs')) {
      return false;
    }
    if (l$likedPostIDs != null && lOther$likedPostIDs != null) {
      if (l$likedPostIDs.length != lOther$likedPostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$likedPostIDs.length; i++) {
        final l$likedPostIDs$entry = l$likedPostIDs[i];
        final lOther$likedPostIDs$entry = lOther$likedPostIDs[i];
        if (l$likedPostIDs$entry != lOther$likedPostIDs$entry) {
          return false;
        }
      }
    } else if (l$likedPostIDs != lOther$likedPostIDs) {
      return false;
    }
    final l$bookmarkedPostIDs = bookmarkedPostIDs;
    final lOther$bookmarkedPostIDs = other.bookmarkedPostIDs;
    if (_$data.containsKey('bookmarkedPostIDs') !=
        other._$data.containsKey('bookmarkedPostIDs')) {
      return false;
    }
    if (l$bookmarkedPostIDs != null && lOther$bookmarkedPostIDs != null) {
      if (l$bookmarkedPostIDs.length != lOther$bookmarkedPostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$bookmarkedPostIDs.length; i++) {
        final l$bookmarkedPostIDs$entry = l$bookmarkedPostIDs[i];
        final lOther$bookmarkedPostIDs$entry = lOther$bookmarkedPostIDs[i];
        if (l$bookmarkedPostIDs$entry != lOther$bookmarkedPostIDs$entry) {
          return false;
        }
      }
    } else if (l$bookmarkedPostIDs != lOther$bookmarkedPostIDs) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$username = username;
    final l$profile = profile;
    final l$avatarURL = avatarURL;
    final l$postIDs = postIDs;
    final l$likedPostIDs = likedPostIDs;
    final l$bookmarkedPostIDs = bookmarkedPostIDs;
    return Object.hashAll([
      l$name,
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('profile') ? l$profile : const {},
      _$data.containsKey('avatarURL') ? l$avatarURL : const {},
      _$data.containsKey('postIDs')
          ? l$postIDs == null
              ? null
              : Object.hashAll(l$postIDs.map((v) => v))
          : const {},
      _$data.containsKey('likedPostIDs')
          ? l$likedPostIDs == null
              ? null
              : Object.hashAll(l$likedPostIDs.map((v) => v))
          : const {},
      _$data.containsKey('bookmarkedPostIDs')
          ? l$bookmarkedPostIDs == null
              ? null
              : Object.hashAll(l$bookmarkedPostIDs.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$CreateUserInput<TRes> {
  factory CopyWith$Input$CreateUserInput(Input$CreateUserInput instance,
          TRes Function(Input$CreateUserInput) then) =
      _CopyWithImpl$Input$CreateUserInput;

  factory CopyWith$Input$CreateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUserInput;

  TRes call(
      {String? name,
      String? username,
      String? profile,
      String? avatarURL,
      List<String>? postIDs,
      List<String>? likedPostIDs,
      List<String>? bookmarkedPostIDs});
}

class _CopyWithImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithImpl$Input$CreateUserInput(this._instance, this._then);

  final Input$CreateUserInput _instance;

  final TRes Function(Input$CreateUserInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? username = _undefined,
          Object? profile = _undefined,
          Object? avatarURL = _undefined,
          Object? postIDs = _undefined,
          Object? likedPostIDs = _undefined,
          Object? bookmarkedPostIDs = _undefined}) =>
      _then(Input$CreateUserInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (username != _undefined) 'username': (username as String?),
        if (profile != _undefined) 'profile': (profile as String?),
        if (avatarURL != _undefined) 'avatarURL': (avatarURL as String?),
        if (postIDs != _undefined) 'postIDs': (postIDs as List<String>?),
        if (likedPostIDs != _undefined)
          'likedPostIDs': (likedPostIDs as List<String>?),
        if (bookmarkedPostIDs != _undefined)
          'bookmarkedPostIDs': (bookmarkedPostIDs as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithStubImpl$Input$CreateUserInput(this._res);

  TRes _res;

  call(
          {String? name,
          String? username,
          String? profile,
          String? avatarURL,
          List<String>? postIDs,
          List<String>? likedPostIDs,
          List<String>? bookmarkedPostIDs}) =>
      _res;
}

class Input$CreateWorkInput {
  factory Input$CreateWorkInput(
          {required String title, String? thumbnail, List<String>? postIDs}) =>
      Input$CreateWorkInput._({
        r'title': title,
        if (thumbnail != null) r'thumbnail': thumbnail,
        if (postIDs != null) r'postIDs': postIDs,
      });

  Input$CreateWorkInput._(this._$data);

  factory Input$CreateWorkInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('thumbnail')) {
      final l$thumbnail = data['thumbnail'];
      result$data['thumbnail'] = (l$thumbnail as String?);
    }
    if (data.containsKey('postIDs')) {
      final l$postIDs = data['postIDs'];
      result$data['postIDs'] =
          (l$postIDs as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$CreateWorkInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);
  String? get thumbnail => (_$data['thumbnail'] as String?);
  List<String>? get postIDs => (_$data['postIDs'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('thumbnail')) {
      final l$thumbnail = thumbnail;
      result$data['thumbnail'] = l$thumbnail;
    }
    if (_$data.containsKey('postIDs')) {
      final l$postIDs = postIDs;
      result$data['postIDs'] = l$postIDs?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateWorkInput<Input$CreateWorkInput> get copyWith =>
      CopyWith$Input$CreateWorkInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateWorkInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (_$data.containsKey('thumbnail') !=
        other._$data.containsKey('thumbnail')) {
      return false;
    }
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$postIDs = postIDs;
    final lOther$postIDs = other.postIDs;
    if (_$data.containsKey('postIDs') != other._$data.containsKey('postIDs')) {
      return false;
    }
    if (l$postIDs != null && lOther$postIDs != null) {
      if (l$postIDs.length != lOther$postIDs.length) {
        return false;
      }
      for (int i = 0; i < l$postIDs.length; i++) {
        final l$postIDs$entry = l$postIDs[i];
        final lOther$postIDs$entry = lOther$postIDs[i];
        if (l$postIDs$entry != lOther$postIDs$entry) {
          return false;
        }
      }
    } else if (l$postIDs != lOther$postIDs) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$thumbnail = thumbnail;
    final l$postIDs = postIDs;
    return Object.hashAll([
      l$title,
      _$data.containsKey('thumbnail') ? l$thumbnail : const {},
      _$data.containsKey('postIDs')
          ? l$postIDs == null
              ? null
              : Object.hashAll(l$postIDs.map((v) => v))
          : const {}
    ]);
  }
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
      _then(Input$CreateWorkInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (thumbnail != _undefined) 'thumbnail': (thumbnail as String?),
        if (postIDs != _undefined) 'postIDs': (postIDs as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$CreateWorkInput<TRes>
    implements CopyWith$Input$CreateWorkInput<TRes> {
  _CopyWithStubImpl$Input$CreateWorkInput(this._res);

  TRes _res;

  call({String? title, String? thumbnail, List<String>? postIDs}) => _res;
}

class Input$HashtagWhereInput {
  factory Input$HashtagWhereInput(
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
      Input$HashtagWhereInput._({
        if (not != null) r'not': not,
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (idNEQ != null) r'idNEQ': idNEQ,
        if (idIn != null) r'idIn': idIn,
        if (idNotIn != null) r'idNotIn': idNotIn,
        if (idGT != null) r'idGT': idGT,
        if (idGTE != null) r'idGTE': idGTE,
        if (idLT != null) r'idLT': idLT,
        if (idLTE != null) r'idLTE': idLTE,
        if (title != null) r'title': title,
        if (titleNEQ != null) r'titleNEQ': titleNEQ,
        if (titleIn != null) r'titleIn': titleIn,
        if (titleNotIn != null) r'titleNotIn': titleNotIn,
        if (titleGT != null) r'titleGT': titleGT,
        if (titleGTE != null) r'titleGTE': titleGTE,
        if (titleLT != null) r'titleLT': titleLT,
        if (titleLTE != null) r'titleLTE': titleLTE,
        if (titleContains != null) r'titleContains': titleContains,
        if (titleHasPrefix != null) r'titleHasPrefix': titleHasPrefix,
        if (titleHasSuffix != null) r'titleHasSuffix': titleHasSuffix,
        if (titleEqualFold != null) r'titleEqualFold': titleEqualFold,
        if (titleContainsFold != null) r'titleContainsFold': titleContainsFold,
        if (hasPosts != null) r'hasPosts': hasPosts,
        if (hasPostsWith != null) r'hasPostsWith': hasPostsWith,
      });

  Input$HashtagWhereInput._(this._$data);

  factory Input$HashtagWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$HashtagWhereInput.fromJson((l$not as Map<String, dynamic>));
    }
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$HashtagWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$HashtagWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('idNEQ')) {
      final l$idNEQ = data['idNEQ'];
      result$data['idNEQ'] = (l$idNEQ as String?);
    }
    if (data.containsKey('idIn')) {
      final l$idIn = data['idIn'];
      result$data['idIn'] =
          (l$idIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idNotIn')) {
      final l$idNotIn = data['idNotIn'];
      result$data['idNotIn'] =
          (l$idNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idGT')) {
      final l$idGT = data['idGT'];
      result$data['idGT'] = (l$idGT as String?);
    }
    if (data.containsKey('idGTE')) {
      final l$idGTE = data['idGTE'];
      result$data['idGTE'] = (l$idGTE as String?);
    }
    if (data.containsKey('idLT')) {
      final l$idLT = data['idLT'];
      result$data['idLT'] = (l$idLT as String?);
    }
    if (data.containsKey('idLTE')) {
      final l$idLTE = data['idLTE'];
      result$data['idLTE'] = (l$idLTE as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('titleNEQ')) {
      final l$titleNEQ = data['titleNEQ'];
      result$data['titleNEQ'] = (l$titleNEQ as String?);
    }
    if (data.containsKey('titleIn')) {
      final l$titleIn = data['titleIn'];
      result$data['titleIn'] =
          (l$titleIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('titleNotIn')) {
      final l$titleNotIn = data['titleNotIn'];
      result$data['titleNotIn'] =
          (l$titleNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('titleGT')) {
      final l$titleGT = data['titleGT'];
      result$data['titleGT'] = (l$titleGT as String?);
    }
    if (data.containsKey('titleGTE')) {
      final l$titleGTE = data['titleGTE'];
      result$data['titleGTE'] = (l$titleGTE as String?);
    }
    if (data.containsKey('titleLT')) {
      final l$titleLT = data['titleLT'];
      result$data['titleLT'] = (l$titleLT as String?);
    }
    if (data.containsKey('titleLTE')) {
      final l$titleLTE = data['titleLTE'];
      result$data['titleLTE'] = (l$titleLTE as String?);
    }
    if (data.containsKey('titleContains')) {
      final l$titleContains = data['titleContains'];
      result$data['titleContains'] = (l$titleContains as String?);
    }
    if (data.containsKey('titleHasPrefix')) {
      final l$titleHasPrefix = data['titleHasPrefix'];
      result$data['titleHasPrefix'] = (l$titleHasPrefix as String?);
    }
    if (data.containsKey('titleHasSuffix')) {
      final l$titleHasSuffix = data['titleHasSuffix'];
      result$data['titleHasSuffix'] = (l$titleHasSuffix as String?);
    }
    if (data.containsKey('titleEqualFold')) {
      final l$titleEqualFold = data['titleEqualFold'];
      result$data['titleEqualFold'] = (l$titleEqualFold as String?);
    }
    if (data.containsKey('titleContainsFold')) {
      final l$titleContainsFold = data['titleContainsFold'];
      result$data['titleContainsFold'] = (l$titleContainsFold as String?);
    }
    if (data.containsKey('hasPosts')) {
      final l$hasPosts = data['hasPosts'];
      result$data['hasPosts'] = (l$hasPosts as bool?);
    }
    if (data.containsKey('hasPostsWith')) {
      final l$hasPostsWith = data['hasPostsWith'];
      result$data['hasPostsWith'] = (l$hasPostsWith as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$HashtagWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$HashtagWhereInput? get not =>
      (_$data['not'] as Input$HashtagWhereInput?);
  List<Input$HashtagWhereInput>? get and =>
      (_$data['and'] as List<Input$HashtagWhereInput>?);
  List<Input$HashtagWhereInput>? get or =>
      (_$data['or'] as List<Input$HashtagWhereInput>?);
  String? get id => (_$data['id'] as String?);
  String? get idNEQ => (_$data['idNEQ'] as String?);
  List<String>? get idIn => (_$data['idIn'] as List<String>?);
  List<String>? get idNotIn => (_$data['idNotIn'] as List<String>?);
  String? get idGT => (_$data['idGT'] as String?);
  String? get idGTE => (_$data['idGTE'] as String?);
  String? get idLT => (_$data['idLT'] as String?);
  String? get idLTE => (_$data['idLTE'] as String?);
  String? get title => (_$data['title'] as String?);
  String? get titleNEQ => (_$data['titleNEQ'] as String?);
  List<String>? get titleIn => (_$data['titleIn'] as List<String>?);
  List<String>? get titleNotIn => (_$data['titleNotIn'] as List<String>?);
  String? get titleGT => (_$data['titleGT'] as String?);
  String? get titleGTE => (_$data['titleGTE'] as String?);
  String? get titleLT => (_$data['titleLT'] as String?);
  String? get titleLTE => (_$data['titleLTE'] as String?);
  String? get titleContains => (_$data['titleContains'] as String?);
  String? get titleHasPrefix => (_$data['titleHasPrefix'] as String?);
  String? get titleHasSuffix => (_$data['titleHasSuffix'] as String?);
  String? get titleEqualFold => (_$data['titleEqualFold'] as String?);
  String? get titleContainsFold => (_$data['titleContainsFold'] as String?);
  bool? get hasPosts => (_$data['hasPosts'] as bool?);
  List<Input$PostWhereInput>? get hasPostsWith =>
      (_$data['hasPostsWith'] as List<Input$PostWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idNEQ')) {
      final l$idNEQ = idNEQ;
      result$data['idNEQ'] = l$idNEQ;
    }
    if (_$data.containsKey('idIn')) {
      final l$idIn = idIn;
      result$data['idIn'] = l$idIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idNotIn')) {
      final l$idNotIn = idNotIn;
      result$data['idNotIn'] = l$idNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idGT')) {
      final l$idGT = idGT;
      result$data['idGT'] = l$idGT;
    }
    if (_$data.containsKey('idGTE')) {
      final l$idGTE = idGTE;
      result$data['idGTE'] = l$idGTE;
    }
    if (_$data.containsKey('idLT')) {
      final l$idLT = idLT;
      result$data['idLT'] = l$idLT;
    }
    if (_$data.containsKey('idLTE')) {
      final l$idLTE = idLTE;
      result$data['idLTE'] = l$idLTE;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('titleNEQ')) {
      final l$titleNEQ = titleNEQ;
      result$data['titleNEQ'] = l$titleNEQ;
    }
    if (_$data.containsKey('titleIn')) {
      final l$titleIn = titleIn;
      result$data['titleIn'] = l$titleIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('titleNotIn')) {
      final l$titleNotIn = titleNotIn;
      result$data['titleNotIn'] = l$titleNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('titleGT')) {
      final l$titleGT = titleGT;
      result$data['titleGT'] = l$titleGT;
    }
    if (_$data.containsKey('titleGTE')) {
      final l$titleGTE = titleGTE;
      result$data['titleGTE'] = l$titleGTE;
    }
    if (_$data.containsKey('titleLT')) {
      final l$titleLT = titleLT;
      result$data['titleLT'] = l$titleLT;
    }
    if (_$data.containsKey('titleLTE')) {
      final l$titleLTE = titleLTE;
      result$data['titleLTE'] = l$titleLTE;
    }
    if (_$data.containsKey('titleContains')) {
      final l$titleContains = titleContains;
      result$data['titleContains'] = l$titleContains;
    }
    if (_$data.containsKey('titleHasPrefix')) {
      final l$titleHasPrefix = titleHasPrefix;
      result$data['titleHasPrefix'] = l$titleHasPrefix;
    }
    if (_$data.containsKey('titleHasSuffix')) {
      final l$titleHasSuffix = titleHasSuffix;
      result$data['titleHasSuffix'] = l$titleHasSuffix;
    }
    if (_$data.containsKey('titleEqualFold')) {
      final l$titleEqualFold = titleEqualFold;
      result$data['titleEqualFold'] = l$titleEqualFold;
    }
    if (_$data.containsKey('titleContainsFold')) {
      final l$titleContainsFold = titleContainsFold;
      result$data['titleContainsFold'] = l$titleContainsFold;
    }
    if (_$data.containsKey('hasPosts')) {
      final l$hasPosts = hasPosts;
      result$data['hasPosts'] = l$hasPosts;
    }
    if (_$data.containsKey('hasPostsWith')) {
      final l$hasPostsWith = hasPostsWith;
      result$data['hasPostsWith'] =
          l$hasPostsWith?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$HashtagWhereInput<Input$HashtagWhereInput> get copyWith =>
      CopyWith$Input$HashtagWhereInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$HashtagWhereInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idNEQ = idNEQ;
    final lOther$idNEQ = other.idNEQ;
    if (_$data.containsKey('idNEQ') != other._$data.containsKey('idNEQ')) {
      return false;
    }
    if (l$idNEQ != lOther$idNEQ) {
      return false;
    }
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (_$data.containsKey('idIn') != other._$data.containsKey('idIn')) {
      return false;
    }
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) {
        return false;
      }
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) {
          return false;
        }
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }
    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (_$data.containsKey('idNotIn') != other._$data.containsKey('idNotIn')) {
      return false;
    }
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) {
          return false;
        }
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }
    final l$idGT = idGT;
    final lOther$idGT = other.idGT;
    if (_$data.containsKey('idGT') != other._$data.containsKey('idGT')) {
      return false;
    }
    if (l$idGT != lOther$idGT) {
      return false;
    }
    final l$idGTE = idGTE;
    final lOther$idGTE = other.idGTE;
    if (_$data.containsKey('idGTE') != other._$data.containsKey('idGTE')) {
      return false;
    }
    if (l$idGTE != lOther$idGTE) {
      return false;
    }
    final l$idLT = idLT;
    final lOther$idLT = other.idLT;
    if (_$data.containsKey('idLT') != other._$data.containsKey('idLT')) {
      return false;
    }
    if (l$idLT != lOther$idLT) {
      return false;
    }
    final l$idLTE = idLTE;
    final lOther$idLTE = other.idLTE;
    if (_$data.containsKey('idLTE') != other._$data.containsKey('idLTE')) {
      return false;
    }
    if (l$idLTE != lOther$idLTE) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$titleNEQ = titleNEQ;
    final lOther$titleNEQ = other.titleNEQ;
    if (_$data.containsKey('titleNEQ') !=
        other._$data.containsKey('titleNEQ')) {
      return false;
    }
    if (l$titleNEQ != lOther$titleNEQ) {
      return false;
    }
    final l$titleIn = titleIn;
    final lOther$titleIn = other.titleIn;
    if (_$data.containsKey('titleIn') != other._$data.containsKey('titleIn')) {
      return false;
    }
    if (l$titleIn != null && lOther$titleIn != null) {
      if (l$titleIn.length != lOther$titleIn.length) {
        return false;
      }
      for (int i = 0; i < l$titleIn.length; i++) {
        final l$titleIn$entry = l$titleIn[i];
        final lOther$titleIn$entry = lOther$titleIn[i];
        if (l$titleIn$entry != lOther$titleIn$entry) {
          return false;
        }
      }
    } else if (l$titleIn != lOther$titleIn) {
      return false;
    }
    final l$titleNotIn = titleNotIn;
    final lOther$titleNotIn = other.titleNotIn;
    if (_$data.containsKey('titleNotIn') !=
        other._$data.containsKey('titleNotIn')) {
      return false;
    }
    if (l$titleNotIn != null && lOther$titleNotIn != null) {
      if (l$titleNotIn.length != lOther$titleNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$titleNotIn.length; i++) {
        final l$titleNotIn$entry = l$titleNotIn[i];
        final lOther$titleNotIn$entry = lOther$titleNotIn[i];
        if (l$titleNotIn$entry != lOther$titleNotIn$entry) {
          return false;
        }
      }
    } else if (l$titleNotIn != lOther$titleNotIn) {
      return false;
    }
    final l$titleGT = titleGT;
    final lOther$titleGT = other.titleGT;
    if (_$data.containsKey('titleGT') != other._$data.containsKey('titleGT')) {
      return false;
    }
    if (l$titleGT != lOther$titleGT) {
      return false;
    }
    final l$titleGTE = titleGTE;
    final lOther$titleGTE = other.titleGTE;
    if (_$data.containsKey('titleGTE') !=
        other._$data.containsKey('titleGTE')) {
      return false;
    }
    if (l$titleGTE != lOther$titleGTE) {
      return false;
    }
    final l$titleLT = titleLT;
    final lOther$titleLT = other.titleLT;
    if (_$data.containsKey('titleLT') != other._$data.containsKey('titleLT')) {
      return false;
    }
    if (l$titleLT != lOther$titleLT) {
      return false;
    }
    final l$titleLTE = titleLTE;
    final lOther$titleLTE = other.titleLTE;
    if (_$data.containsKey('titleLTE') !=
        other._$data.containsKey('titleLTE')) {
      return false;
    }
    if (l$titleLTE != lOther$titleLTE) {
      return false;
    }
    final l$titleContains = titleContains;
    final lOther$titleContains = other.titleContains;
    if (_$data.containsKey('titleContains') !=
        other._$data.containsKey('titleContains')) {
      return false;
    }
    if (l$titleContains != lOther$titleContains) {
      return false;
    }
    final l$titleHasPrefix = titleHasPrefix;
    final lOther$titleHasPrefix = other.titleHasPrefix;
    if (_$data.containsKey('titleHasPrefix') !=
        other._$data.containsKey('titleHasPrefix')) {
      return false;
    }
    if (l$titleHasPrefix != lOther$titleHasPrefix) {
      return false;
    }
    final l$titleHasSuffix = titleHasSuffix;
    final lOther$titleHasSuffix = other.titleHasSuffix;
    if (_$data.containsKey('titleHasSuffix') !=
        other._$data.containsKey('titleHasSuffix')) {
      return false;
    }
    if (l$titleHasSuffix != lOther$titleHasSuffix) {
      return false;
    }
    final l$titleEqualFold = titleEqualFold;
    final lOther$titleEqualFold = other.titleEqualFold;
    if (_$data.containsKey('titleEqualFold') !=
        other._$data.containsKey('titleEqualFold')) {
      return false;
    }
    if (l$titleEqualFold != lOther$titleEqualFold) {
      return false;
    }
    final l$titleContainsFold = titleContainsFold;
    final lOther$titleContainsFold = other.titleContainsFold;
    if (_$data.containsKey('titleContainsFold') !=
        other._$data.containsKey('titleContainsFold')) {
      return false;
    }
    if (l$titleContainsFold != lOther$titleContainsFold) {
      return false;
    }
    final l$hasPosts = hasPosts;
    final lOther$hasPosts = other.hasPosts;
    if (_$data.containsKey('hasPosts') !=
        other._$data.containsKey('hasPosts')) {
      return false;
    }
    if (l$hasPosts != lOther$hasPosts) {
      return false;
    }
    final l$hasPostsWith = hasPostsWith;
    final lOther$hasPostsWith = other.hasPostsWith;
    if (_$data.containsKey('hasPostsWith') !=
        other._$data.containsKey('hasPostsWith')) {
      return false;
    }
    if (l$hasPostsWith != null && lOther$hasPostsWith != null) {
      if (l$hasPostsWith.length != lOther$hasPostsWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasPostsWith.length; i++) {
        final l$hasPostsWith$entry = l$hasPostsWith[i];
        final lOther$hasPostsWith$entry = lOther$hasPostsWith[i];
        if (l$hasPostsWith$entry != lOther$hasPostsWith$entry) {
          return false;
        }
      }
    } else if (l$hasPostsWith != lOther$hasPostsWith) {
      return false;
    }
    return true;
  }

  @override
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
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idNEQ') ? l$idNEQ : const {},
      _$data.containsKey('idIn')
          ? l$idIn == null
              ? null
              : Object.hashAll(l$idIn.map((v) => v))
          : const {},
      _$data.containsKey('idNotIn')
          ? l$idNotIn == null
              ? null
              : Object.hashAll(l$idNotIn.map((v) => v))
          : const {},
      _$data.containsKey('idGT') ? l$idGT : const {},
      _$data.containsKey('idGTE') ? l$idGTE : const {},
      _$data.containsKey('idLT') ? l$idLT : const {},
      _$data.containsKey('idLTE') ? l$idLTE : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('titleNEQ') ? l$titleNEQ : const {},
      _$data.containsKey('titleIn')
          ? l$titleIn == null
              ? null
              : Object.hashAll(l$titleIn.map((v) => v))
          : const {},
      _$data.containsKey('titleNotIn')
          ? l$titleNotIn == null
              ? null
              : Object.hashAll(l$titleNotIn.map((v) => v))
          : const {},
      _$data.containsKey('titleGT') ? l$titleGT : const {},
      _$data.containsKey('titleGTE') ? l$titleGTE : const {},
      _$data.containsKey('titleLT') ? l$titleLT : const {},
      _$data.containsKey('titleLTE') ? l$titleLTE : const {},
      _$data.containsKey('titleContains') ? l$titleContains : const {},
      _$data.containsKey('titleHasPrefix') ? l$titleHasPrefix : const {},
      _$data.containsKey('titleHasSuffix') ? l$titleHasSuffix : const {},
      _$data.containsKey('titleEqualFold') ? l$titleEqualFold : const {},
      _$data.containsKey('titleContainsFold') ? l$titleContainsFold : const {},
      _$data.containsKey('hasPosts') ? l$hasPosts : const {},
      _$data.containsKey('hasPostsWith')
          ? l$hasPostsWith == null
              ? null
              : Object.hashAll(l$hasPostsWith.map((v) => v))
          : const {}
    ]);
  }
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
      _then(Input$HashtagWhereInput._({
        ..._instance._$data,
        if (not != _undefined) 'not': (not as Input$HashtagWhereInput?),
        if (and != _undefined) 'and': (and as List<Input$HashtagWhereInput>?),
        if (or != _undefined) 'or': (or as List<Input$HashtagWhereInput>?),
        if (id != _undefined) 'id': (id as String?),
        if (idNEQ != _undefined) 'idNEQ': (idNEQ as String?),
        if (idIn != _undefined) 'idIn': (idIn as List<String>?),
        if (idNotIn != _undefined) 'idNotIn': (idNotIn as List<String>?),
        if (idGT != _undefined) 'idGT': (idGT as String?),
        if (idGTE != _undefined) 'idGTE': (idGTE as String?),
        if (idLT != _undefined) 'idLT': (idLT as String?),
        if (idLTE != _undefined) 'idLTE': (idLTE as String?),
        if (title != _undefined) 'title': (title as String?),
        if (titleNEQ != _undefined) 'titleNEQ': (titleNEQ as String?),
        if (titleIn != _undefined) 'titleIn': (titleIn as List<String>?),
        if (titleNotIn != _undefined)
          'titleNotIn': (titleNotIn as List<String>?),
        if (titleGT != _undefined) 'titleGT': (titleGT as String?),
        if (titleGTE != _undefined) 'titleGTE': (titleGTE as String?),
        if (titleLT != _undefined) 'titleLT': (titleLT as String?),
        if (titleLTE != _undefined) 'titleLTE': (titleLTE as String?),
        if (titleContains != _undefined)
          'titleContains': (titleContains as String?),
        if (titleHasPrefix != _undefined)
          'titleHasPrefix': (titleHasPrefix as String?),
        if (titleHasSuffix != _undefined)
          'titleHasSuffix': (titleHasSuffix as String?),
        if (titleEqualFold != _undefined)
          'titleEqualFold': (titleEqualFold as String?),
        if (titleContainsFold != _undefined)
          'titleContainsFold': (titleContainsFold as String?),
        if (hasPosts != _undefined) 'hasPosts': (hasPosts as bool?),
        if (hasPostsWith != _undefined)
          'hasPostsWith': (hasPostsWith as List<Input$PostWhereInput>?),
      }));
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

class Input$PostOrder {
  factory Input$PostOrder(
          {required Enum$OrderDirection direction,
          required Enum$PostOrderField field}) =>
      Input$PostOrder._({
        r'direction': direction,
        r'field': field,
      });

  Input$PostOrder._(this._$data);

  factory Input$PostOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$OrderDirection((l$direction as String));
    final l$field = data['field'];
    result$data['field'] = fromJson$Enum$PostOrderField((l$field as String));
    return Input$PostOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderDirection get direction =>
      (_$data['direction'] as Enum$OrderDirection);
  Enum$PostOrderField get field => (_$data['field'] as Enum$PostOrderField);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$OrderDirection(l$direction);
    final l$field = field;
    result$data['field'] = toJson$Enum$PostOrderField(l$field);
    return result$data;
  }

  CopyWith$Input$PostOrder<Input$PostOrder> get copyWith =>
      CopyWith$Input$PostOrder(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PostOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$direction = direction;
    final l$field = field;
    return Object.hashAll([l$direction, l$field]);
  }
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
      _then(Input$PostOrder._({
        ..._instance._$data,
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$OrderDirection),
        if (field != _undefined && field != null)
          'field': (field as Enum$PostOrderField),
      }));
}

class _CopyWithStubImpl$Input$PostOrder<TRes>
    implements CopyWith$Input$PostOrder<TRes> {
  _CopyWithStubImpl$Input$PostOrder(this._res);

  TRes _res;

  call({Enum$OrderDirection? direction, Enum$PostOrderField? field}) => _res;
}

class Input$PostWhereInput {
  factory Input$PostWhereInput(
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
          bool? hasOwner,
          List<Input$UserWhereInput>? hasOwnerWith,
          bool? hasHashtags,
          List<Input$HashtagWhereInput>? hasHashtagsWith,
          bool? hasWork,
          List<Input$WorkWhereInput>? hasWorkWith,
          bool? hasCategory,
          List<Input$CategoryWhereInput>? hasCategoryWith,
          bool? hasLikedUsers,
          List<Input$UserWhereInput>? hasLikedUsersWith,
          bool? hasBookmarkedUsers,
          List<Input$UserWhereInput>? hasBookmarkedUsersWith}) =>
      Input$PostWhereInput._({
        if (not != null) r'not': not,
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (idNEQ != null) r'idNEQ': idNEQ,
        if (idIn != null) r'idIn': idIn,
        if (idNotIn != null) r'idNotIn': idNotIn,
        if (idGT != null) r'idGT': idGT,
        if (idGTE != null) r'idGTE': idGTE,
        if (idLT != null) r'idLT': idLT,
        if (idLTE != null) r'idLTE': idLTE,
        if (createTime != null) r'createTime': createTime,
        if (createTimeNEQ != null) r'createTimeNEQ': createTimeNEQ,
        if (createTimeIn != null) r'createTimeIn': createTimeIn,
        if (createTimeNotIn != null) r'createTimeNotIn': createTimeNotIn,
        if (createTimeGT != null) r'createTimeGT': createTimeGT,
        if (createTimeGTE != null) r'createTimeGTE': createTimeGTE,
        if (createTimeLT != null) r'createTimeLT': createTimeLT,
        if (createTimeLTE != null) r'createTimeLTE': createTimeLTE,
        if (updateTime != null) r'updateTime': updateTime,
        if (updateTimeNEQ != null) r'updateTimeNEQ': updateTimeNEQ,
        if (updateTimeIn != null) r'updateTimeIn': updateTimeIn,
        if (updateTimeNotIn != null) r'updateTimeNotIn': updateTimeNotIn,
        if (updateTimeGT != null) r'updateTimeGT': updateTimeGT,
        if (updateTimeGTE != null) r'updateTimeGTE': updateTimeGTE,
        if (updateTimeLT != null) r'updateTimeLT': updateTimeLT,
        if (updateTimeLTE != null) r'updateTimeLTE': updateTimeLTE,
        if (title != null) r'title': title,
        if (titleNEQ != null) r'titleNEQ': titleNEQ,
        if (titleIn != null) r'titleIn': titleIn,
        if (titleNotIn != null) r'titleNotIn': titleNotIn,
        if (titleGT != null) r'titleGT': titleGT,
        if (titleGTE != null) r'titleGTE': titleGTE,
        if (titleLT != null) r'titleLT': titleLT,
        if (titleLTE != null) r'titleLTE': titleLTE,
        if (titleContains != null) r'titleContains': titleContains,
        if (titleHasPrefix != null) r'titleHasPrefix': titleHasPrefix,
        if (titleHasSuffix != null) r'titleHasSuffix': titleHasSuffix,
        if (titleEqualFold != null) r'titleEqualFold': titleEqualFold,
        if (titleContainsFold != null) r'titleContainsFold': titleContainsFold,
        if (content != null) r'content': content,
        if (contentNEQ != null) r'contentNEQ': contentNEQ,
        if (contentIn != null) r'contentIn': contentIn,
        if (contentNotIn != null) r'contentNotIn': contentNotIn,
        if (contentGT != null) r'contentGT': contentGT,
        if (contentGTE != null) r'contentGTE': contentGTE,
        if (contentLT != null) r'contentLT': contentLT,
        if (contentLTE != null) r'contentLTE': contentLTE,
        if (contentContains != null) r'contentContains': contentContains,
        if (contentHasPrefix != null) r'contentHasPrefix': contentHasPrefix,
        if (contentHasSuffix != null) r'contentHasSuffix': contentHasSuffix,
        if (contentEqualFold != null) r'contentEqualFold': contentEqualFold,
        if (contentContainsFold != null)
          r'contentContainsFold': contentContainsFold,
        if (type != null) r'type': type,
        if (typeNEQ != null) r'typeNEQ': typeNEQ,
        if (typeIn != null) r'typeIn': typeIn,
        if (typeNotIn != null) r'typeNotIn': typeNotIn,
        if (spoiled != null) r'spoiled': spoiled,
        if (spoiledNEQ != null) r'spoiledNEQ': spoiledNEQ,
        if (thumbnail != null) r'thumbnail': thumbnail,
        if (thumbnailNEQ != null) r'thumbnailNEQ': thumbnailNEQ,
        if (thumbnailIn != null) r'thumbnailIn': thumbnailIn,
        if (thumbnailNotIn != null) r'thumbnailNotIn': thumbnailNotIn,
        if (thumbnailGT != null) r'thumbnailGT': thumbnailGT,
        if (thumbnailGTE != null) r'thumbnailGTE': thumbnailGTE,
        if (thumbnailLT != null) r'thumbnailLT': thumbnailLT,
        if (thumbnailLTE != null) r'thumbnailLTE': thumbnailLTE,
        if (thumbnailContains != null) r'thumbnailContains': thumbnailContains,
        if (thumbnailHasPrefix != null)
          r'thumbnailHasPrefix': thumbnailHasPrefix,
        if (thumbnailHasSuffix != null)
          r'thumbnailHasSuffix': thumbnailHasSuffix,
        if (thumbnailIsNil != null) r'thumbnailIsNil': thumbnailIsNil,
        if (thumbnailNotNil != null) r'thumbnailNotNil': thumbnailNotNil,
        if (thumbnailEqualFold != null)
          r'thumbnailEqualFold': thumbnailEqualFold,
        if (thumbnailContainsFold != null)
          r'thumbnailContainsFold': thumbnailContainsFold,
        if (hasOwner != null) r'hasOwner': hasOwner,
        if (hasOwnerWith != null) r'hasOwnerWith': hasOwnerWith,
        if (hasHashtags != null) r'hasHashtags': hasHashtags,
        if (hasHashtagsWith != null) r'hasHashtagsWith': hasHashtagsWith,
        if (hasWork != null) r'hasWork': hasWork,
        if (hasWorkWith != null) r'hasWorkWith': hasWorkWith,
        if (hasCategory != null) r'hasCategory': hasCategory,
        if (hasCategoryWith != null) r'hasCategoryWith': hasCategoryWith,
        if (hasLikedUsers != null) r'hasLikedUsers': hasLikedUsers,
        if (hasLikedUsersWith != null) r'hasLikedUsersWith': hasLikedUsersWith,
        if (hasBookmarkedUsers != null)
          r'hasBookmarkedUsers': hasBookmarkedUsers,
        if (hasBookmarkedUsersWith != null)
          r'hasBookmarkedUsersWith': hasBookmarkedUsersWith,
      });

  Input$PostWhereInput._(this._$data);

  factory Input$PostWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$PostWhereInput.fromJson((l$not as Map<String, dynamic>));
    }
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('idNEQ')) {
      final l$idNEQ = data['idNEQ'];
      result$data['idNEQ'] = (l$idNEQ as String?);
    }
    if (data.containsKey('idIn')) {
      final l$idIn = data['idIn'];
      result$data['idIn'] =
          (l$idIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idNotIn')) {
      final l$idNotIn = data['idNotIn'];
      result$data['idNotIn'] =
          (l$idNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idGT')) {
      final l$idGT = data['idGT'];
      result$data['idGT'] = (l$idGT as String?);
    }
    if (data.containsKey('idGTE')) {
      final l$idGTE = data['idGTE'];
      result$data['idGTE'] = (l$idGTE as String?);
    }
    if (data.containsKey('idLT')) {
      final l$idLT = data['idLT'];
      result$data['idLT'] = (l$idLT as String?);
    }
    if (data.containsKey('idLTE')) {
      final l$idLTE = data['idLTE'];
      result$data['idLTE'] = (l$idLTE as String?);
    }
    if (data.containsKey('createTime')) {
      final l$createTime = data['createTime'];
      result$data['createTime'] = (l$createTime as String?);
    }
    if (data.containsKey('createTimeNEQ')) {
      final l$createTimeNEQ = data['createTimeNEQ'];
      result$data['createTimeNEQ'] = (l$createTimeNEQ as String?);
    }
    if (data.containsKey('createTimeIn')) {
      final l$createTimeIn = data['createTimeIn'];
      result$data['createTimeIn'] = (l$createTimeIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('createTimeNotIn')) {
      final l$createTimeNotIn = data['createTimeNotIn'];
      result$data['createTimeNotIn'] = (l$createTimeNotIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('createTimeGT')) {
      final l$createTimeGT = data['createTimeGT'];
      result$data['createTimeGT'] = (l$createTimeGT as String?);
    }
    if (data.containsKey('createTimeGTE')) {
      final l$createTimeGTE = data['createTimeGTE'];
      result$data['createTimeGTE'] = (l$createTimeGTE as String?);
    }
    if (data.containsKey('createTimeLT')) {
      final l$createTimeLT = data['createTimeLT'];
      result$data['createTimeLT'] = (l$createTimeLT as String?);
    }
    if (data.containsKey('createTimeLTE')) {
      final l$createTimeLTE = data['createTimeLTE'];
      result$data['createTimeLTE'] = (l$createTimeLTE as String?);
    }
    if (data.containsKey('updateTime')) {
      final l$updateTime = data['updateTime'];
      result$data['updateTime'] = (l$updateTime as String?);
    }
    if (data.containsKey('updateTimeNEQ')) {
      final l$updateTimeNEQ = data['updateTimeNEQ'];
      result$data['updateTimeNEQ'] = (l$updateTimeNEQ as String?);
    }
    if (data.containsKey('updateTimeIn')) {
      final l$updateTimeIn = data['updateTimeIn'];
      result$data['updateTimeIn'] = (l$updateTimeIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('updateTimeNotIn')) {
      final l$updateTimeNotIn = data['updateTimeNotIn'];
      result$data['updateTimeNotIn'] = (l$updateTimeNotIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('updateTimeGT')) {
      final l$updateTimeGT = data['updateTimeGT'];
      result$data['updateTimeGT'] = (l$updateTimeGT as String?);
    }
    if (data.containsKey('updateTimeGTE')) {
      final l$updateTimeGTE = data['updateTimeGTE'];
      result$data['updateTimeGTE'] = (l$updateTimeGTE as String?);
    }
    if (data.containsKey('updateTimeLT')) {
      final l$updateTimeLT = data['updateTimeLT'];
      result$data['updateTimeLT'] = (l$updateTimeLT as String?);
    }
    if (data.containsKey('updateTimeLTE')) {
      final l$updateTimeLTE = data['updateTimeLTE'];
      result$data['updateTimeLTE'] = (l$updateTimeLTE as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('titleNEQ')) {
      final l$titleNEQ = data['titleNEQ'];
      result$data['titleNEQ'] = (l$titleNEQ as String?);
    }
    if (data.containsKey('titleIn')) {
      final l$titleIn = data['titleIn'];
      result$data['titleIn'] =
          (l$titleIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('titleNotIn')) {
      final l$titleNotIn = data['titleNotIn'];
      result$data['titleNotIn'] =
          (l$titleNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('titleGT')) {
      final l$titleGT = data['titleGT'];
      result$data['titleGT'] = (l$titleGT as String?);
    }
    if (data.containsKey('titleGTE')) {
      final l$titleGTE = data['titleGTE'];
      result$data['titleGTE'] = (l$titleGTE as String?);
    }
    if (data.containsKey('titleLT')) {
      final l$titleLT = data['titleLT'];
      result$data['titleLT'] = (l$titleLT as String?);
    }
    if (data.containsKey('titleLTE')) {
      final l$titleLTE = data['titleLTE'];
      result$data['titleLTE'] = (l$titleLTE as String?);
    }
    if (data.containsKey('titleContains')) {
      final l$titleContains = data['titleContains'];
      result$data['titleContains'] = (l$titleContains as String?);
    }
    if (data.containsKey('titleHasPrefix')) {
      final l$titleHasPrefix = data['titleHasPrefix'];
      result$data['titleHasPrefix'] = (l$titleHasPrefix as String?);
    }
    if (data.containsKey('titleHasSuffix')) {
      final l$titleHasSuffix = data['titleHasSuffix'];
      result$data['titleHasSuffix'] = (l$titleHasSuffix as String?);
    }
    if (data.containsKey('titleEqualFold')) {
      final l$titleEqualFold = data['titleEqualFold'];
      result$data['titleEqualFold'] = (l$titleEqualFold as String?);
    }
    if (data.containsKey('titleContainsFold')) {
      final l$titleContainsFold = data['titleContainsFold'];
      result$data['titleContainsFold'] = (l$titleContainsFold as String?);
    }
    if (data.containsKey('content')) {
      final l$content = data['content'];
      result$data['content'] = (l$content as String?);
    }
    if (data.containsKey('contentNEQ')) {
      final l$contentNEQ = data['contentNEQ'];
      result$data['contentNEQ'] = (l$contentNEQ as String?);
    }
    if (data.containsKey('contentIn')) {
      final l$contentIn = data['contentIn'];
      result$data['contentIn'] =
          (l$contentIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('contentNotIn')) {
      final l$contentNotIn = data['contentNotIn'];
      result$data['contentNotIn'] = (l$contentNotIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('contentGT')) {
      final l$contentGT = data['contentGT'];
      result$data['contentGT'] = (l$contentGT as String?);
    }
    if (data.containsKey('contentGTE')) {
      final l$contentGTE = data['contentGTE'];
      result$data['contentGTE'] = (l$contentGTE as String?);
    }
    if (data.containsKey('contentLT')) {
      final l$contentLT = data['contentLT'];
      result$data['contentLT'] = (l$contentLT as String?);
    }
    if (data.containsKey('contentLTE')) {
      final l$contentLTE = data['contentLTE'];
      result$data['contentLTE'] = (l$contentLTE as String?);
    }
    if (data.containsKey('contentContains')) {
      final l$contentContains = data['contentContains'];
      result$data['contentContains'] = (l$contentContains as String?);
    }
    if (data.containsKey('contentHasPrefix')) {
      final l$contentHasPrefix = data['contentHasPrefix'];
      result$data['contentHasPrefix'] = (l$contentHasPrefix as String?);
    }
    if (data.containsKey('contentHasSuffix')) {
      final l$contentHasSuffix = data['contentHasSuffix'];
      result$data['contentHasSuffix'] = (l$contentHasSuffix as String?);
    }
    if (data.containsKey('contentEqualFold')) {
      final l$contentEqualFold = data['contentEqualFold'];
      result$data['contentEqualFold'] = (l$contentEqualFold as String?);
    }
    if (data.containsKey('contentContainsFold')) {
      final l$contentContainsFold = data['contentContainsFold'];
      result$data['contentContainsFold'] = (l$contentContainsFold as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$PostPostType((l$type as String));
    }
    if (data.containsKey('typeNEQ')) {
      final l$typeNEQ = data['typeNEQ'];
      result$data['typeNEQ'] = l$typeNEQ == null
          ? null
          : fromJson$Enum$PostPostType((l$typeNEQ as String));
    }
    if (data.containsKey('typeIn')) {
      final l$typeIn = data['typeIn'];
      result$data['typeIn'] = (l$typeIn as List<dynamic>?)
          ?.map((e) => fromJson$Enum$PostPostType((e as String)))
          .toList();
    }
    if (data.containsKey('typeNotIn')) {
      final l$typeNotIn = data['typeNotIn'];
      result$data['typeNotIn'] = (l$typeNotIn as List<dynamic>?)
          ?.map((e) => fromJson$Enum$PostPostType((e as String)))
          .toList();
    }
    if (data.containsKey('spoiled')) {
      final l$spoiled = data['spoiled'];
      result$data['spoiled'] = (l$spoiled as bool?);
    }
    if (data.containsKey('spoiledNEQ')) {
      final l$spoiledNEQ = data['spoiledNEQ'];
      result$data['spoiledNEQ'] = (l$spoiledNEQ as bool?);
    }
    if (data.containsKey('thumbnail')) {
      final l$thumbnail = data['thumbnail'];
      result$data['thumbnail'] = (l$thumbnail as String?);
    }
    if (data.containsKey('thumbnailNEQ')) {
      final l$thumbnailNEQ = data['thumbnailNEQ'];
      result$data['thumbnailNEQ'] = (l$thumbnailNEQ as String?);
    }
    if (data.containsKey('thumbnailIn')) {
      final l$thumbnailIn = data['thumbnailIn'];
      result$data['thumbnailIn'] =
          (l$thumbnailIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('thumbnailNotIn')) {
      final l$thumbnailNotIn = data['thumbnailNotIn'];
      result$data['thumbnailNotIn'] = (l$thumbnailNotIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('thumbnailGT')) {
      final l$thumbnailGT = data['thumbnailGT'];
      result$data['thumbnailGT'] = (l$thumbnailGT as String?);
    }
    if (data.containsKey('thumbnailGTE')) {
      final l$thumbnailGTE = data['thumbnailGTE'];
      result$data['thumbnailGTE'] = (l$thumbnailGTE as String?);
    }
    if (data.containsKey('thumbnailLT')) {
      final l$thumbnailLT = data['thumbnailLT'];
      result$data['thumbnailLT'] = (l$thumbnailLT as String?);
    }
    if (data.containsKey('thumbnailLTE')) {
      final l$thumbnailLTE = data['thumbnailLTE'];
      result$data['thumbnailLTE'] = (l$thumbnailLTE as String?);
    }
    if (data.containsKey('thumbnailContains')) {
      final l$thumbnailContains = data['thumbnailContains'];
      result$data['thumbnailContains'] = (l$thumbnailContains as String?);
    }
    if (data.containsKey('thumbnailHasPrefix')) {
      final l$thumbnailHasPrefix = data['thumbnailHasPrefix'];
      result$data['thumbnailHasPrefix'] = (l$thumbnailHasPrefix as String?);
    }
    if (data.containsKey('thumbnailHasSuffix')) {
      final l$thumbnailHasSuffix = data['thumbnailHasSuffix'];
      result$data['thumbnailHasSuffix'] = (l$thumbnailHasSuffix as String?);
    }
    if (data.containsKey('thumbnailIsNil')) {
      final l$thumbnailIsNil = data['thumbnailIsNil'];
      result$data['thumbnailIsNil'] = (l$thumbnailIsNil as bool?);
    }
    if (data.containsKey('thumbnailNotNil')) {
      final l$thumbnailNotNil = data['thumbnailNotNil'];
      result$data['thumbnailNotNil'] = (l$thumbnailNotNil as bool?);
    }
    if (data.containsKey('thumbnailEqualFold')) {
      final l$thumbnailEqualFold = data['thumbnailEqualFold'];
      result$data['thumbnailEqualFold'] = (l$thumbnailEqualFold as String?);
    }
    if (data.containsKey('thumbnailContainsFold')) {
      final l$thumbnailContainsFold = data['thumbnailContainsFold'];
      result$data['thumbnailContainsFold'] =
          (l$thumbnailContainsFold as String?);
    }
    if (data.containsKey('hasOwner')) {
      final l$hasOwner = data['hasOwner'];
      result$data['hasOwner'] = (l$hasOwner as bool?);
    }
    if (data.containsKey('hasOwnerWith')) {
      final l$hasOwnerWith = data['hasOwnerWith'];
      result$data['hasOwnerWith'] = (l$hasOwnerWith as List<dynamic>?)
          ?.map(
              (e) => Input$UserWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hasHashtags')) {
      final l$hasHashtags = data['hasHashtags'];
      result$data['hasHashtags'] = (l$hasHashtags as bool?);
    }
    if (data.containsKey('hasHashtagsWith')) {
      final l$hasHashtagsWith = data['hasHashtagsWith'];
      result$data['hasHashtagsWith'] = (l$hasHashtagsWith as List<dynamic>?)
          ?.map((e) =>
              Input$HashtagWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hasWork')) {
      final l$hasWork = data['hasWork'];
      result$data['hasWork'] = (l$hasWork as bool?);
    }
    if (data.containsKey('hasWorkWith')) {
      final l$hasWorkWith = data['hasWorkWith'];
      result$data['hasWorkWith'] = (l$hasWorkWith as List<dynamic>?)
          ?.map(
              (e) => Input$WorkWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hasCategory')) {
      final l$hasCategory = data['hasCategory'];
      result$data['hasCategory'] = (l$hasCategory as bool?);
    }
    if (data.containsKey('hasCategoryWith')) {
      final l$hasCategoryWith = data['hasCategoryWith'];
      result$data['hasCategoryWith'] = (l$hasCategoryWith as List<dynamic>?)
          ?.map((e) =>
              Input$CategoryWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hasLikedUsers')) {
      final l$hasLikedUsers = data['hasLikedUsers'];
      result$data['hasLikedUsers'] = (l$hasLikedUsers as bool?);
    }
    if (data.containsKey('hasLikedUsersWith')) {
      final l$hasLikedUsersWith = data['hasLikedUsersWith'];
      result$data['hasLikedUsersWith'] = (l$hasLikedUsersWith as List<dynamic>?)
          ?.map(
              (e) => Input$UserWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hasBookmarkedUsers')) {
      final l$hasBookmarkedUsers = data['hasBookmarkedUsers'];
      result$data['hasBookmarkedUsers'] = (l$hasBookmarkedUsers as bool?);
    }
    if (data.containsKey('hasBookmarkedUsersWith')) {
      final l$hasBookmarkedUsersWith = data['hasBookmarkedUsersWith'];
      result$data['hasBookmarkedUsersWith'] = (l$hasBookmarkedUsersWith
              as List<dynamic>?)
          ?.map(
              (e) => Input$UserWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$PostWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PostWhereInput? get not => (_$data['not'] as Input$PostWhereInput?);
  List<Input$PostWhereInput>? get and =>
      (_$data['and'] as List<Input$PostWhereInput>?);
  List<Input$PostWhereInput>? get or =>
      (_$data['or'] as List<Input$PostWhereInput>?);
  String? get id => (_$data['id'] as String?);
  String? get idNEQ => (_$data['idNEQ'] as String?);
  List<String>? get idIn => (_$data['idIn'] as List<String>?);
  List<String>? get idNotIn => (_$data['idNotIn'] as List<String>?);
  String? get idGT => (_$data['idGT'] as String?);
  String? get idGTE => (_$data['idGTE'] as String?);
  String? get idLT => (_$data['idLT'] as String?);
  String? get idLTE => (_$data['idLTE'] as String?);
  String? get createTime => (_$data['createTime'] as String?);
  String? get createTimeNEQ => (_$data['createTimeNEQ'] as String?);
  List<String>? get createTimeIn => (_$data['createTimeIn'] as List<String>?);
  List<String>? get createTimeNotIn =>
      (_$data['createTimeNotIn'] as List<String>?);
  String? get createTimeGT => (_$data['createTimeGT'] as String?);
  String? get createTimeGTE => (_$data['createTimeGTE'] as String?);
  String? get createTimeLT => (_$data['createTimeLT'] as String?);
  String? get createTimeLTE => (_$data['createTimeLTE'] as String?);
  String? get updateTime => (_$data['updateTime'] as String?);
  String? get updateTimeNEQ => (_$data['updateTimeNEQ'] as String?);
  List<String>? get updateTimeIn => (_$data['updateTimeIn'] as List<String>?);
  List<String>? get updateTimeNotIn =>
      (_$data['updateTimeNotIn'] as List<String>?);
  String? get updateTimeGT => (_$data['updateTimeGT'] as String?);
  String? get updateTimeGTE => (_$data['updateTimeGTE'] as String?);
  String? get updateTimeLT => (_$data['updateTimeLT'] as String?);
  String? get updateTimeLTE => (_$data['updateTimeLTE'] as String?);
  String? get title => (_$data['title'] as String?);
  String? get titleNEQ => (_$data['titleNEQ'] as String?);
  List<String>? get titleIn => (_$data['titleIn'] as List<String>?);
  List<String>? get titleNotIn => (_$data['titleNotIn'] as List<String>?);
  String? get titleGT => (_$data['titleGT'] as String?);
  String? get titleGTE => (_$data['titleGTE'] as String?);
  String? get titleLT => (_$data['titleLT'] as String?);
  String? get titleLTE => (_$data['titleLTE'] as String?);
  String? get titleContains => (_$data['titleContains'] as String?);
  String? get titleHasPrefix => (_$data['titleHasPrefix'] as String?);
  String? get titleHasSuffix => (_$data['titleHasSuffix'] as String?);
  String? get titleEqualFold => (_$data['titleEqualFold'] as String?);
  String? get titleContainsFold => (_$data['titleContainsFold'] as String?);
  String? get content => (_$data['content'] as String?);
  String? get contentNEQ => (_$data['contentNEQ'] as String?);
  List<String>? get contentIn => (_$data['contentIn'] as List<String>?);
  List<String>? get contentNotIn => (_$data['contentNotIn'] as List<String>?);
  String? get contentGT => (_$data['contentGT'] as String?);
  String? get contentGTE => (_$data['contentGTE'] as String?);
  String? get contentLT => (_$data['contentLT'] as String?);
  String? get contentLTE => (_$data['contentLTE'] as String?);
  String? get contentContains => (_$data['contentContains'] as String?);
  String? get contentHasPrefix => (_$data['contentHasPrefix'] as String?);
  String? get contentHasSuffix => (_$data['contentHasSuffix'] as String?);
  String? get contentEqualFold => (_$data['contentEqualFold'] as String?);
  String? get contentContainsFold => (_$data['contentContainsFold'] as String?);
  Enum$PostPostType? get type => (_$data['type'] as Enum$PostPostType?);
  Enum$PostPostType? get typeNEQ => (_$data['typeNEQ'] as Enum$PostPostType?);
  List<Enum$PostPostType>? get typeIn =>
      (_$data['typeIn'] as List<Enum$PostPostType>?);
  List<Enum$PostPostType>? get typeNotIn =>
      (_$data['typeNotIn'] as List<Enum$PostPostType>?);
  bool? get spoiled => (_$data['spoiled'] as bool?);
  bool? get spoiledNEQ => (_$data['spoiledNEQ'] as bool?);
  String? get thumbnail => (_$data['thumbnail'] as String?);
  String? get thumbnailNEQ => (_$data['thumbnailNEQ'] as String?);
  List<String>? get thumbnailIn => (_$data['thumbnailIn'] as List<String>?);
  List<String>? get thumbnailNotIn =>
      (_$data['thumbnailNotIn'] as List<String>?);
  String? get thumbnailGT => (_$data['thumbnailGT'] as String?);
  String? get thumbnailGTE => (_$data['thumbnailGTE'] as String?);
  String? get thumbnailLT => (_$data['thumbnailLT'] as String?);
  String? get thumbnailLTE => (_$data['thumbnailLTE'] as String?);
  String? get thumbnailContains => (_$data['thumbnailContains'] as String?);
  String? get thumbnailHasPrefix => (_$data['thumbnailHasPrefix'] as String?);
  String? get thumbnailHasSuffix => (_$data['thumbnailHasSuffix'] as String?);
  bool? get thumbnailIsNil => (_$data['thumbnailIsNil'] as bool?);
  bool? get thumbnailNotNil => (_$data['thumbnailNotNil'] as bool?);
  String? get thumbnailEqualFold => (_$data['thumbnailEqualFold'] as String?);
  String? get thumbnailContainsFold =>
      (_$data['thumbnailContainsFold'] as String?);
  bool? get hasOwner => (_$data['hasOwner'] as bool?);
  List<Input$UserWhereInput>? get hasOwnerWith =>
      (_$data['hasOwnerWith'] as List<Input$UserWhereInput>?);
  bool? get hasHashtags => (_$data['hasHashtags'] as bool?);
  List<Input$HashtagWhereInput>? get hasHashtagsWith =>
      (_$data['hasHashtagsWith'] as List<Input$HashtagWhereInput>?);
  bool? get hasWork => (_$data['hasWork'] as bool?);
  List<Input$WorkWhereInput>? get hasWorkWith =>
      (_$data['hasWorkWith'] as List<Input$WorkWhereInput>?);
  bool? get hasCategory => (_$data['hasCategory'] as bool?);
  List<Input$CategoryWhereInput>? get hasCategoryWith =>
      (_$data['hasCategoryWith'] as List<Input$CategoryWhereInput>?);
  bool? get hasLikedUsers => (_$data['hasLikedUsers'] as bool?);
  List<Input$UserWhereInput>? get hasLikedUsersWith =>
      (_$data['hasLikedUsersWith'] as List<Input$UserWhereInput>?);
  bool? get hasBookmarkedUsers => (_$data['hasBookmarkedUsers'] as bool?);
  List<Input$UserWhereInput>? get hasBookmarkedUsersWith =>
      (_$data['hasBookmarkedUsersWith'] as List<Input$UserWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idNEQ')) {
      final l$idNEQ = idNEQ;
      result$data['idNEQ'] = l$idNEQ;
    }
    if (_$data.containsKey('idIn')) {
      final l$idIn = idIn;
      result$data['idIn'] = l$idIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idNotIn')) {
      final l$idNotIn = idNotIn;
      result$data['idNotIn'] = l$idNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idGT')) {
      final l$idGT = idGT;
      result$data['idGT'] = l$idGT;
    }
    if (_$data.containsKey('idGTE')) {
      final l$idGTE = idGTE;
      result$data['idGTE'] = l$idGTE;
    }
    if (_$data.containsKey('idLT')) {
      final l$idLT = idLT;
      result$data['idLT'] = l$idLT;
    }
    if (_$data.containsKey('idLTE')) {
      final l$idLTE = idLTE;
      result$data['idLTE'] = l$idLTE;
    }
    if (_$data.containsKey('createTime')) {
      final l$createTime = createTime;
      result$data['createTime'] = l$createTime;
    }
    if (_$data.containsKey('createTimeNEQ')) {
      final l$createTimeNEQ = createTimeNEQ;
      result$data['createTimeNEQ'] = l$createTimeNEQ;
    }
    if (_$data.containsKey('createTimeIn')) {
      final l$createTimeIn = createTimeIn;
      result$data['createTimeIn'] = l$createTimeIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('createTimeNotIn')) {
      final l$createTimeNotIn = createTimeNotIn;
      result$data['createTimeNotIn'] =
          l$createTimeNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('createTimeGT')) {
      final l$createTimeGT = createTimeGT;
      result$data['createTimeGT'] = l$createTimeGT;
    }
    if (_$data.containsKey('createTimeGTE')) {
      final l$createTimeGTE = createTimeGTE;
      result$data['createTimeGTE'] = l$createTimeGTE;
    }
    if (_$data.containsKey('createTimeLT')) {
      final l$createTimeLT = createTimeLT;
      result$data['createTimeLT'] = l$createTimeLT;
    }
    if (_$data.containsKey('createTimeLTE')) {
      final l$createTimeLTE = createTimeLTE;
      result$data['createTimeLTE'] = l$createTimeLTE;
    }
    if (_$data.containsKey('updateTime')) {
      final l$updateTime = updateTime;
      result$data['updateTime'] = l$updateTime;
    }
    if (_$data.containsKey('updateTimeNEQ')) {
      final l$updateTimeNEQ = updateTimeNEQ;
      result$data['updateTimeNEQ'] = l$updateTimeNEQ;
    }
    if (_$data.containsKey('updateTimeIn')) {
      final l$updateTimeIn = updateTimeIn;
      result$data['updateTimeIn'] = l$updateTimeIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('updateTimeNotIn')) {
      final l$updateTimeNotIn = updateTimeNotIn;
      result$data['updateTimeNotIn'] =
          l$updateTimeNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('updateTimeGT')) {
      final l$updateTimeGT = updateTimeGT;
      result$data['updateTimeGT'] = l$updateTimeGT;
    }
    if (_$data.containsKey('updateTimeGTE')) {
      final l$updateTimeGTE = updateTimeGTE;
      result$data['updateTimeGTE'] = l$updateTimeGTE;
    }
    if (_$data.containsKey('updateTimeLT')) {
      final l$updateTimeLT = updateTimeLT;
      result$data['updateTimeLT'] = l$updateTimeLT;
    }
    if (_$data.containsKey('updateTimeLTE')) {
      final l$updateTimeLTE = updateTimeLTE;
      result$data['updateTimeLTE'] = l$updateTimeLTE;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('titleNEQ')) {
      final l$titleNEQ = titleNEQ;
      result$data['titleNEQ'] = l$titleNEQ;
    }
    if (_$data.containsKey('titleIn')) {
      final l$titleIn = titleIn;
      result$data['titleIn'] = l$titleIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('titleNotIn')) {
      final l$titleNotIn = titleNotIn;
      result$data['titleNotIn'] = l$titleNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('titleGT')) {
      final l$titleGT = titleGT;
      result$data['titleGT'] = l$titleGT;
    }
    if (_$data.containsKey('titleGTE')) {
      final l$titleGTE = titleGTE;
      result$data['titleGTE'] = l$titleGTE;
    }
    if (_$data.containsKey('titleLT')) {
      final l$titleLT = titleLT;
      result$data['titleLT'] = l$titleLT;
    }
    if (_$data.containsKey('titleLTE')) {
      final l$titleLTE = titleLTE;
      result$data['titleLTE'] = l$titleLTE;
    }
    if (_$data.containsKey('titleContains')) {
      final l$titleContains = titleContains;
      result$data['titleContains'] = l$titleContains;
    }
    if (_$data.containsKey('titleHasPrefix')) {
      final l$titleHasPrefix = titleHasPrefix;
      result$data['titleHasPrefix'] = l$titleHasPrefix;
    }
    if (_$data.containsKey('titleHasSuffix')) {
      final l$titleHasSuffix = titleHasSuffix;
      result$data['titleHasSuffix'] = l$titleHasSuffix;
    }
    if (_$data.containsKey('titleEqualFold')) {
      final l$titleEqualFold = titleEqualFold;
      result$data['titleEqualFold'] = l$titleEqualFold;
    }
    if (_$data.containsKey('titleContainsFold')) {
      final l$titleContainsFold = titleContainsFold;
      result$data['titleContainsFold'] = l$titleContainsFold;
    }
    if (_$data.containsKey('content')) {
      final l$content = content;
      result$data['content'] = l$content;
    }
    if (_$data.containsKey('contentNEQ')) {
      final l$contentNEQ = contentNEQ;
      result$data['contentNEQ'] = l$contentNEQ;
    }
    if (_$data.containsKey('contentIn')) {
      final l$contentIn = contentIn;
      result$data['contentIn'] = l$contentIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('contentNotIn')) {
      final l$contentNotIn = contentNotIn;
      result$data['contentNotIn'] = l$contentNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('contentGT')) {
      final l$contentGT = contentGT;
      result$data['contentGT'] = l$contentGT;
    }
    if (_$data.containsKey('contentGTE')) {
      final l$contentGTE = contentGTE;
      result$data['contentGTE'] = l$contentGTE;
    }
    if (_$data.containsKey('contentLT')) {
      final l$contentLT = contentLT;
      result$data['contentLT'] = l$contentLT;
    }
    if (_$data.containsKey('contentLTE')) {
      final l$contentLTE = contentLTE;
      result$data['contentLTE'] = l$contentLTE;
    }
    if (_$data.containsKey('contentContains')) {
      final l$contentContains = contentContains;
      result$data['contentContains'] = l$contentContains;
    }
    if (_$data.containsKey('contentHasPrefix')) {
      final l$contentHasPrefix = contentHasPrefix;
      result$data['contentHasPrefix'] = l$contentHasPrefix;
    }
    if (_$data.containsKey('contentHasSuffix')) {
      final l$contentHasSuffix = contentHasSuffix;
      result$data['contentHasSuffix'] = l$contentHasSuffix;
    }
    if (_$data.containsKey('contentEqualFold')) {
      final l$contentEqualFold = contentEqualFold;
      result$data['contentEqualFold'] = l$contentEqualFold;
    }
    if (_$data.containsKey('contentContainsFold')) {
      final l$contentContainsFold = contentContainsFold;
      result$data['contentContainsFold'] = l$contentContainsFold;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$PostPostType(l$type);
    }
    if (_$data.containsKey('typeNEQ')) {
      final l$typeNEQ = typeNEQ;
      result$data['typeNEQ'] =
          l$typeNEQ == null ? null : toJson$Enum$PostPostType(l$typeNEQ);
    }
    if (_$data.containsKey('typeIn')) {
      final l$typeIn = typeIn;
      result$data['typeIn'] =
          l$typeIn?.map((e) => toJson$Enum$PostPostType(e)).toList();
    }
    if (_$data.containsKey('typeNotIn')) {
      final l$typeNotIn = typeNotIn;
      result$data['typeNotIn'] =
          l$typeNotIn?.map((e) => toJson$Enum$PostPostType(e)).toList();
    }
    if (_$data.containsKey('spoiled')) {
      final l$spoiled = spoiled;
      result$data['spoiled'] = l$spoiled;
    }
    if (_$data.containsKey('spoiledNEQ')) {
      final l$spoiledNEQ = spoiledNEQ;
      result$data['spoiledNEQ'] = l$spoiledNEQ;
    }
    if (_$data.containsKey('thumbnail')) {
      final l$thumbnail = thumbnail;
      result$data['thumbnail'] = l$thumbnail;
    }
    if (_$data.containsKey('thumbnailNEQ')) {
      final l$thumbnailNEQ = thumbnailNEQ;
      result$data['thumbnailNEQ'] = l$thumbnailNEQ;
    }
    if (_$data.containsKey('thumbnailIn')) {
      final l$thumbnailIn = thumbnailIn;
      result$data['thumbnailIn'] = l$thumbnailIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('thumbnailNotIn')) {
      final l$thumbnailNotIn = thumbnailNotIn;
      result$data['thumbnailNotIn'] = l$thumbnailNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('thumbnailGT')) {
      final l$thumbnailGT = thumbnailGT;
      result$data['thumbnailGT'] = l$thumbnailGT;
    }
    if (_$data.containsKey('thumbnailGTE')) {
      final l$thumbnailGTE = thumbnailGTE;
      result$data['thumbnailGTE'] = l$thumbnailGTE;
    }
    if (_$data.containsKey('thumbnailLT')) {
      final l$thumbnailLT = thumbnailLT;
      result$data['thumbnailLT'] = l$thumbnailLT;
    }
    if (_$data.containsKey('thumbnailLTE')) {
      final l$thumbnailLTE = thumbnailLTE;
      result$data['thumbnailLTE'] = l$thumbnailLTE;
    }
    if (_$data.containsKey('thumbnailContains')) {
      final l$thumbnailContains = thumbnailContains;
      result$data['thumbnailContains'] = l$thumbnailContains;
    }
    if (_$data.containsKey('thumbnailHasPrefix')) {
      final l$thumbnailHasPrefix = thumbnailHasPrefix;
      result$data['thumbnailHasPrefix'] = l$thumbnailHasPrefix;
    }
    if (_$data.containsKey('thumbnailHasSuffix')) {
      final l$thumbnailHasSuffix = thumbnailHasSuffix;
      result$data['thumbnailHasSuffix'] = l$thumbnailHasSuffix;
    }
    if (_$data.containsKey('thumbnailIsNil')) {
      final l$thumbnailIsNil = thumbnailIsNil;
      result$data['thumbnailIsNil'] = l$thumbnailIsNil;
    }
    if (_$data.containsKey('thumbnailNotNil')) {
      final l$thumbnailNotNil = thumbnailNotNil;
      result$data['thumbnailNotNil'] = l$thumbnailNotNil;
    }
    if (_$data.containsKey('thumbnailEqualFold')) {
      final l$thumbnailEqualFold = thumbnailEqualFold;
      result$data['thumbnailEqualFold'] = l$thumbnailEqualFold;
    }
    if (_$data.containsKey('thumbnailContainsFold')) {
      final l$thumbnailContainsFold = thumbnailContainsFold;
      result$data['thumbnailContainsFold'] = l$thumbnailContainsFold;
    }
    if (_$data.containsKey('hasOwner')) {
      final l$hasOwner = hasOwner;
      result$data['hasOwner'] = l$hasOwner;
    }
    if (_$data.containsKey('hasOwnerWith')) {
      final l$hasOwnerWith = hasOwnerWith;
      result$data['hasOwnerWith'] =
          l$hasOwnerWith?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('hasHashtags')) {
      final l$hasHashtags = hasHashtags;
      result$data['hasHashtags'] = l$hasHashtags;
    }
    if (_$data.containsKey('hasHashtagsWith')) {
      final l$hasHashtagsWith = hasHashtagsWith;
      result$data['hasHashtagsWith'] =
          l$hasHashtagsWith?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('hasWork')) {
      final l$hasWork = hasWork;
      result$data['hasWork'] = l$hasWork;
    }
    if (_$data.containsKey('hasWorkWith')) {
      final l$hasWorkWith = hasWorkWith;
      result$data['hasWorkWith'] =
          l$hasWorkWith?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('hasCategory')) {
      final l$hasCategory = hasCategory;
      result$data['hasCategory'] = l$hasCategory;
    }
    if (_$data.containsKey('hasCategoryWith')) {
      final l$hasCategoryWith = hasCategoryWith;
      result$data['hasCategoryWith'] =
          l$hasCategoryWith?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('hasLikedUsers')) {
      final l$hasLikedUsers = hasLikedUsers;
      result$data['hasLikedUsers'] = l$hasLikedUsers;
    }
    if (_$data.containsKey('hasLikedUsersWith')) {
      final l$hasLikedUsersWith = hasLikedUsersWith;
      result$data['hasLikedUsersWith'] =
          l$hasLikedUsersWith?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('hasBookmarkedUsers')) {
      final l$hasBookmarkedUsers = hasBookmarkedUsers;
      result$data['hasBookmarkedUsers'] = l$hasBookmarkedUsers;
    }
    if (_$data.containsKey('hasBookmarkedUsersWith')) {
      final l$hasBookmarkedUsersWith = hasBookmarkedUsersWith;
      result$data['hasBookmarkedUsersWith'] =
          l$hasBookmarkedUsersWith?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$PostWhereInput<Input$PostWhereInput> get copyWith =>
      CopyWith$Input$PostWhereInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PostWhereInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idNEQ = idNEQ;
    final lOther$idNEQ = other.idNEQ;
    if (_$data.containsKey('idNEQ') != other._$data.containsKey('idNEQ')) {
      return false;
    }
    if (l$idNEQ != lOther$idNEQ) {
      return false;
    }
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (_$data.containsKey('idIn') != other._$data.containsKey('idIn')) {
      return false;
    }
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) {
        return false;
      }
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) {
          return false;
        }
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }
    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (_$data.containsKey('idNotIn') != other._$data.containsKey('idNotIn')) {
      return false;
    }
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) {
          return false;
        }
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }
    final l$idGT = idGT;
    final lOther$idGT = other.idGT;
    if (_$data.containsKey('idGT') != other._$data.containsKey('idGT')) {
      return false;
    }
    if (l$idGT != lOther$idGT) {
      return false;
    }
    final l$idGTE = idGTE;
    final lOther$idGTE = other.idGTE;
    if (_$data.containsKey('idGTE') != other._$data.containsKey('idGTE')) {
      return false;
    }
    if (l$idGTE != lOther$idGTE) {
      return false;
    }
    final l$idLT = idLT;
    final lOther$idLT = other.idLT;
    if (_$data.containsKey('idLT') != other._$data.containsKey('idLT')) {
      return false;
    }
    if (l$idLT != lOther$idLT) {
      return false;
    }
    final l$idLTE = idLTE;
    final lOther$idLTE = other.idLTE;
    if (_$data.containsKey('idLTE') != other._$data.containsKey('idLTE')) {
      return false;
    }
    if (l$idLTE != lOther$idLTE) {
      return false;
    }
    final l$createTime = createTime;
    final lOther$createTime = other.createTime;
    if (_$data.containsKey('createTime') !=
        other._$data.containsKey('createTime')) {
      return false;
    }
    if (l$createTime != lOther$createTime) {
      return false;
    }
    final l$createTimeNEQ = createTimeNEQ;
    final lOther$createTimeNEQ = other.createTimeNEQ;
    if (_$data.containsKey('createTimeNEQ') !=
        other._$data.containsKey('createTimeNEQ')) {
      return false;
    }
    if (l$createTimeNEQ != lOther$createTimeNEQ) {
      return false;
    }
    final l$createTimeIn = createTimeIn;
    final lOther$createTimeIn = other.createTimeIn;
    if (_$data.containsKey('createTimeIn') !=
        other._$data.containsKey('createTimeIn')) {
      return false;
    }
    if (l$createTimeIn != null && lOther$createTimeIn != null) {
      if (l$createTimeIn.length != lOther$createTimeIn.length) {
        return false;
      }
      for (int i = 0; i < l$createTimeIn.length; i++) {
        final l$createTimeIn$entry = l$createTimeIn[i];
        final lOther$createTimeIn$entry = lOther$createTimeIn[i];
        if (l$createTimeIn$entry != lOther$createTimeIn$entry) {
          return false;
        }
      }
    } else if (l$createTimeIn != lOther$createTimeIn) {
      return false;
    }
    final l$createTimeNotIn = createTimeNotIn;
    final lOther$createTimeNotIn = other.createTimeNotIn;
    if (_$data.containsKey('createTimeNotIn') !=
        other._$data.containsKey('createTimeNotIn')) {
      return false;
    }
    if (l$createTimeNotIn != null && lOther$createTimeNotIn != null) {
      if (l$createTimeNotIn.length != lOther$createTimeNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$createTimeNotIn.length; i++) {
        final l$createTimeNotIn$entry = l$createTimeNotIn[i];
        final lOther$createTimeNotIn$entry = lOther$createTimeNotIn[i];
        if (l$createTimeNotIn$entry != lOther$createTimeNotIn$entry) {
          return false;
        }
      }
    } else if (l$createTimeNotIn != lOther$createTimeNotIn) {
      return false;
    }
    final l$createTimeGT = createTimeGT;
    final lOther$createTimeGT = other.createTimeGT;
    if (_$data.containsKey('createTimeGT') !=
        other._$data.containsKey('createTimeGT')) {
      return false;
    }
    if (l$createTimeGT != lOther$createTimeGT) {
      return false;
    }
    final l$createTimeGTE = createTimeGTE;
    final lOther$createTimeGTE = other.createTimeGTE;
    if (_$data.containsKey('createTimeGTE') !=
        other._$data.containsKey('createTimeGTE')) {
      return false;
    }
    if (l$createTimeGTE != lOther$createTimeGTE) {
      return false;
    }
    final l$createTimeLT = createTimeLT;
    final lOther$createTimeLT = other.createTimeLT;
    if (_$data.containsKey('createTimeLT') !=
        other._$data.containsKey('createTimeLT')) {
      return false;
    }
    if (l$createTimeLT != lOther$createTimeLT) {
      return false;
    }
    final l$createTimeLTE = createTimeLTE;
    final lOther$createTimeLTE = other.createTimeLTE;
    if (_$data.containsKey('createTimeLTE') !=
        other._$data.containsKey('createTimeLTE')) {
      return false;
    }
    if (l$createTimeLTE != lOther$createTimeLTE) {
      return false;
    }
    final l$updateTime = updateTime;
    final lOther$updateTime = other.updateTime;
    if (_$data.containsKey('updateTime') !=
        other._$data.containsKey('updateTime')) {
      return false;
    }
    if (l$updateTime != lOther$updateTime) {
      return false;
    }
    final l$updateTimeNEQ = updateTimeNEQ;
    final lOther$updateTimeNEQ = other.updateTimeNEQ;
    if (_$data.containsKey('updateTimeNEQ') !=
        other._$data.containsKey('updateTimeNEQ')) {
      return false;
    }
    if (l$updateTimeNEQ != lOther$updateTimeNEQ) {
      return false;
    }
    final l$updateTimeIn = updateTimeIn;
    final lOther$updateTimeIn = other.updateTimeIn;
    if (_$data.containsKey('updateTimeIn') !=
        other._$data.containsKey('updateTimeIn')) {
      return false;
    }
    if (l$updateTimeIn != null && lOther$updateTimeIn != null) {
      if (l$updateTimeIn.length != lOther$updateTimeIn.length) {
        return false;
      }
      for (int i = 0; i < l$updateTimeIn.length; i++) {
        final l$updateTimeIn$entry = l$updateTimeIn[i];
        final lOther$updateTimeIn$entry = lOther$updateTimeIn[i];
        if (l$updateTimeIn$entry != lOther$updateTimeIn$entry) {
          return false;
        }
      }
    } else if (l$updateTimeIn != lOther$updateTimeIn) {
      return false;
    }
    final l$updateTimeNotIn = updateTimeNotIn;
    final lOther$updateTimeNotIn = other.updateTimeNotIn;
    if (_$data.containsKey('updateTimeNotIn') !=
        other._$data.containsKey('updateTimeNotIn')) {
      return false;
    }
    if (l$updateTimeNotIn != null && lOther$updateTimeNotIn != null) {
      if (l$updateTimeNotIn.length != lOther$updateTimeNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$updateTimeNotIn.length; i++) {
        final l$updateTimeNotIn$entry = l$updateTimeNotIn[i];
        final lOther$updateTimeNotIn$entry = lOther$updateTimeNotIn[i];
        if (l$updateTimeNotIn$entry != lOther$updateTimeNotIn$entry) {
          return false;
        }
      }
    } else if (l$updateTimeNotIn != lOther$updateTimeNotIn) {
      return false;
    }
    final l$updateTimeGT = updateTimeGT;
    final lOther$updateTimeGT = other.updateTimeGT;
    if (_$data.containsKey('updateTimeGT') !=
        other._$data.containsKey('updateTimeGT')) {
      return false;
    }
    if (l$updateTimeGT != lOther$updateTimeGT) {
      return false;
    }
    final l$updateTimeGTE = updateTimeGTE;
    final lOther$updateTimeGTE = other.updateTimeGTE;
    if (_$data.containsKey('updateTimeGTE') !=
        other._$data.containsKey('updateTimeGTE')) {
      return false;
    }
    if (l$updateTimeGTE != lOther$updateTimeGTE) {
      return false;
    }
    final l$updateTimeLT = updateTimeLT;
    final lOther$updateTimeLT = other.updateTimeLT;
    if (_$data.containsKey('updateTimeLT') !=
        other._$data.containsKey('updateTimeLT')) {
      return false;
    }
    if (l$updateTimeLT != lOther$updateTimeLT) {
      return false;
    }
    final l$updateTimeLTE = updateTimeLTE;
    final lOther$updateTimeLTE = other.updateTimeLTE;
    if (_$data.containsKey('updateTimeLTE') !=
        other._$data.containsKey('updateTimeLTE')) {
      return false;
    }
    if (l$updateTimeLTE != lOther$updateTimeLTE) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$titleNEQ = titleNEQ;
    final lOther$titleNEQ = other.titleNEQ;
    if (_$data.containsKey('titleNEQ') !=
        other._$data.containsKey('titleNEQ')) {
      return false;
    }
    if (l$titleNEQ != lOther$titleNEQ) {
      return false;
    }
    final l$titleIn = titleIn;
    final lOther$titleIn = other.titleIn;
    if (_$data.containsKey('titleIn') != other._$data.containsKey('titleIn')) {
      return false;
    }
    if (l$titleIn != null && lOther$titleIn != null) {
      if (l$titleIn.length != lOther$titleIn.length) {
        return false;
      }
      for (int i = 0; i < l$titleIn.length; i++) {
        final l$titleIn$entry = l$titleIn[i];
        final lOther$titleIn$entry = lOther$titleIn[i];
        if (l$titleIn$entry != lOther$titleIn$entry) {
          return false;
        }
      }
    } else if (l$titleIn != lOther$titleIn) {
      return false;
    }
    final l$titleNotIn = titleNotIn;
    final lOther$titleNotIn = other.titleNotIn;
    if (_$data.containsKey('titleNotIn') !=
        other._$data.containsKey('titleNotIn')) {
      return false;
    }
    if (l$titleNotIn != null && lOther$titleNotIn != null) {
      if (l$titleNotIn.length != lOther$titleNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$titleNotIn.length; i++) {
        final l$titleNotIn$entry = l$titleNotIn[i];
        final lOther$titleNotIn$entry = lOther$titleNotIn[i];
        if (l$titleNotIn$entry != lOther$titleNotIn$entry) {
          return false;
        }
      }
    } else if (l$titleNotIn != lOther$titleNotIn) {
      return false;
    }
    final l$titleGT = titleGT;
    final lOther$titleGT = other.titleGT;
    if (_$data.containsKey('titleGT') != other._$data.containsKey('titleGT')) {
      return false;
    }
    if (l$titleGT != lOther$titleGT) {
      return false;
    }
    final l$titleGTE = titleGTE;
    final lOther$titleGTE = other.titleGTE;
    if (_$data.containsKey('titleGTE') !=
        other._$data.containsKey('titleGTE')) {
      return false;
    }
    if (l$titleGTE != lOther$titleGTE) {
      return false;
    }
    final l$titleLT = titleLT;
    final lOther$titleLT = other.titleLT;
    if (_$data.containsKey('titleLT') != other._$data.containsKey('titleLT')) {
      return false;
    }
    if (l$titleLT != lOther$titleLT) {
      return false;
    }
    final l$titleLTE = titleLTE;
    final lOther$titleLTE = other.titleLTE;
    if (_$data.containsKey('titleLTE') !=
        other._$data.containsKey('titleLTE')) {
      return false;
    }
    if (l$titleLTE != lOther$titleLTE) {
      return false;
    }
    final l$titleContains = titleContains;
    final lOther$titleContains = other.titleContains;
    if (_$data.containsKey('titleContains') !=
        other._$data.containsKey('titleContains')) {
      return false;
    }
    if (l$titleContains != lOther$titleContains) {
      return false;
    }
    final l$titleHasPrefix = titleHasPrefix;
    final lOther$titleHasPrefix = other.titleHasPrefix;
    if (_$data.containsKey('titleHasPrefix') !=
        other._$data.containsKey('titleHasPrefix')) {
      return false;
    }
    if (l$titleHasPrefix != lOther$titleHasPrefix) {
      return false;
    }
    final l$titleHasSuffix = titleHasSuffix;
    final lOther$titleHasSuffix = other.titleHasSuffix;
    if (_$data.containsKey('titleHasSuffix') !=
        other._$data.containsKey('titleHasSuffix')) {
      return false;
    }
    if (l$titleHasSuffix != lOther$titleHasSuffix) {
      return false;
    }
    final l$titleEqualFold = titleEqualFold;
    final lOther$titleEqualFold = other.titleEqualFold;
    if (_$data.containsKey('titleEqualFold') !=
        other._$data.containsKey('titleEqualFold')) {
      return false;
    }
    if (l$titleEqualFold != lOther$titleEqualFold) {
      return false;
    }
    final l$titleContainsFold = titleContainsFold;
    final lOther$titleContainsFold = other.titleContainsFold;
    if (_$data.containsKey('titleContainsFold') !=
        other._$data.containsKey('titleContainsFold')) {
      return false;
    }
    if (l$titleContainsFold != lOther$titleContainsFold) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (_$data.containsKey('content') != other._$data.containsKey('content')) {
      return false;
    }
    if (l$content != lOther$content) {
      return false;
    }
    final l$contentNEQ = contentNEQ;
    final lOther$contentNEQ = other.contentNEQ;
    if (_$data.containsKey('contentNEQ') !=
        other._$data.containsKey('contentNEQ')) {
      return false;
    }
    if (l$contentNEQ != lOther$contentNEQ) {
      return false;
    }
    final l$contentIn = contentIn;
    final lOther$contentIn = other.contentIn;
    if (_$data.containsKey('contentIn') !=
        other._$data.containsKey('contentIn')) {
      return false;
    }
    if (l$contentIn != null && lOther$contentIn != null) {
      if (l$contentIn.length != lOther$contentIn.length) {
        return false;
      }
      for (int i = 0; i < l$contentIn.length; i++) {
        final l$contentIn$entry = l$contentIn[i];
        final lOther$contentIn$entry = lOther$contentIn[i];
        if (l$contentIn$entry != lOther$contentIn$entry) {
          return false;
        }
      }
    } else if (l$contentIn != lOther$contentIn) {
      return false;
    }
    final l$contentNotIn = contentNotIn;
    final lOther$contentNotIn = other.contentNotIn;
    if (_$data.containsKey('contentNotIn') !=
        other._$data.containsKey('contentNotIn')) {
      return false;
    }
    if (l$contentNotIn != null && lOther$contentNotIn != null) {
      if (l$contentNotIn.length != lOther$contentNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$contentNotIn.length; i++) {
        final l$contentNotIn$entry = l$contentNotIn[i];
        final lOther$contentNotIn$entry = lOther$contentNotIn[i];
        if (l$contentNotIn$entry != lOther$contentNotIn$entry) {
          return false;
        }
      }
    } else if (l$contentNotIn != lOther$contentNotIn) {
      return false;
    }
    final l$contentGT = contentGT;
    final lOther$contentGT = other.contentGT;
    if (_$data.containsKey('contentGT') !=
        other._$data.containsKey('contentGT')) {
      return false;
    }
    if (l$contentGT != lOther$contentGT) {
      return false;
    }
    final l$contentGTE = contentGTE;
    final lOther$contentGTE = other.contentGTE;
    if (_$data.containsKey('contentGTE') !=
        other._$data.containsKey('contentGTE')) {
      return false;
    }
    if (l$contentGTE != lOther$contentGTE) {
      return false;
    }
    final l$contentLT = contentLT;
    final lOther$contentLT = other.contentLT;
    if (_$data.containsKey('contentLT') !=
        other._$data.containsKey('contentLT')) {
      return false;
    }
    if (l$contentLT != lOther$contentLT) {
      return false;
    }
    final l$contentLTE = contentLTE;
    final lOther$contentLTE = other.contentLTE;
    if (_$data.containsKey('contentLTE') !=
        other._$data.containsKey('contentLTE')) {
      return false;
    }
    if (l$contentLTE != lOther$contentLTE) {
      return false;
    }
    final l$contentContains = contentContains;
    final lOther$contentContains = other.contentContains;
    if (_$data.containsKey('contentContains') !=
        other._$data.containsKey('contentContains')) {
      return false;
    }
    if (l$contentContains != lOther$contentContains) {
      return false;
    }
    final l$contentHasPrefix = contentHasPrefix;
    final lOther$contentHasPrefix = other.contentHasPrefix;
    if (_$data.containsKey('contentHasPrefix') !=
        other._$data.containsKey('contentHasPrefix')) {
      return false;
    }
    if (l$contentHasPrefix != lOther$contentHasPrefix) {
      return false;
    }
    final l$contentHasSuffix = contentHasSuffix;
    final lOther$contentHasSuffix = other.contentHasSuffix;
    if (_$data.containsKey('contentHasSuffix') !=
        other._$data.containsKey('contentHasSuffix')) {
      return false;
    }
    if (l$contentHasSuffix != lOther$contentHasSuffix) {
      return false;
    }
    final l$contentEqualFold = contentEqualFold;
    final lOther$contentEqualFold = other.contentEqualFold;
    if (_$data.containsKey('contentEqualFold') !=
        other._$data.containsKey('contentEqualFold')) {
      return false;
    }
    if (l$contentEqualFold != lOther$contentEqualFold) {
      return false;
    }
    final l$contentContainsFold = contentContainsFold;
    final lOther$contentContainsFold = other.contentContainsFold;
    if (_$data.containsKey('contentContainsFold') !=
        other._$data.containsKey('contentContainsFold')) {
      return false;
    }
    if (l$contentContainsFold != lOther$contentContainsFold) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$typeNEQ = typeNEQ;
    final lOther$typeNEQ = other.typeNEQ;
    if (_$data.containsKey('typeNEQ') != other._$data.containsKey('typeNEQ')) {
      return false;
    }
    if (l$typeNEQ != lOther$typeNEQ) {
      return false;
    }
    final l$typeIn = typeIn;
    final lOther$typeIn = other.typeIn;
    if (_$data.containsKey('typeIn') != other._$data.containsKey('typeIn')) {
      return false;
    }
    if (l$typeIn != null && lOther$typeIn != null) {
      if (l$typeIn.length != lOther$typeIn.length) {
        return false;
      }
      for (int i = 0; i < l$typeIn.length; i++) {
        final l$typeIn$entry = l$typeIn[i];
        final lOther$typeIn$entry = lOther$typeIn[i];
        if (l$typeIn$entry != lOther$typeIn$entry) {
          return false;
        }
      }
    } else if (l$typeIn != lOther$typeIn) {
      return false;
    }
    final l$typeNotIn = typeNotIn;
    final lOther$typeNotIn = other.typeNotIn;
    if (_$data.containsKey('typeNotIn') !=
        other._$data.containsKey('typeNotIn')) {
      return false;
    }
    if (l$typeNotIn != null && lOther$typeNotIn != null) {
      if (l$typeNotIn.length != lOther$typeNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$typeNotIn.length; i++) {
        final l$typeNotIn$entry = l$typeNotIn[i];
        final lOther$typeNotIn$entry = lOther$typeNotIn[i];
        if (l$typeNotIn$entry != lOther$typeNotIn$entry) {
          return false;
        }
      }
    } else if (l$typeNotIn != lOther$typeNotIn) {
      return false;
    }
    final l$spoiled = spoiled;
    final lOther$spoiled = other.spoiled;
    if (_$data.containsKey('spoiled') != other._$data.containsKey('spoiled')) {
      return false;
    }
    if (l$spoiled != lOther$spoiled) {
      return false;
    }
    final l$spoiledNEQ = spoiledNEQ;
    final lOther$spoiledNEQ = other.spoiledNEQ;
    if (_$data.containsKey('spoiledNEQ') !=
        other._$data.containsKey('spoiledNEQ')) {
      return false;
    }
    if (l$spoiledNEQ != lOther$spoiledNEQ) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (_$data.containsKey('thumbnail') !=
        other._$data.containsKey('thumbnail')) {
      return false;
    }
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$thumbnailNEQ = thumbnailNEQ;
    final lOther$thumbnailNEQ = other.thumbnailNEQ;
    if (_$data.containsKey('thumbnailNEQ') !=
        other._$data.containsKey('thumbnailNEQ')) {
      return false;
    }
    if (l$thumbnailNEQ != lOther$thumbnailNEQ) {
      return false;
    }
    final l$thumbnailIn = thumbnailIn;
    final lOther$thumbnailIn = other.thumbnailIn;
    if (_$data.containsKey('thumbnailIn') !=
        other._$data.containsKey('thumbnailIn')) {
      return false;
    }
    if (l$thumbnailIn != null && lOther$thumbnailIn != null) {
      if (l$thumbnailIn.length != lOther$thumbnailIn.length) {
        return false;
      }
      for (int i = 0; i < l$thumbnailIn.length; i++) {
        final l$thumbnailIn$entry = l$thumbnailIn[i];
        final lOther$thumbnailIn$entry = lOther$thumbnailIn[i];
        if (l$thumbnailIn$entry != lOther$thumbnailIn$entry) {
          return false;
        }
      }
    } else if (l$thumbnailIn != lOther$thumbnailIn) {
      return false;
    }
    final l$thumbnailNotIn = thumbnailNotIn;
    final lOther$thumbnailNotIn = other.thumbnailNotIn;
    if (_$data.containsKey('thumbnailNotIn') !=
        other._$data.containsKey('thumbnailNotIn')) {
      return false;
    }
    if (l$thumbnailNotIn != null && lOther$thumbnailNotIn != null) {
      if (l$thumbnailNotIn.length != lOther$thumbnailNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$thumbnailNotIn.length; i++) {
        final l$thumbnailNotIn$entry = l$thumbnailNotIn[i];
        final lOther$thumbnailNotIn$entry = lOther$thumbnailNotIn[i];
        if (l$thumbnailNotIn$entry != lOther$thumbnailNotIn$entry) {
          return false;
        }
      }
    } else if (l$thumbnailNotIn != lOther$thumbnailNotIn) {
      return false;
    }
    final l$thumbnailGT = thumbnailGT;
    final lOther$thumbnailGT = other.thumbnailGT;
    if (_$data.containsKey('thumbnailGT') !=
        other._$data.containsKey('thumbnailGT')) {
      return false;
    }
    if (l$thumbnailGT != lOther$thumbnailGT) {
      return false;
    }
    final l$thumbnailGTE = thumbnailGTE;
    final lOther$thumbnailGTE = other.thumbnailGTE;
    if (_$data.containsKey('thumbnailGTE') !=
        other._$data.containsKey('thumbnailGTE')) {
      return false;
    }
    if (l$thumbnailGTE != lOther$thumbnailGTE) {
      return false;
    }
    final l$thumbnailLT = thumbnailLT;
    final lOther$thumbnailLT = other.thumbnailLT;
    if (_$data.containsKey('thumbnailLT') !=
        other._$data.containsKey('thumbnailLT')) {
      return false;
    }
    if (l$thumbnailLT != lOther$thumbnailLT) {
      return false;
    }
    final l$thumbnailLTE = thumbnailLTE;
    final lOther$thumbnailLTE = other.thumbnailLTE;
    if (_$data.containsKey('thumbnailLTE') !=
        other._$data.containsKey('thumbnailLTE')) {
      return false;
    }
    if (l$thumbnailLTE != lOther$thumbnailLTE) {
      return false;
    }
    final l$thumbnailContains = thumbnailContains;
    final lOther$thumbnailContains = other.thumbnailContains;
    if (_$data.containsKey('thumbnailContains') !=
        other._$data.containsKey('thumbnailContains')) {
      return false;
    }
    if (l$thumbnailContains != lOther$thumbnailContains) {
      return false;
    }
    final l$thumbnailHasPrefix = thumbnailHasPrefix;
    final lOther$thumbnailHasPrefix = other.thumbnailHasPrefix;
    if (_$data.containsKey('thumbnailHasPrefix') !=
        other._$data.containsKey('thumbnailHasPrefix')) {
      return false;
    }
    if (l$thumbnailHasPrefix != lOther$thumbnailHasPrefix) {
      return false;
    }
    final l$thumbnailHasSuffix = thumbnailHasSuffix;
    final lOther$thumbnailHasSuffix = other.thumbnailHasSuffix;
    if (_$data.containsKey('thumbnailHasSuffix') !=
        other._$data.containsKey('thumbnailHasSuffix')) {
      return false;
    }
    if (l$thumbnailHasSuffix != lOther$thumbnailHasSuffix) {
      return false;
    }
    final l$thumbnailIsNil = thumbnailIsNil;
    final lOther$thumbnailIsNil = other.thumbnailIsNil;
    if (_$data.containsKey('thumbnailIsNil') !=
        other._$data.containsKey('thumbnailIsNil')) {
      return false;
    }
    if (l$thumbnailIsNil != lOther$thumbnailIsNil) {
      return false;
    }
    final l$thumbnailNotNil = thumbnailNotNil;
    final lOther$thumbnailNotNil = other.thumbnailNotNil;
    if (_$data.containsKey('thumbnailNotNil') !=
        other._$data.containsKey('thumbnailNotNil')) {
      return false;
    }
    if (l$thumbnailNotNil != lOther$thumbnailNotNil) {
      return false;
    }
    final l$thumbnailEqualFold = thumbnailEqualFold;
    final lOther$thumbnailEqualFold = other.thumbnailEqualFold;
    if (_$data.containsKey('thumbnailEqualFold') !=
        other._$data.containsKey('thumbnailEqualFold')) {
      return false;
    }
    if (l$thumbnailEqualFold != lOther$thumbnailEqualFold) {
      return false;
    }
    final l$thumbnailContainsFold = thumbnailContainsFold;
    final lOther$thumbnailContainsFold = other.thumbnailContainsFold;
    if (_$data.containsKey('thumbnailContainsFold') !=
        other._$data.containsKey('thumbnailContainsFold')) {
      return false;
    }
    if (l$thumbnailContainsFold != lOther$thumbnailContainsFold) {
      return false;
    }
    final l$hasOwner = hasOwner;
    final lOther$hasOwner = other.hasOwner;
    if (_$data.containsKey('hasOwner') !=
        other._$data.containsKey('hasOwner')) {
      return false;
    }
    if (l$hasOwner != lOther$hasOwner) {
      return false;
    }
    final l$hasOwnerWith = hasOwnerWith;
    final lOther$hasOwnerWith = other.hasOwnerWith;
    if (_$data.containsKey('hasOwnerWith') !=
        other._$data.containsKey('hasOwnerWith')) {
      return false;
    }
    if (l$hasOwnerWith != null && lOther$hasOwnerWith != null) {
      if (l$hasOwnerWith.length != lOther$hasOwnerWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasOwnerWith.length; i++) {
        final l$hasOwnerWith$entry = l$hasOwnerWith[i];
        final lOther$hasOwnerWith$entry = lOther$hasOwnerWith[i];
        if (l$hasOwnerWith$entry != lOther$hasOwnerWith$entry) {
          return false;
        }
      }
    } else if (l$hasOwnerWith != lOther$hasOwnerWith) {
      return false;
    }
    final l$hasHashtags = hasHashtags;
    final lOther$hasHashtags = other.hasHashtags;
    if (_$data.containsKey('hasHashtags') !=
        other._$data.containsKey('hasHashtags')) {
      return false;
    }
    if (l$hasHashtags != lOther$hasHashtags) {
      return false;
    }
    final l$hasHashtagsWith = hasHashtagsWith;
    final lOther$hasHashtagsWith = other.hasHashtagsWith;
    if (_$data.containsKey('hasHashtagsWith') !=
        other._$data.containsKey('hasHashtagsWith')) {
      return false;
    }
    if (l$hasHashtagsWith != null && lOther$hasHashtagsWith != null) {
      if (l$hasHashtagsWith.length != lOther$hasHashtagsWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasHashtagsWith.length; i++) {
        final l$hasHashtagsWith$entry = l$hasHashtagsWith[i];
        final lOther$hasHashtagsWith$entry = lOther$hasHashtagsWith[i];
        if (l$hasHashtagsWith$entry != lOther$hasHashtagsWith$entry) {
          return false;
        }
      }
    } else if (l$hasHashtagsWith != lOther$hasHashtagsWith) {
      return false;
    }
    final l$hasWork = hasWork;
    final lOther$hasWork = other.hasWork;
    if (_$data.containsKey('hasWork') != other._$data.containsKey('hasWork')) {
      return false;
    }
    if (l$hasWork != lOther$hasWork) {
      return false;
    }
    final l$hasWorkWith = hasWorkWith;
    final lOther$hasWorkWith = other.hasWorkWith;
    if (_$data.containsKey('hasWorkWith') !=
        other._$data.containsKey('hasWorkWith')) {
      return false;
    }
    if (l$hasWorkWith != null && lOther$hasWorkWith != null) {
      if (l$hasWorkWith.length != lOther$hasWorkWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasWorkWith.length; i++) {
        final l$hasWorkWith$entry = l$hasWorkWith[i];
        final lOther$hasWorkWith$entry = lOther$hasWorkWith[i];
        if (l$hasWorkWith$entry != lOther$hasWorkWith$entry) {
          return false;
        }
      }
    } else if (l$hasWorkWith != lOther$hasWorkWith) {
      return false;
    }
    final l$hasCategory = hasCategory;
    final lOther$hasCategory = other.hasCategory;
    if (_$data.containsKey('hasCategory') !=
        other._$data.containsKey('hasCategory')) {
      return false;
    }
    if (l$hasCategory != lOther$hasCategory) {
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
    final l$hasLikedUsers = hasLikedUsers;
    final lOther$hasLikedUsers = other.hasLikedUsers;
    if (_$data.containsKey('hasLikedUsers') !=
        other._$data.containsKey('hasLikedUsers')) {
      return false;
    }
    if (l$hasLikedUsers != lOther$hasLikedUsers) {
      return false;
    }
    final l$hasLikedUsersWith = hasLikedUsersWith;
    final lOther$hasLikedUsersWith = other.hasLikedUsersWith;
    if (_$data.containsKey('hasLikedUsersWith') !=
        other._$data.containsKey('hasLikedUsersWith')) {
      return false;
    }
    if (l$hasLikedUsersWith != null && lOther$hasLikedUsersWith != null) {
      if (l$hasLikedUsersWith.length != lOther$hasLikedUsersWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasLikedUsersWith.length; i++) {
        final l$hasLikedUsersWith$entry = l$hasLikedUsersWith[i];
        final lOther$hasLikedUsersWith$entry = lOther$hasLikedUsersWith[i];
        if (l$hasLikedUsersWith$entry != lOther$hasLikedUsersWith$entry) {
          return false;
        }
      }
    } else if (l$hasLikedUsersWith != lOther$hasLikedUsersWith) {
      return false;
    }
    final l$hasBookmarkedUsers = hasBookmarkedUsers;
    final lOther$hasBookmarkedUsers = other.hasBookmarkedUsers;
    if (_$data.containsKey('hasBookmarkedUsers') !=
        other._$data.containsKey('hasBookmarkedUsers')) {
      return false;
    }
    if (l$hasBookmarkedUsers != lOther$hasBookmarkedUsers) {
      return false;
    }
    final l$hasBookmarkedUsersWith = hasBookmarkedUsersWith;
    final lOther$hasBookmarkedUsersWith = other.hasBookmarkedUsersWith;
    if (_$data.containsKey('hasBookmarkedUsersWith') !=
        other._$data.containsKey('hasBookmarkedUsersWith')) {
      return false;
    }
    if (l$hasBookmarkedUsersWith != null &&
        lOther$hasBookmarkedUsersWith != null) {
      if (l$hasBookmarkedUsersWith.length !=
          lOther$hasBookmarkedUsersWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasBookmarkedUsersWith.length; i++) {
        final l$hasBookmarkedUsersWith$entry = l$hasBookmarkedUsersWith[i];
        final lOther$hasBookmarkedUsersWith$entry =
            lOther$hasBookmarkedUsersWith[i];
        if (l$hasBookmarkedUsersWith$entry !=
            lOther$hasBookmarkedUsersWith$entry) {
          return false;
        }
      }
    } else if (l$hasBookmarkedUsersWith != lOther$hasBookmarkedUsersWith) {
      return false;
    }
    return true;
  }

  @override
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
    final l$hasOwner = hasOwner;
    final l$hasOwnerWith = hasOwnerWith;
    final l$hasHashtags = hasHashtags;
    final l$hasHashtagsWith = hasHashtagsWith;
    final l$hasWork = hasWork;
    final l$hasWorkWith = hasWorkWith;
    final l$hasCategory = hasCategory;
    final l$hasCategoryWith = hasCategoryWith;
    final l$hasLikedUsers = hasLikedUsers;
    final l$hasLikedUsersWith = hasLikedUsersWith;
    final l$hasBookmarkedUsers = hasBookmarkedUsers;
    final l$hasBookmarkedUsersWith = hasBookmarkedUsersWith;
    return Object.hashAll([
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idNEQ') ? l$idNEQ : const {},
      _$data.containsKey('idIn')
          ? l$idIn == null
              ? null
              : Object.hashAll(l$idIn.map((v) => v))
          : const {},
      _$data.containsKey('idNotIn')
          ? l$idNotIn == null
              ? null
              : Object.hashAll(l$idNotIn.map((v) => v))
          : const {},
      _$data.containsKey('idGT') ? l$idGT : const {},
      _$data.containsKey('idGTE') ? l$idGTE : const {},
      _$data.containsKey('idLT') ? l$idLT : const {},
      _$data.containsKey('idLTE') ? l$idLTE : const {},
      _$data.containsKey('createTime') ? l$createTime : const {},
      _$data.containsKey('createTimeNEQ') ? l$createTimeNEQ : const {},
      _$data.containsKey('createTimeIn')
          ? l$createTimeIn == null
              ? null
              : Object.hashAll(l$createTimeIn.map((v) => v))
          : const {},
      _$data.containsKey('createTimeNotIn')
          ? l$createTimeNotIn == null
              ? null
              : Object.hashAll(l$createTimeNotIn.map((v) => v))
          : const {},
      _$data.containsKey('createTimeGT') ? l$createTimeGT : const {},
      _$data.containsKey('createTimeGTE') ? l$createTimeGTE : const {},
      _$data.containsKey('createTimeLT') ? l$createTimeLT : const {},
      _$data.containsKey('createTimeLTE') ? l$createTimeLTE : const {},
      _$data.containsKey('updateTime') ? l$updateTime : const {},
      _$data.containsKey('updateTimeNEQ') ? l$updateTimeNEQ : const {},
      _$data.containsKey('updateTimeIn')
          ? l$updateTimeIn == null
              ? null
              : Object.hashAll(l$updateTimeIn.map((v) => v))
          : const {},
      _$data.containsKey('updateTimeNotIn')
          ? l$updateTimeNotIn == null
              ? null
              : Object.hashAll(l$updateTimeNotIn.map((v) => v))
          : const {},
      _$data.containsKey('updateTimeGT') ? l$updateTimeGT : const {},
      _$data.containsKey('updateTimeGTE') ? l$updateTimeGTE : const {},
      _$data.containsKey('updateTimeLT') ? l$updateTimeLT : const {},
      _$data.containsKey('updateTimeLTE') ? l$updateTimeLTE : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('titleNEQ') ? l$titleNEQ : const {},
      _$data.containsKey('titleIn')
          ? l$titleIn == null
              ? null
              : Object.hashAll(l$titleIn.map((v) => v))
          : const {},
      _$data.containsKey('titleNotIn')
          ? l$titleNotIn == null
              ? null
              : Object.hashAll(l$titleNotIn.map((v) => v))
          : const {},
      _$data.containsKey('titleGT') ? l$titleGT : const {},
      _$data.containsKey('titleGTE') ? l$titleGTE : const {},
      _$data.containsKey('titleLT') ? l$titleLT : const {},
      _$data.containsKey('titleLTE') ? l$titleLTE : const {},
      _$data.containsKey('titleContains') ? l$titleContains : const {},
      _$data.containsKey('titleHasPrefix') ? l$titleHasPrefix : const {},
      _$data.containsKey('titleHasSuffix') ? l$titleHasSuffix : const {},
      _$data.containsKey('titleEqualFold') ? l$titleEqualFold : const {},
      _$data.containsKey('titleContainsFold') ? l$titleContainsFold : const {},
      _$data.containsKey('content') ? l$content : const {},
      _$data.containsKey('contentNEQ') ? l$contentNEQ : const {},
      _$data.containsKey('contentIn')
          ? l$contentIn == null
              ? null
              : Object.hashAll(l$contentIn.map((v) => v))
          : const {},
      _$data.containsKey('contentNotIn')
          ? l$contentNotIn == null
              ? null
              : Object.hashAll(l$contentNotIn.map((v) => v))
          : const {},
      _$data.containsKey('contentGT') ? l$contentGT : const {},
      _$data.containsKey('contentGTE') ? l$contentGTE : const {},
      _$data.containsKey('contentLT') ? l$contentLT : const {},
      _$data.containsKey('contentLTE') ? l$contentLTE : const {},
      _$data.containsKey('contentContains') ? l$contentContains : const {},
      _$data.containsKey('contentHasPrefix') ? l$contentHasPrefix : const {},
      _$data.containsKey('contentHasSuffix') ? l$contentHasSuffix : const {},
      _$data.containsKey('contentEqualFold') ? l$contentEqualFold : const {},
      _$data.containsKey('contentContainsFold')
          ? l$contentContainsFold
          : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('typeNEQ') ? l$typeNEQ : const {},
      _$data.containsKey('typeIn')
          ? l$typeIn == null
              ? null
              : Object.hashAll(l$typeIn.map((v) => v))
          : const {},
      _$data.containsKey('typeNotIn')
          ? l$typeNotIn == null
              ? null
              : Object.hashAll(l$typeNotIn.map((v) => v))
          : const {},
      _$data.containsKey('spoiled') ? l$spoiled : const {},
      _$data.containsKey('spoiledNEQ') ? l$spoiledNEQ : const {},
      _$data.containsKey('thumbnail') ? l$thumbnail : const {},
      _$data.containsKey('thumbnailNEQ') ? l$thumbnailNEQ : const {},
      _$data.containsKey('thumbnailIn')
          ? l$thumbnailIn == null
              ? null
              : Object.hashAll(l$thumbnailIn.map((v) => v))
          : const {},
      _$data.containsKey('thumbnailNotIn')
          ? l$thumbnailNotIn == null
              ? null
              : Object.hashAll(l$thumbnailNotIn.map((v) => v))
          : const {},
      _$data.containsKey('thumbnailGT') ? l$thumbnailGT : const {},
      _$data.containsKey('thumbnailGTE') ? l$thumbnailGTE : const {},
      _$data.containsKey('thumbnailLT') ? l$thumbnailLT : const {},
      _$data.containsKey('thumbnailLTE') ? l$thumbnailLTE : const {},
      _$data.containsKey('thumbnailContains') ? l$thumbnailContains : const {},
      _$data.containsKey('thumbnailHasPrefix')
          ? l$thumbnailHasPrefix
          : const {},
      _$data.containsKey('thumbnailHasSuffix')
          ? l$thumbnailHasSuffix
          : const {},
      _$data.containsKey('thumbnailIsNil') ? l$thumbnailIsNil : const {},
      _$data.containsKey('thumbnailNotNil') ? l$thumbnailNotNil : const {},
      _$data.containsKey('thumbnailEqualFold')
          ? l$thumbnailEqualFold
          : const {},
      _$data.containsKey('thumbnailContainsFold')
          ? l$thumbnailContainsFold
          : const {},
      _$data.containsKey('hasOwner') ? l$hasOwner : const {},
      _$data.containsKey('hasOwnerWith')
          ? l$hasOwnerWith == null
              ? null
              : Object.hashAll(l$hasOwnerWith.map((v) => v))
          : const {},
      _$data.containsKey('hasHashtags') ? l$hasHashtags : const {},
      _$data.containsKey('hasHashtagsWith')
          ? l$hasHashtagsWith == null
              ? null
              : Object.hashAll(l$hasHashtagsWith.map((v) => v))
          : const {},
      _$data.containsKey('hasWork') ? l$hasWork : const {},
      _$data.containsKey('hasWorkWith')
          ? l$hasWorkWith == null
              ? null
              : Object.hashAll(l$hasWorkWith.map((v) => v))
          : const {},
      _$data.containsKey('hasCategory') ? l$hasCategory : const {},
      _$data.containsKey('hasCategoryWith')
          ? l$hasCategoryWith == null
              ? null
              : Object.hashAll(l$hasCategoryWith.map((v) => v))
          : const {},
      _$data.containsKey('hasLikedUsers') ? l$hasLikedUsers : const {},
      _$data.containsKey('hasLikedUsersWith')
          ? l$hasLikedUsersWith == null
              ? null
              : Object.hashAll(l$hasLikedUsersWith.map((v) => v))
          : const {},
      _$data.containsKey('hasBookmarkedUsers')
          ? l$hasBookmarkedUsers
          : const {},
      _$data.containsKey('hasBookmarkedUsersWith')
          ? l$hasBookmarkedUsersWith == null
              ? null
              : Object.hashAll(l$hasBookmarkedUsersWith.map((v) => v))
          : const {}
    ]);
  }
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
      bool? hasOwner,
      List<Input$UserWhereInput>? hasOwnerWith,
      bool? hasHashtags,
      List<Input$HashtagWhereInput>? hasHashtagsWith,
      bool? hasWork,
      List<Input$WorkWhereInput>? hasWorkWith,
      bool? hasCategory,
      List<Input$CategoryWhereInput>? hasCategoryWith,
      bool? hasLikedUsers,
      List<Input$UserWhereInput>? hasLikedUsersWith,
      bool? hasBookmarkedUsers,
      List<Input$UserWhereInput>? hasBookmarkedUsersWith});
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
  TRes hasCategoryWith(
      Iterable<Input$CategoryWhereInput>? Function(
              Iterable<
                  CopyWith$Input$CategoryWhereInput<Input$CategoryWhereInput>>?)
          _fn);
  TRes hasLikedUsersWith(
      Iterable<Input$UserWhereInput>? Function(
              Iterable<CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
          _fn);
  TRes hasBookmarkedUsersWith(
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
          Object? hasOwner = _undefined,
          Object? hasOwnerWith = _undefined,
          Object? hasHashtags = _undefined,
          Object? hasHashtagsWith = _undefined,
          Object? hasWork = _undefined,
          Object? hasWorkWith = _undefined,
          Object? hasCategory = _undefined,
          Object? hasCategoryWith = _undefined,
          Object? hasLikedUsers = _undefined,
          Object? hasLikedUsersWith = _undefined,
          Object? hasBookmarkedUsers = _undefined,
          Object? hasBookmarkedUsersWith = _undefined}) =>
      _then(Input$PostWhereInput._({
        ..._instance._$data,
        if (not != _undefined) 'not': (not as Input$PostWhereInput?),
        if (and != _undefined) 'and': (and as List<Input$PostWhereInput>?),
        if (or != _undefined) 'or': (or as List<Input$PostWhereInput>?),
        if (id != _undefined) 'id': (id as String?),
        if (idNEQ != _undefined) 'idNEQ': (idNEQ as String?),
        if (idIn != _undefined) 'idIn': (idIn as List<String>?),
        if (idNotIn != _undefined) 'idNotIn': (idNotIn as List<String>?),
        if (idGT != _undefined) 'idGT': (idGT as String?),
        if (idGTE != _undefined) 'idGTE': (idGTE as String?),
        if (idLT != _undefined) 'idLT': (idLT as String?),
        if (idLTE != _undefined) 'idLTE': (idLTE as String?),
        if (createTime != _undefined) 'createTime': (createTime as String?),
        if (createTimeNEQ != _undefined)
          'createTimeNEQ': (createTimeNEQ as String?),
        if (createTimeIn != _undefined)
          'createTimeIn': (createTimeIn as List<String>?),
        if (createTimeNotIn != _undefined)
          'createTimeNotIn': (createTimeNotIn as List<String>?),
        if (createTimeGT != _undefined)
          'createTimeGT': (createTimeGT as String?),
        if (createTimeGTE != _undefined)
          'createTimeGTE': (createTimeGTE as String?),
        if (createTimeLT != _undefined)
          'createTimeLT': (createTimeLT as String?),
        if (createTimeLTE != _undefined)
          'createTimeLTE': (createTimeLTE as String?),
        if (updateTime != _undefined) 'updateTime': (updateTime as String?),
        if (updateTimeNEQ != _undefined)
          'updateTimeNEQ': (updateTimeNEQ as String?),
        if (updateTimeIn != _undefined)
          'updateTimeIn': (updateTimeIn as List<String>?),
        if (updateTimeNotIn != _undefined)
          'updateTimeNotIn': (updateTimeNotIn as List<String>?),
        if (updateTimeGT != _undefined)
          'updateTimeGT': (updateTimeGT as String?),
        if (updateTimeGTE != _undefined)
          'updateTimeGTE': (updateTimeGTE as String?),
        if (updateTimeLT != _undefined)
          'updateTimeLT': (updateTimeLT as String?),
        if (updateTimeLTE != _undefined)
          'updateTimeLTE': (updateTimeLTE as String?),
        if (title != _undefined) 'title': (title as String?),
        if (titleNEQ != _undefined) 'titleNEQ': (titleNEQ as String?),
        if (titleIn != _undefined) 'titleIn': (titleIn as List<String>?),
        if (titleNotIn != _undefined)
          'titleNotIn': (titleNotIn as List<String>?),
        if (titleGT != _undefined) 'titleGT': (titleGT as String?),
        if (titleGTE != _undefined) 'titleGTE': (titleGTE as String?),
        if (titleLT != _undefined) 'titleLT': (titleLT as String?),
        if (titleLTE != _undefined) 'titleLTE': (titleLTE as String?),
        if (titleContains != _undefined)
          'titleContains': (titleContains as String?),
        if (titleHasPrefix != _undefined)
          'titleHasPrefix': (titleHasPrefix as String?),
        if (titleHasSuffix != _undefined)
          'titleHasSuffix': (titleHasSuffix as String?),
        if (titleEqualFold != _undefined)
          'titleEqualFold': (titleEqualFold as String?),
        if (titleContainsFold != _undefined)
          'titleContainsFold': (titleContainsFold as String?),
        if (content != _undefined) 'content': (content as String?),
        if (contentNEQ != _undefined) 'contentNEQ': (contentNEQ as String?),
        if (contentIn != _undefined) 'contentIn': (contentIn as List<String>?),
        if (contentNotIn != _undefined)
          'contentNotIn': (contentNotIn as List<String>?),
        if (contentGT != _undefined) 'contentGT': (contentGT as String?),
        if (contentGTE != _undefined) 'contentGTE': (contentGTE as String?),
        if (contentLT != _undefined) 'contentLT': (contentLT as String?),
        if (contentLTE != _undefined) 'contentLTE': (contentLTE as String?),
        if (contentContains != _undefined)
          'contentContains': (contentContains as String?),
        if (contentHasPrefix != _undefined)
          'contentHasPrefix': (contentHasPrefix as String?),
        if (contentHasSuffix != _undefined)
          'contentHasSuffix': (contentHasSuffix as String?),
        if (contentEqualFold != _undefined)
          'contentEqualFold': (contentEqualFold as String?),
        if (contentContainsFold != _undefined)
          'contentContainsFold': (contentContainsFold as String?),
        if (type != _undefined) 'type': (type as Enum$PostPostType?),
        if (typeNEQ != _undefined) 'typeNEQ': (typeNEQ as Enum$PostPostType?),
        if (typeIn != _undefined)
          'typeIn': (typeIn as List<Enum$PostPostType>?),
        if (typeNotIn != _undefined)
          'typeNotIn': (typeNotIn as List<Enum$PostPostType>?),
        if (spoiled != _undefined) 'spoiled': (spoiled as bool?),
        if (spoiledNEQ != _undefined) 'spoiledNEQ': (spoiledNEQ as bool?),
        if (thumbnail != _undefined) 'thumbnail': (thumbnail as String?),
        if (thumbnailNEQ != _undefined)
          'thumbnailNEQ': (thumbnailNEQ as String?),
        if (thumbnailIn != _undefined)
          'thumbnailIn': (thumbnailIn as List<String>?),
        if (thumbnailNotIn != _undefined)
          'thumbnailNotIn': (thumbnailNotIn as List<String>?),
        if (thumbnailGT != _undefined) 'thumbnailGT': (thumbnailGT as String?),
        if (thumbnailGTE != _undefined)
          'thumbnailGTE': (thumbnailGTE as String?),
        if (thumbnailLT != _undefined) 'thumbnailLT': (thumbnailLT as String?),
        if (thumbnailLTE != _undefined)
          'thumbnailLTE': (thumbnailLTE as String?),
        if (thumbnailContains != _undefined)
          'thumbnailContains': (thumbnailContains as String?),
        if (thumbnailHasPrefix != _undefined)
          'thumbnailHasPrefix': (thumbnailHasPrefix as String?),
        if (thumbnailHasSuffix != _undefined)
          'thumbnailHasSuffix': (thumbnailHasSuffix as String?),
        if (thumbnailIsNil != _undefined)
          'thumbnailIsNil': (thumbnailIsNil as bool?),
        if (thumbnailNotNil != _undefined)
          'thumbnailNotNil': (thumbnailNotNil as bool?),
        if (thumbnailEqualFold != _undefined)
          'thumbnailEqualFold': (thumbnailEqualFold as String?),
        if (thumbnailContainsFold != _undefined)
          'thumbnailContainsFold': (thumbnailContainsFold as String?),
        if (hasOwner != _undefined) 'hasOwner': (hasOwner as bool?),
        if (hasOwnerWith != _undefined)
          'hasOwnerWith': (hasOwnerWith as List<Input$UserWhereInput>?),
        if (hasHashtags != _undefined) 'hasHashtags': (hasHashtags as bool?),
        if (hasHashtagsWith != _undefined)
          'hasHashtagsWith':
              (hasHashtagsWith as List<Input$HashtagWhereInput>?),
        if (hasWork != _undefined) 'hasWork': (hasWork as bool?),
        if (hasWorkWith != _undefined)
          'hasWorkWith': (hasWorkWith as List<Input$WorkWhereInput>?),
        if (hasCategory != _undefined) 'hasCategory': (hasCategory as bool?),
        if (hasCategoryWith != _undefined)
          'hasCategoryWith':
              (hasCategoryWith as List<Input$CategoryWhereInput>?),
        if (hasLikedUsers != _undefined)
          'hasLikedUsers': (hasLikedUsers as bool?),
        if (hasLikedUsersWith != _undefined)
          'hasLikedUsersWith':
              (hasLikedUsersWith as List<Input$UserWhereInput>?),
        if (hasBookmarkedUsers != _undefined)
          'hasBookmarkedUsers': (hasBookmarkedUsers as bool?),
        if (hasBookmarkedUsersWith != _undefined)
          'hasBookmarkedUsersWith':
              (hasBookmarkedUsersWith as List<Input$UserWhereInput>?),
      }));
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
  TRes hasCategoryWith(
          Iterable<Input$CategoryWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$CategoryWhereInput<
                          Input$CategoryWhereInput>>?)
              _fn) =>
      call(
          hasCategoryWith: _fn(_instance.hasCategoryWith
                  ?.map((e) => CopyWith$Input$CategoryWhereInput(e, (i) => i)))
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
  TRes hasBookmarkedUsersWith(
          Iterable<Input$UserWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$UserWhereInput<Input$UserWhereInput>>?)
              _fn) =>
      call(
          hasBookmarkedUsersWith: _fn(_instance.hasBookmarkedUsersWith
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
          bool? hasOwner,
          List<Input$UserWhereInput>? hasOwnerWith,
          bool? hasHashtags,
          List<Input$HashtagWhereInput>? hasHashtagsWith,
          bool? hasWork,
          List<Input$WorkWhereInput>? hasWorkWith,
          bool? hasCategory,
          List<Input$CategoryWhereInput>? hasCategoryWith,
          bool? hasLikedUsers,
          List<Input$UserWhereInput>? hasLikedUsersWith,
          bool? hasBookmarkedUsers,
          List<Input$UserWhereInput>? hasBookmarkedUsersWith}) =>
      _res;
  CopyWith$Input$PostWhereInput<TRes> get not =>
      CopyWith$Input$PostWhereInput.stub(_res);
  and(_fn) => _res;
  or(_fn) => _res;
  hasOwnerWith(_fn) => _res;
  hasHashtagsWith(_fn) => _res;
  hasWorkWith(_fn) => _res;
  hasCategoryWith(_fn) => _res;
  hasLikedUsersWith(_fn) => _res;
  hasBookmarkedUsersWith(_fn) => _res;
}

class Input$UpdateHashtagInput {
  factory Input$UpdateHashtagInput(
          {String? title,
          List<String>? addPostIDs,
          List<String>? removePostIDs}) =>
      Input$UpdateHashtagInput._({
        if (title != null) r'title': title,
        if (addPostIDs != null) r'addPostIDs': addPostIDs,
        if (removePostIDs != null) r'removePostIDs': removePostIDs,
      });

  Input$UpdateHashtagInput._(this._$data);

  factory Input$UpdateHashtagInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('addPostIDs')) {
      final l$addPostIDs = data['addPostIDs'];
      result$data['addPostIDs'] =
          (l$addPostIDs as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('removePostIDs')) {
      final l$removePostIDs = data['removePostIDs'];
      result$data['removePostIDs'] = (l$removePostIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input$UpdateHashtagInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);
  List<String>? get addPostIDs => (_$data['addPostIDs'] as List<String>?);
  List<String>? get removePostIDs => (_$data['removePostIDs'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('addPostIDs')) {
      final l$addPostIDs = addPostIDs;
      result$data['addPostIDs'] = l$addPostIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('removePostIDs')) {
      final l$removePostIDs = removePostIDs;
      result$data['removePostIDs'] = l$removePostIDs?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateHashtagInput<Input$UpdateHashtagInput> get copyWith =>
      CopyWith$Input$UpdateHashtagInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateHashtagInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$addPostIDs = addPostIDs;
    final lOther$addPostIDs = other.addPostIDs;
    if (_$data.containsKey('addPostIDs') !=
        other._$data.containsKey('addPostIDs')) {
      return false;
    }
    if (l$addPostIDs != null && lOther$addPostIDs != null) {
      if (l$addPostIDs.length != lOther$addPostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$addPostIDs.length; i++) {
        final l$addPostIDs$entry = l$addPostIDs[i];
        final lOther$addPostIDs$entry = lOther$addPostIDs[i];
        if (l$addPostIDs$entry != lOther$addPostIDs$entry) {
          return false;
        }
      }
    } else if (l$addPostIDs != lOther$addPostIDs) {
      return false;
    }
    final l$removePostIDs = removePostIDs;
    final lOther$removePostIDs = other.removePostIDs;
    if (_$data.containsKey('removePostIDs') !=
        other._$data.containsKey('removePostIDs')) {
      return false;
    }
    if (l$removePostIDs != null && lOther$removePostIDs != null) {
      if (l$removePostIDs.length != lOther$removePostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$removePostIDs.length; i++) {
        final l$removePostIDs$entry = l$removePostIDs[i];
        final lOther$removePostIDs$entry = lOther$removePostIDs[i];
        if (l$removePostIDs$entry != lOther$removePostIDs$entry) {
          return false;
        }
      }
    } else if (l$removePostIDs != lOther$removePostIDs) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$addPostIDs = addPostIDs;
    final l$removePostIDs = removePostIDs;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('addPostIDs')
          ? l$addPostIDs == null
              ? null
              : Object.hashAll(l$addPostIDs.map((v) => v))
          : const {},
      _$data.containsKey('removePostIDs')
          ? l$removePostIDs == null
              ? null
              : Object.hashAll(l$removePostIDs.map((v) => v))
          : const {}
    ]);
  }
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
      _then(Input$UpdateHashtagInput._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (addPostIDs != _undefined)
          'addPostIDs': (addPostIDs as List<String>?),
        if (removePostIDs != _undefined)
          'removePostIDs': (removePostIDs as List<String>?),
      }));
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

class Input$UpdatePostInput {
  factory Input$UpdatePostInput(
          {String? updateTime,
          String? title,
          String? content,
          Enum$PostPostType? type,
          bool? spoiled,
          bool? clearThumbnail,
          String? thumbnail,
          bool? clearOwner,
          String? ownerID,
          List<String>? addHashtagIDs,
          List<String>? removeHashtagIDs,
          bool? clearWork,
          String? workID,
          bool? clearCategory,
          String? categoryID,
          List<String>? addLikedUserIDs,
          List<String>? removeLikedUserIDs,
          List<String>? addBookmarkedUserIDs,
          List<String>? removeBookmarkedUserIDs}) =>
      Input$UpdatePostInput._({
        if (updateTime != null) r'updateTime': updateTime,
        if (title != null) r'title': title,
        if (content != null) r'content': content,
        if (type != null) r'type': type,
        if (spoiled != null) r'spoiled': spoiled,
        if (clearThumbnail != null) r'clearThumbnail': clearThumbnail,
        if (thumbnail != null) r'thumbnail': thumbnail,
        if (clearOwner != null) r'clearOwner': clearOwner,
        if (ownerID != null) r'ownerID': ownerID,
        if (addHashtagIDs != null) r'addHashtagIDs': addHashtagIDs,
        if (removeHashtagIDs != null) r'removeHashtagIDs': removeHashtagIDs,
        if (clearWork != null) r'clearWork': clearWork,
        if (workID != null) r'workID': workID,
        if (clearCategory != null) r'clearCategory': clearCategory,
        if (categoryID != null) r'categoryID': categoryID,
        if (addLikedUserIDs != null) r'addLikedUserIDs': addLikedUserIDs,
        if (removeLikedUserIDs != null)
          r'removeLikedUserIDs': removeLikedUserIDs,
        if (addBookmarkedUserIDs != null)
          r'addBookmarkedUserIDs': addBookmarkedUserIDs,
        if (removeBookmarkedUserIDs != null)
          r'removeBookmarkedUserIDs': removeBookmarkedUserIDs,
      });

  Input$UpdatePostInput._(this._$data);

  factory Input$UpdatePostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('updateTime')) {
      final l$updateTime = data['updateTime'];
      result$data['updateTime'] = (l$updateTime as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('content')) {
      final l$content = data['content'];
      result$data['content'] = (l$content as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$PostPostType((l$type as String));
    }
    if (data.containsKey('spoiled')) {
      final l$spoiled = data['spoiled'];
      result$data['spoiled'] = (l$spoiled as bool?);
    }
    if (data.containsKey('clearThumbnail')) {
      final l$clearThumbnail = data['clearThumbnail'];
      result$data['clearThumbnail'] = (l$clearThumbnail as bool?);
    }
    if (data.containsKey('thumbnail')) {
      final l$thumbnail = data['thumbnail'];
      result$data['thumbnail'] = (l$thumbnail as String?);
    }
    if (data.containsKey('clearOwner')) {
      final l$clearOwner = data['clearOwner'];
      result$data['clearOwner'] = (l$clearOwner as bool?);
    }
    if (data.containsKey('ownerID')) {
      final l$ownerID = data['ownerID'];
      result$data['ownerID'] = (l$ownerID as String?);
    }
    if (data.containsKey('addHashtagIDs')) {
      final l$addHashtagIDs = data['addHashtagIDs'];
      result$data['addHashtagIDs'] = (l$addHashtagIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('removeHashtagIDs')) {
      final l$removeHashtagIDs = data['removeHashtagIDs'];
      result$data['removeHashtagIDs'] = (l$removeHashtagIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('clearWork')) {
      final l$clearWork = data['clearWork'];
      result$data['clearWork'] = (l$clearWork as bool?);
    }
    if (data.containsKey('workID')) {
      final l$workID = data['workID'];
      result$data['workID'] = (l$workID as String?);
    }
    if (data.containsKey('clearCategory')) {
      final l$clearCategory = data['clearCategory'];
      result$data['clearCategory'] = (l$clearCategory as bool?);
    }
    if (data.containsKey('categoryID')) {
      final l$categoryID = data['categoryID'];
      result$data['categoryID'] = (l$categoryID as String?);
    }
    if (data.containsKey('addLikedUserIDs')) {
      final l$addLikedUserIDs = data['addLikedUserIDs'];
      result$data['addLikedUserIDs'] = (l$addLikedUserIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('removeLikedUserIDs')) {
      final l$removeLikedUserIDs = data['removeLikedUserIDs'];
      result$data['removeLikedUserIDs'] =
          (l$removeLikedUserIDs as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    if (data.containsKey('addBookmarkedUserIDs')) {
      final l$addBookmarkedUserIDs = data['addBookmarkedUserIDs'];
      result$data['addBookmarkedUserIDs'] =
          (l$addBookmarkedUserIDs as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    if (data.containsKey('removeBookmarkedUserIDs')) {
      final l$removeBookmarkedUserIDs = data['removeBookmarkedUserIDs'];
      result$data['removeBookmarkedUserIDs'] =
          (l$removeBookmarkedUserIDs as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    return Input$UpdatePostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get updateTime => (_$data['updateTime'] as String?);
  String? get title => (_$data['title'] as String?);
  String? get content => (_$data['content'] as String?);
  Enum$PostPostType? get type => (_$data['type'] as Enum$PostPostType?);
  bool? get spoiled => (_$data['spoiled'] as bool?);
  bool? get clearThumbnail => (_$data['clearThumbnail'] as bool?);
  String? get thumbnail => (_$data['thumbnail'] as String?);
  bool? get clearOwner => (_$data['clearOwner'] as bool?);
  String? get ownerID => (_$data['ownerID'] as String?);
  List<String>? get addHashtagIDs => (_$data['addHashtagIDs'] as List<String>?);
  List<String>? get removeHashtagIDs =>
      (_$data['removeHashtagIDs'] as List<String>?);
  bool? get clearWork => (_$data['clearWork'] as bool?);
  String? get workID => (_$data['workID'] as String?);
  bool? get clearCategory => (_$data['clearCategory'] as bool?);
  String? get categoryID => (_$data['categoryID'] as String?);
  List<String>? get addLikedUserIDs =>
      (_$data['addLikedUserIDs'] as List<String>?);
  List<String>? get removeLikedUserIDs =>
      (_$data['removeLikedUserIDs'] as List<String>?);
  List<String>? get addBookmarkedUserIDs =>
      (_$data['addBookmarkedUserIDs'] as List<String>?);
  List<String>? get removeBookmarkedUserIDs =>
      (_$data['removeBookmarkedUserIDs'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('updateTime')) {
      final l$updateTime = updateTime;
      result$data['updateTime'] = l$updateTime;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('content')) {
      final l$content = content;
      result$data['content'] = l$content;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$PostPostType(l$type);
    }
    if (_$data.containsKey('spoiled')) {
      final l$spoiled = spoiled;
      result$data['spoiled'] = l$spoiled;
    }
    if (_$data.containsKey('clearThumbnail')) {
      final l$clearThumbnail = clearThumbnail;
      result$data['clearThumbnail'] = l$clearThumbnail;
    }
    if (_$data.containsKey('thumbnail')) {
      final l$thumbnail = thumbnail;
      result$data['thumbnail'] = l$thumbnail;
    }
    if (_$data.containsKey('clearOwner')) {
      final l$clearOwner = clearOwner;
      result$data['clearOwner'] = l$clearOwner;
    }
    if (_$data.containsKey('ownerID')) {
      final l$ownerID = ownerID;
      result$data['ownerID'] = l$ownerID;
    }
    if (_$data.containsKey('addHashtagIDs')) {
      final l$addHashtagIDs = addHashtagIDs;
      result$data['addHashtagIDs'] = l$addHashtagIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('removeHashtagIDs')) {
      final l$removeHashtagIDs = removeHashtagIDs;
      result$data['removeHashtagIDs'] =
          l$removeHashtagIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('clearWork')) {
      final l$clearWork = clearWork;
      result$data['clearWork'] = l$clearWork;
    }
    if (_$data.containsKey('workID')) {
      final l$workID = workID;
      result$data['workID'] = l$workID;
    }
    if (_$data.containsKey('clearCategory')) {
      final l$clearCategory = clearCategory;
      result$data['clearCategory'] = l$clearCategory;
    }
    if (_$data.containsKey('categoryID')) {
      final l$categoryID = categoryID;
      result$data['categoryID'] = l$categoryID;
    }
    if (_$data.containsKey('addLikedUserIDs')) {
      final l$addLikedUserIDs = addLikedUserIDs;
      result$data['addLikedUserIDs'] =
          l$addLikedUserIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('removeLikedUserIDs')) {
      final l$removeLikedUserIDs = removeLikedUserIDs;
      result$data['removeLikedUserIDs'] =
          l$removeLikedUserIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('addBookmarkedUserIDs')) {
      final l$addBookmarkedUserIDs = addBookmarkedUserIDs;
      result$data['addBookmarkedUserIDs'] =
          l$addBookmarkedUserIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('removeBookmarkedUserIDs')) {
      final l$removeBookmarkedUserIDs = removeBookmarkedUserIDs;
      result$data['removeBookmarkedUserIDs'] =
          l$removeBookmarkedUserIDs?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdatePostInput<Input$UpdatePostInput> get copyWith =>
      CopyWith$Input$UpdatePostInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdatePostInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTime = updateTime;
    final lOther$updateTime = other.updateTime;
    if (_$data.containsKey('updateTime') !=
        other._$data.containsKey('updateTime')) {
      return false;
    }
    if (l$updateTime != lOther$updateTime) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (_$data.containsKey('content') != other._$data.containsKey('content')) {
      return false;
    }
    if (l$content != lOther$content) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$spoiled = spoiled;
    final lOther$spoiled = other.spoiled;
    if (_$data.containsKey('spoiled') != other._$data.containsKey('spoiled')) {
      return false;
    }
    if (l$spoiled != lOther$spoiled) {
      return false;
    }
    final l$clearThumbnail = clearThumbnail;
    final lOther$clearThumbnail = other.clearThumbnail;
    if (_$data.containsKey('clearThumbnail') !=
        other._$data.containsKey('clearThumbnail')) {
      return false;
    }
    if (l$clearThumbnail != lOther$clearThumbnail) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (_$data.containsKey('thumbnail') !=
        other._$data.containsKey('thumbnail')) {
      return false;
    }
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$clearOwner = clearOwner;
    final lOther$clearOwner = other.clearOwner;
    if (_$data.containsKey('clearOwner') !=
        other._$data.containsKey('clearOwner')) {
      return false;
    }
    if (l$clearOwner != lOther$clearOwner) {
      return false;
    }
    final l$ownerID = ownerID;
    final lOther$ownerID = other.ownerID;
    if (_$data.containsKey('ownerID') != other._$data.containsKey('ownerID')) {
      return false;
    }
    if (l$ownerID != lOther$ownerID) {
      return false;
    }
    final l$addHashtagIDs = addHashtagIDs;
    final lOther$addHashtagIDs = other.addHashtagIDs;
    if (_$data.containsKey('addHashtagIDs') !=
        other._$data.containsKey('addHashtagIDs')) {
      return false;
    }
    if (l$addHashtagIDs != null && lOther$addHashtagIDs != null) {
      if (l$addHashtagIDs.length != lOther$addHashtagIDs.length) {
        return false;
      }
      for (int i = 0; i < l$addHashtagIDs.length; i++) {
        final l$addHashtagIDs$entry = l$addHashtagIDs[i];
        final lOther$addHashtagIDs$entry = lOther$addHashtagIDs[i];
        if (l$addHashtagIDs$entry != lOther$addHashtagIDs$entry) {
          return false;
        }
      }
    } else if (l$addHashtagIDs != lOther$addHashtagIDs) {
      return false;
    }
    final l$removeHashtagIDs = removeHashtagIDs;
    final lOther$removeHashtagIDs = other.removeHashtagIDs;
    if (_$data.containsKey('removeHashtagIDs') !=
        other._$data.containsKey('removeHashtagIDs')) {
      return false;
    }
    if (l$removeHashtagIDs != null && lOther$removeHashtagIDs != null) {
      if (l$removeHashtagIDs.length != lOther$removeHashtagIDs.length) {
        return false;
      }
      for (int i = 0; i < l$removeHashtagIDs.length; i++) {
        final l$removeHashtagIDs$entry = l$removeHashtagIDs[i];
        final lOther$removeHashtagIDs$entry = lOther$removeHashtagIDs[i];
        if (l$removeHashtagIDs$entry != lOther$removeHashtagIDs$entry) {
          return false;
        }
      }
    } else if (l$removeHashtagIDs != lOther$removeHashtagIDs) {
      return false;
    }
    final l$clearWork = clearWork;
    final lOther$clearWork = other.clearWork;
    if (_$data.containsKey('clearWork') !=
        other._$data.containsKey('clearWork')) {
      return false;
    }
    if (l$clearWork != lOther$clearWork) {
      return false;
    }
    final l$workID = workID;
    final lOther$workID = other.workID;
    if (_$data.containsKey('workID') != other._$data.containsKey('workID')) {
      return false;
    }
    if (l$workID != lOther$workID) {
      return false;
    }
    final l$clearCategory = clearCategory;
    final lOther$clearCategory = other.clearCategory;
    if (_$data.containsKey('clearCategory') !=
        other._$data.containsKey('clearCategory')) {
      return false;
    }
    if (l$clearCategory != lOther$clearCategory) {
      return false;
    }
    final l$categoryID = categoryID;
    final lOther$categoryID = other.categoryID;
    if (_$data.containsKey('categoryID') !=
        other._$data.containsKey('categoryID')) {
      return false;
    }
    if (l$categoryID != lOther$categoryID) {
      return false;
    }
    final l$addLikedUserIDs = addLikedUserIDs;
    final lOther$addLikedUserIDs = other.addLikedUserIDs;
    if (_$data.containsKey('addLikedUserIDs') !=
        other._$data.containsKey('addLikedUserIDs')) {
      return false;
    }
    if (l$addLikedUserIDs != null && lOther$addLikedUserIDs != null) {
      if (l$addLikedUserIDs.length != lOther$addLikedUserIDs.length) {
        return false;
      }
      for (int i = 0; i < l$addLikedUserIDs.length; i++) {
        final l$addLikedUserIDs$entry = l$addLikedUserIDs[i];
        final lOther$addLikedUserIDs$entry = lOther$addLikedUserIDs[i];
        if (l$addLikedUserIDs$entry != lOther$addLikedUserIDs$entry) {
          return false;
        }
      }
    } else if (l$addLikedUserIDs != lOther$addLikedUserIDs) {
      return false;
    }
    final l$removeLikedUserIDs = removeLikedUserIDs;
    final lOther$removeLikedUserIDs = other.removeLikedUserIDs;
    if (_$data.containsKey('removeLikedUserIDs') !=
        other._$data.containsKey('removeLikedUserIDs')) {
      return false;
    }
    if (l$removeLikedUserIDs != null && lOther$removeLikedUserIDs != null) {
      if (l$removeLikedUserIDs.length != lOther$removeLikedUserIDs.length) {
        return false;
      }
      for (int i = 0; i < l$removeLikedUserIDs.length; i++) {
        final l$removeLikedUserIDs$entry = l$removeLikedUserIDs[i];
        final lOther$removeLikedUserIDs$entry = lOther$removeLikedUserIDs[i];
        if (l$removeLikedUserIDs$entry != lOther$removeLikedUserIDs$entry) {
          return false;
        }
      }
    } else if (l$removeLikedUserIDs != lOther$removeLikedUserIDs) {
      return false;
    }
    final l$addBookmarkedUserIDs = addBookmarkedUserIDs;
    final lOther$addBookmarkedUserIDs = other.addBookmarkedUserIDs;
    if (_$data.containsKey('addBookmarkedUserIDs') !=
        other._$data.containsKey('addBookmarkedUserIDs')) {
      return false;
    }
    if (l$addBookmarkedUserIDs != null && lOther$addBookmarkedUserIDs != null) {
      if (l$addBookmarkedUserIDs.length != lOther$addBookmarkedUserIDs.length) {
        return false;
      }
      for (int i = 0; i < l$addBookmarkedUserIDs.length; i++) {
        final l$addBookmarkedUserIDs$entry = l$addBookmarkedUserIDs[i];
        final lOther$addBookmarkedUserIDs$entry =
            lOther$addBookmarkedUserIDs[i];
        if (l$addBookmarkedUserIDs$entry != lOther$addBookmarkedUserIDs$entry) {
          return false;
        }
      }
    } else if (l$addBookmarkedUserIDs != lOther$addBookmarkedUserIDs) {
      return false;
    }
    final l$removeBookmarkedUserIDs = removeBookmarkedUserIDs;
    final lOther$removeBookmarkedUserIDs = other.removeBookmarkedUserIDs;
    if (_$data.containsKey('removeBookmarkedUserIDs') !=
        other._$data.containsKey('removeBookmarkedUserIDs')) {
      return false;
    }
    if (l$removeBookmarkedUserIDs != null &&
        lOther$removeBookmarkedUserIDs != null) {
      if (l$removeBookmarkedUserIDs.length !=
          lOther$removeBookmarkedUserIDs.length) {
        return false;
      }
      for (int i = 0; i < l$removeBookmarkedUserIDs.length; i++) {
        final l$removeBookmarkedUserIDs$entry = l$removeBookmarkedUserIDs[i];
        final lOther$removeBookmarkedUserIDs$entry =
            lOther$removeBookmarkedUserIDs[i];
        if (l$removeBookmarkedUserIDs$entry !=
            lOther$removeBookmarkedUserIDs$entry) {
          return false;
        }
      }
    } else if (l$removeBookmarkedUserIDs != lOther$removeBookmarkedUserIDs) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$updateTime = updateTime;
    final l$title = title;
    final l$content = content;
    final l$type = type;
    final l$spoiled = spoiled;
    final l$clearThumbnail = clearThumbnail;
    final l$thumbnail = thumbnail;
    final l$clearOwner = clearOwner;
    final l$ownerID = ownerID;
    final l$addHashtagIDs = addHashtagIDs;
    final l$removeHashtagIDs = removeHashtagIDs;
    final l$clearWork = clearWork;
    final l$workID = workID;
    final l$clearCategory = clearCategory;
    final l$categoryID = categoryID;
    final l$addLikedUserIDs = addLikedUserIDs;
    final l$removeLikedUserIDs = removeLikedUserIDs;
    final l$addBookmarkedUserIDs = addBookmarkedUserIDs;
    final l$removeBookmarkedUserIDs = removeBookmarkedUserIDs;
    return Object.hashAll([
      _$data.containsKey('updateTime') ? l$updateTime : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('content') ? l$content : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('spoiled') ? l$spoiled : const {},
      _$data.containsKey('clearThumbnail') ? l$clearThumbnail : const {},
      _$data.containsKey('thumbnail') ? l$thumbnail : const {},
      _$data.containsKey('clearOwner') ? l$clearOwner : const {},
      _$data.containsKey('ownerID') ? l$ownerID : const {},
      _$data.containsKey('addHashtagIDs')
          ? l$addHashtagIDs == null
              ? null
              : Object.hashAll(l$addHashtagIDs.map((v) => v))
          : const {},
      _$data.containsKey('removeHashtagIDs')
          ? l$removeHashtagIDs == null
              ? null
              : Object.hashAll(l$removeHashtagIDs.map((v) => v))
          : const {},
      _$data.containsKey('clearWork') ? l$clearWork : const {},
      _$data.containsKey('workID') ? l$workID : const {},
      _$data.containsKey('clearCategory') ? l$clearCategory : const {},
      _$data.containsKey('categoryID') ? l$categoryID : const {},
      _$data.containsKey('addLikedUserIDs')
          ? l$addLikedUserIDs == null
              ? null
              : Object.hashAll(l$addLikedUserIDs.map((v) => v))
          : const {},
      _$data.containsKey('removeLikedUserIDs')
          ? l$removeLikedUserIDs == null
              ? null
              : Object.hashAll(l$removeLikedUserIDs.map((v) => v))
          : const {},
      _$data.containsKey('addBookmarkedUserIDs')
          ? l$addBookmarkedUserIDs == null
              ? null
              : Object.hashAll(l$addBookmarkedUserIDs.map((v) => v))
          : const {},
      _$data.containsKey('removeBookmarkedUserIDs')
          ? l$removeBookmarkedUserIDs == null
              ? null
              : Object.hashAll(l$removeBookmarkedUserIDs.map((v) => v))
          : const {}
    ]);
  }
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
      bool? clearThumbnail,
      String? thumbnail,
      bool? clearOwner,
      String? ownerID,
      List<String>? addHashtagIDs,
      List<String>? removeHashtagIDs,
      bool? clearWork,
      String? workID,
      bool? clearCategory,
      String? categoryID,
      List<String>? addLikedUserIDs,
      List<String>? removeLikedUserIDs,
      List<String>? addBookmarkedUserIDs,
      List<String>? removeBookmarkedUserIDs});
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
          Object? clearThumbnail = _undefined,
          Object? thumbnail = _undefined,
          Object? clearOwner = _undefined,
          Object? ownerID = _undefined,
          Object? addHashtagIDs = _undefined,
          Object? removeHashtagIDs = _undefined,
          Object? clearWork = _undefined,
          Object? workID = _undefined,
          Object? clearCategory = _undefined,
          Object? categoryID = _undefined,
          Object? addLikedUserIDs = _undefined,
          Object? removeLikedUserIDs = _undefined,
          Object? addBookmarkedUserIDs = _undefined,
          Object? removeBookmarkedUserIDs = _undefined}) =>
      _then(Input$UpdatePostInput._({
        ..._instance._$data,
        if (updateTime != _undefined) 'updateTime': (updateTime as String?),
        if (title != _undefined) 'title': (title as String?),
        if (content != _undefined) 'content': (content as String?),
        if (type != _undefined) 'type': (type as Enum$PostPostType?),
        if (spoiled != _undefined) 'spoiled': (spoiled as bool?),
        if (clearThumbnail != _undefined)
          'clearThumbnail': (clearThumbnail as bool?),
        if (thumbnail != _undefined) 'thumbnail': (thumbnail as String?),
        if (clearOwner != _undefined) 'clearOwner': (clearOwner as bool?),
        if (ownerID != _undefined) 'ownerID': (ownerID as String?),
        if (addHashtagIDs != _undefined)
          'addHashtagIDs': (addHashtagIDs as List<String>?),
        if (removeHashtagIDs != _undefined)
          'removeHashtagIDs': (removeHashtagIDs as List<String>?),
        if (clearWork != _undefined) 'clearWork': (clearWork as bool?),
        if (workID != _undefined) 'workID': (workID as String?),
        if (clearCategory != _undefined)
          'clearCategory': (clearCategory as bool?),
        if (categoryID != _undefined) 'categoryID': (categoryID as String?),
        if (addLikedUserIDs != _undefined)
          'addLikedUserIDs': (addLikedUserIDs as List<String>?),
        if (removeLikedUserIDs != _undefined)
          'removeLikedUserIDs': (removeLikedUserIDs as List<String>?),
        if (addBookmarkedUserIDs != _undefined)
          'addBookmarkedUserIDs': (addBookmarkedUserIDs as List<String>?),
        if (removeBookmarkedUserIDs != _undefined)
          'removeBookmarkedUserIDs': (removeBookmarkedUserIDs as List<String>?),
      }));
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
          bool? clearThumbnail,
          String? thumbnail,
          bool? clearOwner,
          String? ownerID,
          List<String>? addHashtagIDs,
          List<String>? removeHashtagIDs,
          bool? clearWork,
          String? workID,
          bool? clearCategory,
          String? categoryID,
          List<String>? addLikedUserIDs,
          List<String>? removeLikedUserIDs,
          List<String>? addBookmarkedUserIDs,
          List<String>? removeBookmarkedUserIDs}) =>
      _res;
}

class Input$UpdateUserInput {
  factory Input$UpdateUserInput(
          {String? name,
          bool? clearUsername,
          String? username,
          bool? clearProfile,
          String? profile,
          bool? clearAvatarURL,
          String? avatarURL,
          List<String>? addPostIDs,
          List<String>? removePostIDs,
          List<String>? addLikedPostIDs,
          List<String>? removeLikedPostIDs,
          List<String>? addBookmarkedPostIDs,
          List<String>? removeBookmarkedPostIDs}) =>
      Input$UpdateUserInput._({
        if (name != null) r'name': name,
        if (clearUsername != null) r'clearUsername': clearUsername,
        if (username != null) r'username': username,
        if (clearProfile != null) r'clearProfile': clearProfile,
        if (profile != null) r'profile': profile,
        if (clearAvatarURL != null) r'clearAvatarURL': clearAvatarURL,
        if (avatarURL != null) r'avatarURL': avatarURL,
        if (addPostIDs != null) r'addPostIDs': addPostIDs,
        if (removePostIDs != null) r'removePostIDs': removePostIDs,
        if (addLikedPostIDs != null) r'addLikedPostIDs': addLikedPostIDs,
        if (removeLikedPostIDs != null)
          r'removeLikedPostIDs': removeLikedPostIDs,
        if (addBookmarkedPostIDs != null)
          r'addBookmarkedPostIDs': addBookmarkedPostIDs,
        if (removeBookmarkedPostIDs != null)
          r'removeBookmarkedPostIDs': removeBookmarkedPostIDs,
      });

  Input$UpdateUserInput._(this._$data);

  factory Input$UpdateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('clearUsername')) {
      final l$clearUsername = data['clearUsername'];
      result$data['clearUsername'] = (l$clearUsername as bool?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('clearProfile')) {
      final l$clearProfile = data['clearProfile'];
      result$data['clearProfile'] = (l$clearProfile as bool?);
    }
    if (data.containsKey('profile')) {
      final l$profile = data['profile'];
      result$data['profile'] = (l$profile as String?);
    }
    if (data.containsKey('clearAvatarURL')) {
      final l$clearAvatarURL = data['clearAvatarURL'];
      result$data['clearAvatarURL'] = (l$clearAvatarURL as bool?);
    }
    if (data.containsKey('avatarURL')) {
      final l$avatarURL = data['avatarURL'];
      result$data['avatarURL'] = (l$avatarURL as String?);
    }
    if (data.containsKey('addPostIDs')) {
      final l$addPostIDs = data['addPostIDs'];
      result$data['addPostIDs'] =
          (l$addPostIDs as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('removePostIDs')) {
      final l$removePostIDs = data['removePostIDs'];
      result$data['removePostIDs'] = (l$removePostIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('addLikedPostIDs')) {
      final l$addLikedPostIDs = data['addLikedPostIDs'];
      result$data['addLikedPostIDs'] = (l$addLikedPostIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('removeLikedPostIDs')) {
      final l$removeLikedPostIDs = data['removeLikedPostIDs'];
      result$data['removeLikedPostIDs'] =
          (l$removeLikedPostIDs as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    if (data.containsKey('addBookmarkedPostIDs')) {
      final l$addBookmarkedPostIDs = data['addBookmarkedPostIDs'];
      result$data['addBookmarkedPostIDs'] =
          (l$addBookmarkedPostIDs as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    if (data.containsKey('removeBookmarkedPostIDs')) {
      final l$removeBookmarkedPostIDs = data['removeBookmarkedPostIDs'];
      result$data['removeBookmarkedPostIDs'] =
          (l$removeBookmarkedPostIDs as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    return Input$UpdateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  bool? get clearUsername => (_$data['clearUsername'] as bool?);
  String? get username => (_$data['username'] as String?);
  bool? get clearProfile => (_$data['clearProfile'] as bool?);
  String? get profile => (_$data['profile'] as String?);
  bool? get clearAvatarURL => (_$data['clearAvatarURL'] as bool?);
  String? get avatarURL => (_$data['avatarURL'] as String?);
  List<String>? get addPostIDs => (_$data['addPostIDs'] as List<String>?);
  List<String>? get removePostIDs => (_$data['removePostIDs'] as List<String>?);
  List<String>? get addLikedPostIDs =>
      (_$data['addLikedPostIDs'] as List<String>?);
  List<String>? get removeLikedPostIDs =>
      (_$data['removeLikedPostIDs'] as List<String>?);
  List<String>? get addBookmarkedPostIDs =>
      (_$data['addBookmarkedPostIDs'] as List<String>?);
  List<String>? get removeBookmarkedPostIDs =>
      (_$data['removeBookmarkedPostIDs'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('clearUsername')) {
      final l$clearUsername = clearUsername;
      result$data['clearUsername'] = l$clearUsername;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('clearProfile')) {
      final l$clearProfile = clearProfile;
      result$data['clearProfile'] = l$clearProfile;
    }
    if (_$data.containsKey('profile')) {
      final l$profile = profile;
      result$data['profile'] = l$profile;
    }
    if (_$data.containsKey('clearAvatarURL')) {
      final l$clearAvatarURL = clearAvatarURL;
      result$data['clearAvatarURL'] = l$clearAvatarURL;
    }
    if (_$data.containsKey('avatarURL')) {
      final l$avatarURL = avatarURL;
      result$data['avatarURL'] = l$avatarURL;
    }
    if (_$data.containsKey('addPostIDs')) {
      final l$addPostIDs = addPostIDs;
      result$data['addPostIDs'] = l$addPostIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('removePostIDs')) {
      final l$removePostIDs = removePostIDs;
      result$data['removePostIDs'] = l$removePostIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('addLikedPostIDs')) {
      final l$addLikedPostIDs = addLikedPostIDs;
      result$data['addLikedPostIDs'] =
          l$addLikedPostIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('removeLikedPostIDs')) {
      final l$removeLikedPostIDs = removeLikedPostIDs;
      result$data['removeLikedPostIDs'] =
          l$removeLikedPostIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('addBookmarkedPostIDs')) {
      final l$addBookmarkedPostIDs = addBookmarkedPostIDs;
      result$data['addBookmarkedPostIDs'] =
          l$addBookmarkedPostIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('removeBookmarkedPostIDs')) {
      final l$removeBookmarkedPostIDs = removeBookmarkedPostIDs;
      result$data['removeBookmarkedPostIDs'] =
          l$removeBookmarkedPostIDs?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateUserInput<Input$UpdateUserInput> get copyWith =>
      CopyWith$Input$UpdateUserInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateUserInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$clearUsername = clearUsername;
    final lOther$clearUsername = other.clearUsername;
    if (_$data.containsKey('clearUsername') !=
        other._$data.containsKey('clearUsername')) {
      return false;
    }
    if (l$clearUsername != lOther$clearUsername) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$clearProfile = clearProfile;
    final lOther$clearProfile = other.clearProfile;
    if (_$data.containsKey('clearProfile') !=
        other._$data.containsKey('clearProfile')) {
      return false;
    }
    if (l$clearProfile != lOther$clearProfile) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (_$data.containsKey('profile') != other._$data.containsKey('profile')) {
      return false;
    }
    if (l$profile != lOther$profile) {
      return false;
    }
    final l$clearAvatarURL = clearAvatarURL;
    final lOther$clearAvatarURL = other.clearAvatarURL;
    if (_$data.containsKey('clearAvatarURL') !=
        other._$data.containsKey('clearAvatarURL')) {
      return false;
    }
    if (l$clearAvatarURL != lOther$clearAvatarURL) {
      return false;
    }
    final l$avatarURL = avatarURL;
    final lOther$avatarURL = other.avatarURL;
    if (_$data.containsKey('avatarURL') !=
        other._$data.containsKey('avatarURL')) {
      return false;
    }
    if (l$avatarURL != lOther$avatarURL) {
      return false;
    }
    final l$addPostIDs = addPostIDs;
    final lOther$addPostIDs = other.addPostIDs;
    if (_$data.containsKey('addPostIDs') !=
        other._$data.containsKey('addPostIDs')) {
      return false;
    }
    if (l$addPostIDs != null && lOther$addPostIDs != null) {
      if (l$addPostIDs.length != lOther$addPostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$addPostIDs.length; i++) {
        final l$addPostIDs$entry = l$addPostIDs[i];
        final lOther$addPostIDs$entry = lOther$addPostIDs[i];
        if (l$addPostIDs$entry != lOther$addPostIDs$entry) {
          return false;
        }
      }
    } else if (l$addPostIDs != lOther$addPostIDs) {
      return false;
    }
    final l$removePostIDs = removePostIDs;
    final lOther$removePostIDs = other.removePostIDs;
    if (_$data.containsKey('removePostIDs') !=
        other._$data.containsKey('removePostIDs')) {
      return false;
    }
    if (l$removePostIDs != null && lOther$removePostIDs != null) {
      if (l$removePostIDs.length != lOther$removePostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$removePostIDs.length; i++) {
        final l$removePostIDs$entry = l$removePostIDs[i];
        final lOther$removePostIDs$entry = lOther$removePostIDs[i];
        if (l$removePostIDs$entry != lOther$removePostIDs$entry) {
          return false;
        }
      }
    } else if (l$removePostIDs != lOther$removePostIDs) {
      return false;
    }
    final l$addLikedPostIDs = addLikedPostIDs;
    final lOther$addLikedPostIDs = other.addLikedPostIDs;
    if (_$data.containsKey('addLikedPostIDs') !=
        other._$data.containsKey('addLikedPostIDs')) {
      return false;
    }
    if (l$addLikedPostIDs != null && lOther$addLikedPostIDs != null) {
      if (l$addLikedPostIDs.length != lOther$addLikedPostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$addLikedPostIDs.length; i++) {
        final l$addLikedPostIDs$entry = l$addLikedPostIDs[i];
        final lOther$addLikedPostIDs$entry = lOther$addLikedPostIDs[i];
        if (l$addLikedPostIDs$entry != lOther$addLikedPostIDs$entry) {
          return false;
        }
      }
    } else if (l$addLikedPostIDs != lOther$addLikedPostIDs) {
      return false;
    }
    final l$removeLikedPostIDs = removeLikedPostIDs;
    final lOther$removeLikedPostIDs = other.removeLikedPostIDs;
    if (_$data.containsKey('removeLikedPostIDs') !=
        other._$data.containsKey('removeLikedPostIDs')) {
      return false;
    }
    if (l$removeLikedPostIDs != null && lOther$removeLikedPostIDs != null) {
      if (l$removeLikedPostIDs.length != lOther$removeLikedPostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$removeLikedPostIDs.length; i++) {
        final l$removeLikedPostIDs$entry = l$removeLikedPostIDs[i];
        final lOther$removeLikedPostIDs$entry = lOther$removeLikedPostIDs[i];
        if (l$removeLikedPostIDs$entry != lOther$removeLikedPostIDs$entry) {
          return false;
        }
      }
    } else if (l$removeLikedPostIDs != lOther$removeLikedPostIDs) {
      return false;
    }
    final l$addBookmarkedPostIDs = addBookmarkedPostIDs;
    final lOther$addBookmarkedPostIDs = other.addBookmarkedPostIDs;
    if (_$data.containsKey('addBookmarkedPostIDs') !=
        other._$data.containsKey('addBookmarkedPostIDs')) {
      return false;
    }
    if (l$addBookmarkedPostIDs != null && lOther$addBookmarkedPostIDs != null) {
      if (l$addBookmarkedPostIDs.length != lOther$addBookmarkedPostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$addBookmarkedPostIDs.length; i++) {
        final l$addBookmarkedPostIDs$entry = l$addBookmarkedPostIDs[i];
        final lOther$addBookmarkedPostIDs$entry =
            lOther$addBookmarkedPostIDs[i];
        if (l$addBookmarkedPostIDs$entry != lOther$addBookmarkedPostIDs$entry) {
          return false;
        }
      }
    } else if (l$addBookmarkedPostIDs != lOther$addBookmarkedPostIDs) {
      return false;
    }
    final l$removeBookmarkedPostIDs = removeBookmarkedPostIDs;
    final lOther$removeBookmarkedPostIDs = other.removeBookmarkedPostIDs;
    if (_$data.containsKey('removeBookmarkedPostIDs') !=
        other._$data.containsKey('removeBookmarkedPostIDs')) {
      return false;
    }
    if (l$removeBookmarkedPostIDs != null &&
        lOther$removeBookmarkedPostIDs != null) {
      if (l$removeBookmarkedPostIDs.length !=
          lOther$removeBookmarkedPostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$removeBookmarkedPostIDs.length; i++) {
        final l$removeBookmarkedPostIDs$entry = l$removeBookmarkedPostIDs[i];
        final lOther$removeBookmarkedPostIDs$entry =
            lOther$removeBookmarkedPostIDs[i];
        if (l$removeBookmarkedPostIDs$entry !=
            lOther$removeBookmarkedPostIDs$entry) {
          return false;
        }
      }
    } else if (l$removeBookmarkedPostIDs != lOther$removeBookmarkedPostIDs) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$clearUsername = clearUsername;
    final l$username = username;
    final l$clearProfile = clearProfile;
    final l$profile = profile;
    final l$clearAvatarURL = clearAvatarURL;
    final l$avatarURL = avatarURL;
    final l$addPostIDs = addPostIDs;
    final l$removePostIDs = removePostIDs;
    final l$addLikedPostIDs = addLikedPostIDs;
    final l$removeLikedPostIDs = removeLikedPostIDs;
    final l$addBookmarkedPostIDs = addBookmarkedPostIDs;
    final l$removeBookmarkedPostIDs = removeBookmarkedPostIDs;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('clearUsername') ? l$clearUsername : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('clearProfile') ? l$clearProfile : const {},
      _$data.containsKey('profile') ? l$profile : const {},
      _$data.containsKey('clearAvatarURL') ? l$clearAvatarURL : const {},
      _$data.containsKey('avatarURL') ? l$avatarURL : const {},
      _$data.containsKey('addPostIDs')
          ? l$addPostIDs == null
              ? null
              : Object.hashAll(l$addPostIDs.map((v) => v))
          : const {},
      _$data.containsKey('removePostIDs')
          ? l$removePostIDs == null
              ? null
              : Object.hashAll(l$removePostIDs.map((v) => v))
          : const {},
      _$data.containsKey('addLikedPostIDs')
          ? l$addLikedPostIDs == null
              ? null
              : Object.hashAll(l$addLikedPostIDs.map((v) => v))
          : const {},
      _$data.containsKey('removeLikedPostIDs')
          ? l$removeLikedPostIDs == null
              ? null
              : Object.hashAll(l$removeLikedPostIDs.map((v) => v))
          : const {},
      _$data.containsKey('addBookmarkedPostIDs')
          ? l$addBookmarkedPostIDs == null
              ? null
              : Object.hashAll(l$addBookmarkedPostIDs.map((v) => v))
          : const {},
      _$data.containsKey('removeBookmarkedPostIDs')
          ? l$removeBookmarkedPostIDs == null
              ? null
              : Object.hashAll(l$removeBookmarkedPostIDs.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$UpdateUserInput<TRes> {
  factory CopyWith$Input$UpdateUserInput(Input$UpdateUserInput instance,
          TRes Function(Input$UpdateUserInput) then) =
      _CopyWithImpl$Input$UpdateUserInput;

  factory CopyWith$Input$UpdateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserInput;

  TRes call(
      {String? name,
      bool? clearUsername,
      String? username,
      bool? clearProfile,
      String? profile,
      bool? clearAvatarURL,
      String? avatarURL,
      List<String>? addPostIDs,
      List<String>? removePostIDs,
      List<String>? addLikedPostIDs,
      List<String>? removeLikedPostIDs,
      List<String>? addBookmarkedPostIDs,
      List<String>? removeBookmarkedPostIDs});
}

class _CopyWithImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithImpl$Input$UpdateUserInput(this._instance, this._then);

  final Input$UpdateUserInput _instance;

  final TRes Function(Input$UpdateUserInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? clearUsername = _undefined,
          Object? username = _undefined,
          Object? clearProfile = _undefined,
          Object? profile = _undefined,
          Object? clearAvatarURL = _undefined,
          Object? avatarURL = _undefined,
          Object? addPostIDs = _undefined,
          Object? removePostIDs = _undefined,
          Object? addLikedPostIDs = _undefined,
          Object? removeLikedPostIDs = _undefined,
          Object? addBookmarkedPostIDs = _undefined,
          Object? removeBookmarkedPostIDs = _undefined}) =>
      _then(Input$UpdateUserInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (clearUsername != _undefined)
          'clearUsername': (clearUsername as bool?),
        if (username != _undefined) 'username': (username as String?),
        if (clearProfile != _undefined) 'clearProfile': (clearProfile as bool?),
        if (profile != _undefined) 'profile': (profile as String?),
        if (clearAvatarURL != _undefined)
          'clearAvatarURL': (clearAvatarURL as bool?),
        if (avatarURL != _undefined) 'avatarURL': (avatarURL as String?),
        if (addPostIDs != _undefined)
          'addPostIDs': (addPostIDs as List<String>?),
        if (removePostIDs != _undefined)
          'removePostIDs': (removePostIDs as List<String>?),
        if (addLikedPostIDs != _undefined)
          'addLikedPostIDs': (addLikedPostIDs as List<String>?),
        if (removeLikedPostIDs != _undefined)
          'removeLikedPostIDs': (removeLikedPostIDs as List<String>?),
        if (addBookmarkedPostIDs != _undefined)
          'addBookmarkedPostIDs': (addBookmarkedPostIDs as List<String>?),
        if (removeBookmarkedPostIDs != _undefined)
          'removeBookmarkedPostIDs': (removeBookmarkedPostIDs as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithStubImpl$Input$UpdateUserInput(this._res);

  TRes _res;

  call(
          {String? name,
          bool? clearUsername,
          String? username,
          bool? clearProfile,
          String? profile,
          bool? clearAvatarURL,
          String? avatarURL,
          List<String>? addPostIDs,
          List<String>? removePostIDs,
          List<String>? addLikedPostIDs,
          List<String>? removeLikedPostIDs,
          List<String>? addBookmarkedPostIDs,
          List<String>? removeBookmarkedPostIDs}) =>
      _res;
}

class Input$UpdateWorkInput {
  factory Input$UpdateWorkInput(
          {String? title,
          bool? clearThumbnail,
          String? thumbnail,
          List<String>? addPostIDs,
          List<String>? removePostIDs}) =>
      Input$UpdateWorkInput._({
        if (title != null) r'title': title,
        if (clearThumbnail != null) r'clearThumbnail': clearThumbnail,
        if (thumbnail != null) r'thumbnail': thumbnail,
        if (addPostIDs != null) r'addPostIDs': addPostIDs,
        if (removePostIDs != null) r'removePostIDs': removePostIDs,
      });

  Input$UpdateWorkInput._(this._$data);

  factory Input$UpdateWorkInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('clearThumbnail')) {
      final l$clearThumbnail = data['clearThumbnail'];
      result$data['clearThumbnail'] = (l$clearThumbnail as bool?);
    }
    if (data.containsKey('thumbnail')) {
      final l$thumbnail = data['thumbnail'];
      result$data['thumbnail'] = (l$thumbnail as String?);
    }
    if (data.containsKey('addPostIDs')) {
      final l$addPostIDs = data['addPostIDs'];
      result$data['addPostIDs'] =
          (l$addPostIDs as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('removePostIDs')) {
      final l$removePostIDs = data['removePostIDs'];
      result$data['removePostIDs'] = (l$removePostIDs as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input$UpdateWorkInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);
  bool? get clearThumbnail => (_$data['clearThumbnail'] as bool?);
  String? get thumbnail => (_$data['thumbnail'] as String?);
  List<String>? get addPostIDs => (_$data['addPostIDs'] as List<String>?);
  List<String>? get removePostIDs => (_$data['removePostIDs'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('clearThumbnail')) {
      final l$clearThumbnail = clearThumbnail;
      result$data['clearThumbnail'] = l$clearThumbnail;
    }
    if (_$data.containsKey('thumbnail')) {
      final l$thumbnail = thumbnail;
      result$data['thumbnail'] = l$thumbnail;
    }
    if (_$data.containsKey('addPostIDs')) {
      final l$addPostIDs = addPostIDs;
      result$data['addPostIDs'] = l$addPostIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('removePostIDs')) {
      final l$removePostIDs = removePostIDs;
      result$data['removePostIDs'] = l$removePostIDs?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateWorkInput<Input$UpdateWorkInput> get copyWith =>
      CopyWith$Input$UpdateWorkInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateWorkInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$clearThumbnail = clearThumbnail;
    final lOther$clearThumbnail = other.clearThumbnail;
    if (_$data.containsKey('clearThumbnail') !=
        other._$data.containsKey('clearThumbnail')) {
      return false;
    }
    if (l$clearThumbnail != lOther$clearThumbnail) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (_$data.containsKey('thumbnail') !=
        other._$data.containsKey('thumbnail')) {
      return false;
    }
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$addPostIDs = addPostIDs;
    final lOther$addPostIDs = other.addPostIDs;
    if (_$data.containsKey('addPostIDs') !=
        other._$data.containsKey('addPostIDs')) {
      return false;
    }
    if (l$addPostIDs != null && lOther$addPostIDs != null) {
      if (l$addPostIDs.length != lOther$addPostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$addPostIDs.length; i++) {
        final l$addPostIDs$entry = l$addPostIDs[i];
        final lOther$addPostIDs$entry = lOther$addPostIDs[i];
        if (l$addPostIDs$entry != lOther$addPostIDs$entry) {
          return false;
        }
      }
    } else if (l$addPostIDs != lOther$addPostIDs) {
      return false;
    }
    final l$removePostIDs = removePostIDs;
    final lOther$removePostIDs = other.removePostIDs;
    if (_$data.containsKey('removePostIDs') !=
        other._$data.containsKey('removePostIDs')) {
      return false;
    }
    if (l$removePostIDs != null && lOther$removePostIDs != null) {
      if (l$removePostIDs.length != lOther$removePostIDs.length) {
        return false;
      }
      for (int i = 0; i < l$removePostIDs.length; i++) {
        final l$removePostIDs$entry = l$removePostIDs[i];
        final lOther$removePostIDs$entry = lOther$removePostIDs[i];
        if (l$removePostIDs$entry != lOther$removePostIDs$entry) {
          return false;
        }
      }
    } else if (l$removePostIDs != lOther$removePostIDs) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$clearThumbnail = clearThumbnail;
    final l$thumbnail = thumbnail;
    final l$addPostIDs = addPostIDs;
    final l$removePostIDs = removePostIDs;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('clearThumbnail') ? l$clearThumbnail : const {},
      _$data.containsKey('thumbnail') ? l$thumbnail : const {},
      _$data.containsKey('addPostIDs')
          ? l$addPostIDs == null
              ? null
              : Object.hashAll(l$addPostIDs.map((v) => v))
          : const {},
      _$data.containsKey('removePostIDs')
          ? l$removePostIDs == null
              ? null
              : Object.hashAll(l$removePostIDs.map((v) => v))
          : const {}
    ]);
  }
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
      _then(Input$UpdateWorkInput._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (clearThumbnail != _undefined)
          'clearThumbnail': (clearThumbnail as bool?),
        if (thumbnail != _undefined) 'thumbnail': (thumbnail as String?),
        if (addPostIDs != _undefined)
          'addPostIDs': (addPostIDs as List<String>?),
        if (removePostIDs != _undefined)
          'removePostIDs': (removePostIDs as List<String>?),
      }));
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

class Input$UserWhereInput {
  factory Input$UserWhereInput(
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
          String? username,
          String? usernameNEQ,
          List<String>? usernameIn,
          List<String>? usernameNotIn,
          String? usernameGT,
          String? usernameGTE,
          String? usernameLT,
          String? usernameLTE,
          String? usernameContains,
          String? usernameHasPrefix,
          String? usernameHasSuffix,
          bool? usernameIsNil,
          bool? usernameNotNil,
          String? usernameEqualFold,
          String? usernameContainsFold,
          String? profile,
          String? profileNEQ,
          List<String>? profileIn,
          List<String>? profileNotIn,
          String? profileGT,
          String? profileGTE,
          String? profileLT,
          String? profileLTE,
          String? profileContains,
          String? profileHasPrefix,
          String? profileHasSuffix,
          bool? profileIsNil,
          bool? profileNotNil,
          String? profileEqualFold,
          String? profileContainsFold,
          String? avatarURL,
          String? avatarURLNEQ,
          List<String>? avatarURLIn,
          List<String>? avatarURLNotIn,
          String? avatarURLGT,
          String? avatarURLGTE,
          String? avatarURLLT,
          String? avatarURLLTE,
          String? avatarURLContains,
          String? avatarURLHasPrefix,
          String? avatarURLHasSuffix,
          bool? avatarURLIsNil,
          bool? avatarURLNotNil,
          String? avatarURLEqualFold,
          String? avatarURLContainsFold,
          bool? hasPosts,
          List<Input$PostWhereInput>? hasPostsWith,
          bool? hasLikedPosts,
          List<Input$PostWhereInput>? hasLikedPostsWith,
          bool? hasBookmarkedPosts,
          List<Input$PostWhereInput>? hasBookmarkedPostsWith}) =>
      Input$UserWhereInput._({
        if (not != null) r'not': not,
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (idNEQ != null) r'idNEQ': idNEQ,
        if (idIn != null) r'idIn': idIn,
        if (idNotIn != null) r'idNotIn': idNotIn,
        if (idGT != null) r'idGT': idGT,
        if (idGTE != null) r'idGTE': idGTE,
        if (idLT != null) r'idLT': idLT,
        if (idLTE != null) r'idLTE': idLTE,
        if (name != null) r'name': name,
        if (nameNEQ != null) r'nameNEQ': nameNEQ,
        if (nameIn != null) r'nameIn': nameIn,
        if (nameNotIn != null) r'nameNotIn': nameNotIn,
        if (nameGT != null) r'nameGT': nameGT,
        if (nameGTE != null) r'nameGTE': nameGTE,
        if (nameLT != null) r'nameLT': nameLT,
        if (nameLTE != null) r'nameLTE': nameLTE,
        if (nameContains != null) r'nameContains': nameContains,
        if (nameHasPrefix != null) r'nameHasPrefix': nameHasPrefix,
        if (nameHasSuffix != null) r'nameHasSuffix': nameHasSuffix,
        if (nameEqualFold != null) r'nameEqualFold': nameEqualFold,
        if (nameContainsFold != null) r'nameContainsFold': nameContainsFold,
        if (username != null) r'username': username,
        if (usernameNEQ != null) r'usernameNEQ': usernameNEQ,
        if (usernameIn != null) r'usernameIn': usernameIn,
        if (usernameNotIn != null) r'usernameNotIn': usernameNotIn,
        if (usernameGT != null) r'usernameGT': usernameGT,
        if (usernameGTE != null) r'usernameGTE': usernameGTE,
        if (usernameLT != null) r'usernameLT': usernameLT,
        if (usernameLTE != null) r'usernameLTE': usernameLTE,
        if (usernameContains != null) r'usernameContains': usernameContains,
        if (usernameHasPrefix != null) r'usernameHasPrefix': usernameHasPrefix,
        if (usernameHasSuffix != null) r'usernameHasSuffix': usernameHasSuffix,
        if (usernameIsNil != null) r'usernameIsNil': usernameIsNil,
        if (usernameNotNil != null) r'usernameNotNil': usernameNotNil,
        if (usernameEqualFold != null) r'usernameEqualFold': usernameEqualFold,
        if (usernameContainsFold != null)
          r'usernameContainsFold': usernameContainsFold,
        if (profile != null) r'profile': profile,
        if (profileNEQ != null) r'profileNEQ': profileNEQ,
        if (profileIn != null) r'profileIn': profileIn,
        if (profileNotIn != null) r'profileNotIn': profileNotIn,
        if (profileGT != null) r'profileGT': profileGT,
        if (profileGTE != null) r'profileGTE': profileGTE,
        if (profileLT != null) r'profileLT': profileLT,
        if (profileLTE != null) r'profileLTE': profileLTE,
        if (profileContains != null) r'profileContains': profileContains,
        if (profileHasPrefix != null) r'profileHasPrefix': profileHasPrefix,
        if (profileHasSuffix != null) r'profileHasSuffix': profileHasSuffix,
        if (profileIsNil != null) r'profileIsNil': profileIsNil,
        if (profileNotNil != null) r'profileNotNil': profileNotNil,
        if (profileEqualFold != null) r'profileEqualFold': profileEqualFold,
        if (profileContainsFold != null)
          r'profileContainsFold': profileContainsFold,
        if (avatarURL != null) r'avatarURL': avatarURL,
        if (avatarURLNEQ != null) r'avatarURLNEQ': avatarURLNEQ,
        if (avatarURLIn != null) r'avatarURLIn': avatarURLIn,
        if (avatarURLNotIn != null) r'avatarURLNotIn': avatarURLNotIn,
        if (avatarURLGT != null) r'avatarURLGT': avatarURLGT,
        if (avatarURLGTE != null) r'avatarURLGTE': avatarURLGTE,
        if (avatarURLLT != null) r'avatarURLLT': avatarURLLT,
        if (avatarURLLTE != null) r'avatarURLLTE': avatarURLLTE,
        if (avatarURLContains != null) r'avatarURLContains': avatarURLContains,
        if (avatarURLHasPrefix != null)
          r'avatarURLHasPrefix': avatarURLHasPrefix,
        if (avatarURLHasSuffix != null)
          r'avatarURLHasSuffix': avatarURLHasSuffix,
        if (avatarURLIsNil != null) r'avatarURLIsNil': avatarURLIsNil,
        if (avatarURLNotNil != null) r'avatarURLNotNil': avatarURLNotNil,
        if (avatarURLEqualFold != null)
          r'avatarURLEqualFold': avatarURLEqualFold,
        if (avatarURLContainsFold != null)
          r'avatarURLContainsFold': avatarURLContainsFold,
        if (hasPosts != null) r'hasPosts': hasPosts,
        if (hasPostsWith != null) r'hasPostsWith': hasPostsWith,
        if (hasLikedPosts != null) r'hasLikedPosts': hasLikedPosts,
        if (hasLikedPostsWith != null) r'hasLikedPostsWith': hasLikedPostsWith,
        if (hasBookmarkedPosts != null)
          r'hasBookmarkedPosts': hasBookmarkedPosts,
        if (hasBookmarkedPostsWith != null)
          r'hasBookmarkedPostsWith': hasBookmarkedPostsWith,
      });

  Input$UserWhereInput._(this._$data);

  factory Input$UserWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$UserWhereInput.fromJson((l$not as Map<String, dynamic>));
    }
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
              (e) => Input$UserWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$UserWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('idNEQ')) {
      final l$idNEQ = data['idNEQ'];
      result$data['idNEQ'] = (l$idNEQ as String?);
    }
    if (data.containsKey('idIn')) {
      final l$idIn = data['idIn'];
      result$data['idIn'] =
          (l$idIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idNotIn')) {
      final l$idNotIn = data['idNotIn'];
      result$data['idNotIn'] =
          (l$idNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idGT')) {
      final l$idGT = data['idGT'];
      result$data['idGT'] = (l$idGT as String?);
    }
    if (data.containsKey('idGTE')) {
      final l$idGTE = data['idGTE'];
      result$data['idGTE'] = (l$idGTE as String?);
    }
    if (data.containsKey('idLT')) {
      final l$idLT = data['idLT'];
      result$data['idLT'] = (l$idLT as String?);
    }
    if (data.containsKey('idLTE')) {
      final l$idLTE = data['idLTE'];
      result$data['idLTE'] = (l$idLTE as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('nameNEQ')) {
      final l$nameNEQ = data['nameNEQ'];
      result$data['nameNEQ'] = (l$nameNEQ as String?);
    }
    if (data.containsKey('nameIn')) {
      final l$nameIn = data['nameIn'];
      result$data['nameIn'] =
          (l$nameIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('nameNotIn')) {
      final l$nameNotIn = data['nameNotIn'];
      result$data['nameNotIn'] =
          (l$nameNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('nameGT')) {
      final l$nameGT = data['nameGT'];
      result$data['nameGT'] = (l$nameGT as String?);
    }
    if (data.containsKey('nameGTE')) {
      final l$nameGTE = data['nameGTE'];
      result$data['nameGTE'] = (l$nameGTE as String?);
    }
    if (data.containsKey('nameLT')) {
      final l$nameLT = data['nameLT'];
      result$data['nameLT'] = (l$nameLT as String?);
    }
    if (data.containsKey('nameLTE')) {
      final l$nameLTE = data['nameLTE'];
      result$data['nameLTE'] = (l$nameLTE as String?);
    }
    if (data.containsKey('nameContains')) {
      final l$nameContains = data['nameContains'];
      result$data['nameContains'] = (l$nameContains as String?);
    }
    if (data.containsKey('nameHasPrefix')) {
      final l$nameHasPrefix = data['nameHasPrefix'];
      result$data['nameHasPrefix'] = (l$nameHasPrefix as String?);
    }
    if (data.containsKey('nameHasSuffix')) {
      final l$nameHasSuffix = data['nameHasSuffix'];
      result$data['nameHasSuffix'] = (l$nameHasSuffix as String?);
    }
    if (data.containsKey('nameEqualFold')) {
      final l$nameEqualFold = data['nameEqualFold'];
      result$data['nameEqualFold'] = (l$nameEqualFold as String?);
    }
    if (data.containsKey('nameContainsFold')) {
      final l$nameContainsFold = data['nameContainsFold'];
      result$data['nameContainsFold'] = (l$nameContainsFold as String?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('usernameNEQ')) {
      final l$usernameNEQ = data['usernameNEQ'];
      result$data['usernameNEQ'] = (l$usernameNEQ as String?);
    }
    if (data.containsKey('usernameIn')) {
      final l$usernameIn = data['usernameIn'];
      result$data['usernameIn'] =
          (l$usernameIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('usernameNotIn')) {
      final l$usernameNotIn = data['usernameNotIn'];
      result$data['usernameNotIn'] = (l$usernameNotIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('usernameGT')) {
      final l$usernameGT = data['usernameGT'];
      result$data['usernameGT'] = (l$usernameGT as String?);
    }
    if (data.containsKey('usernameGTE')) {
      final l$usernameGTE = data['usernameGTE'];
      result$data['usernameGTE'] = (l$usernameGTE as String?);
    }
    if (data.containsKey('usernameLT')) {
      final l$usernameLT = data['usernameLT'];
      result$data['usernameLT'] = (l$usernameLT as String?);
    }
    if (data.containsKey('usernameLTE')) {
      final l$usernameLTE = data['usernameLTE'];
      result$data['usernameLTE'] = (l$usernameLTE as String?);
    }
    if (data.containsKey('usernameContains')) {
      final l$usernameContains = data['usernameContains'];
      result$data['usernameContains'] = (l$usernameContains as String?);
    }
    if (data.containsKey('usernameHasPrefix')) {
      final l$usernameHasPrefix = data['usernameHasPrefix'];
      result$data['usernameHasPrefix'] = (l$usernameHasPrefix as String?);
    }
    if (data.containsKey('usernameHasSuffix')) {
      final l$usernameHasSuffix = data['usernameHasSuffix'];
      result$data['usernameHasSuffix'] = (l$usernameHasSuffix as String?);
    }
    if (data.containsKey('usernameIsNil')) {
      final l$usernameIsNil = data['usernameIsNil'];
      result$data['usernameIsNil'] = (l$usernameIsNil as bool?);
    }
    if (data.containsKey('usernameNotNil')) {
      final l$usernameNotNil = data['usernameNotNil'];
      result$data['usernameNotNil'] = (l$usernameNotNil as bool?);
    }
    if (data.containsKey('usernameEqualFold')) {
      final l$usernameEqualFold = data['usernameEqualFold'];
      result$data['usernameEqualFold'] = (l$usernameEqualFold as String?);
    }
    if (data.containsKey('usernameContainsFold')) {
      final l$usernameContainsFold = data['usernameContainsFold'];
      result$data['usernameContainsFold'] = (l$usernameContainsFold as String?);
    }
    if (data.containsKey('profile')) {
      final l$profile = data['profile'];
      result$data['profile'] = (l$profile as String?);
    }
    if (data.containsKey('profileNEQ')) {
      final l$profileNEQ = data['profileNEQ'];
      result$data['profileNEQ'] = (l$profileNEQ as String?);
    }
    if (data.containsKey('profileIn')) {
      final l$profileIn = data['profileIn'];
      result$data['profileIn'] =
          (l$profileIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('profileNotIn')) {
      final l$profileNotIn = data['profileNotIn'];
      result$data['profileNotIn'] = (l$profileNotIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('profileGT')) {
      final l$profileGT = data['profileGT'];
      result$data['profileGT'] = (l$profileGT as String?);
    }
    if (data.containsKey('profileGTE')) {
      final l$profileGTE = data['profileGTE'];
      result$data['profileGTE'] = (l$profileGTE as String?);
    }
    if (data.containsKey('profileLT')) {
      final l$profileLT = data['profileLT'];
      result$data['profileLT'] = (l$profileLT as String?);
    }
    if (data.containsKey('profileLTE')) {
      final l$profileLTE = data['profileLTE'];
      result$data['profileLTE'] = (l$profileLTE as String?);
    }
    if (data.containsKey('profileContains')) {
      final l$profileContains = data['profileContains'];
      result$data['profileContains'] = (l$profileContains as String?);
    }
    if (data.containsKey('profileHasPrefix')) {
      final l$profileHasPrefix = data['profileHasPrefix'];
      result$data['profileHasPrefix'] = (l$profileHasPrefix as String?);
    }
    if (data.containsKey('profileHasSuffix')) {
      final l$profileHasSuffix = data['profileHasSuffix'];
      result$data['profileHasSuffix'] = (l$profileHasSuffix as String?);
    }
    if (data.containsKey('profileIsNil')) {
      final l$profileIsNil = data['profileIsNil'];
      result$data['profileIsNil'] = (l$profileIsNil as bool?);
    }
    if (data.containsKey('profileNotNil')) {
      final l$profileNotNil = data['profileNotNil'];
      result$data['profileNotNil'] = (l$profileNotNil as bool?);
    }
    if (data.containsKey('profileEqualFold')) {
      final l$profileEqualFold = data['profileEqualFold'];
      result$data['profileEqualFold'] = (l$profileEqualFold as String?);
    }
    if (data.containsKey('profileContainsFold')) {
      final l$profileContainsFold = data['profileContainsFold'];
      result$data['profileContainsFold'] = (l$profileContainsFold as String?);
    }
    if (data.containsKey('avatarURL')) {
      final l$avatarURL = data['avatarURL'];
      result$data['avatarURL'] = (l$avatarURL as String?);
    }
    if (data.containsKey('avatarURLNEQ')) {
      final l$avatarURLNEQ = data['avatarURLNEQ'];
      result$data['avatarURLNEQ'] = (l$avatarURLNEQ as String?);
    }
    if (data.containsKey('avatarURLIn')) {
      final l$avatarURLIn = data['avatarURLIn'];
      result$data['avatarURLIn'] =
          (l$avatarURLIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('avatarURLNotIn')) {
      final l$avatarURLNotIn = data['avatarURLNotIn'];
      result$data['avatarURLNotIn'] = (l$avatarURLNotIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('avatarURLGT')) {
      final l$avatarURLGT = data['avatarURLGT'];
      result$data['avatarURLGT'] = (l$avatarURLGT as String?);
    }
    if (data.containsKey('avatarURLGTE')) {
      final l$avatarURLGTE = data['avatarURLGTE'];
      result$data['avatarURLGTE'] = (l$avatarURLGTE as String?);
    }
    if (data.containsKey('avatarURLLT')) {
      final l$avatarURLLT = data['avatarURLLT'];
      result$data['avatarURLLT'] = (l$avatarURLLT as String?);
    }
    if (data.containsKey('avatarURLLTE')) {
      final l$avatarURLLTE = data['avatarURLLTE'];
      result$data['avatarURLLTE'] = (l$avatarURLLTE as String?);
    }
    if (data.containsKey('avatarURLContains')) {
      final l$avatarURLContains = data['avatarURLContains'];
      result$data['avatarURLContains'] = (l$avatarURLContains as String?);
    }
    if (data.containsKey('avatarURLHasPrefix')) {
      final l$avatarURLHasPrefix = data['avatarURLHasPrefix'];
      result$data['avatarURLHasPrefix'] = (l$avatarURLHasPrefix as String?);
    }
    if (data.containsKey('avatarURLHasSuffix')) {
      final l$avatarURLHasSuffix = data['avatarURLHasSuffix'];
      result$data['avatarURLHasSuffix'] = (l$avatarURLHasSuffix as String?);
    }
    if (data.containsKey('avatarURLIsNil')) {
      final l$avatarURLIsNil = data['avatarURLIsNil'];
      result$data['avatarURLIsNil'] = (l$avatarURLIsNil as bool?);
    }
    if (data.containsKey('avatarURLNotNil')) {
      final l$avatarURLNotNil = data['avatarURLNotNil'];
      result$data['avatarURLNotNil'] = (l$avatarURLNotNil as bool?);
    }
    if (data.containsKey('avatarURLEqualFold')) {
      final l$avatarURLEqualFold = data['avatarURLEqualFold'];
      result$data['avatarURLEqualFold'] = (l$avatarURLEqualFold as String?);
    }
    if (data.containsKey('avatarURLContainsFold')) {
      final l$avatarURLContainsFold = data['avatarURLContainsFold'];
      result$data['avatarURLContainsFold'] =
          (l$avatarURLContainsFold as String?);
    }
    if (data.containsKey('hasPosts')) {
      final l$hasPosts = data['hasPosts'];
      result$data['hasPosts'] = (l$hasPosts as bool?);
    }
    if (data.containsKey('hasPostsWith')) {
      final l$hasPostsWith = data['hasPostsWith'];
      result$data['hasPostsWith'] = (l$hasPostsWith as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hasLikedPosts')) {
      final l$hasLikedPosts = data['hasLikedPosts'];
      result$data['hasLikedPosts'] = (l$hasLikedPosts as bool?);
    }
    if (data.containsKey('hasLikedPostsWith')) {
      final l$hasLikedPostsWith = data['hasLikedPostsWith'];
      result$data['hasLikedPostsWith'] = (l$hasLikedPostsWith as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('hasBookmarkedPosts')) {
      final l$hasBookmarkedPosts = data['hasBookmarkedPosts'];
      result$data['hasBookmarkedPosts'] = (l$hasBookmarkedPosts as bool?);
    }
    if (data.containsKey('hasBookmarkedPostsWith')) {
      final l$hasBookmarkedPostsWith = data['hasBookmarkedPostsWith'];
      result$data['hasBookmarkedPostsWith'] = (l$hasBookmarkedPostsWith
              as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UserWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserWhereInput? get not => (_$data['not'] as Input$UserWhereInput?);
  List<Input$UserWhereInput>? get and =>
      (_$data['and'] as List<Input$UserWhereInput>?);
  List<Input$UserWhereInput>? get or =>
      (_$data['or'] as List<Input$UserWhereInput>?);
  String? get id => (_$data['id'] as String?);
  String? get idNEQ => (_$data['idNEQ'] as String?);
  List<String>? get idIn => (_$data['idIn'] as List<String>?);
  List<String>? get idNotIn => (_$data['idNotIn'] as List<String>?);
  String? get idGT => (_$data['idGT'] as String?);
  String? get idGTE => (_$data['idGTE'] as String?);
  String? get idLT => (_$data['idLT'] as String?);
  String? get idLTE => (_$data['idLTE'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get nameNEQ => (_$data['nameNEQ'] as String?);
  List<String>? get nameIn => (_$data['nameIn'] as List<String>?);
  List<String>? get nameNotIn => (_$data['nameNotIn'] as List<String>?);
  String? get nameGT => (_$data['nameGT'] as String?);
  String? get nameGTE => (_$data['nameGTE'] as String?);
  String? get nameLT => (_$data['nameLT'] as String?);
  String? get nameLTE => (_$data['nameLTE'] as String?);
  String? get nameContains => (_$data['nameContains'] as String?);
  String? get nameHasPrefix => (_$data['nameHasPrefix'] as String?);
  String? get nameHasSuffix => (_$data['nameHasSuffix'] as String?);
  String? get nameEqualFold => (_$data['nameEqualFold'] as String?);
  String? get nameContainsFold => (_$data['nameContainsFold'] as String?);
  String? get username => (_$data['username'] as String?);
  String? get usernameNEQ => (_$data['usernameNEQ'] as String?);
  List<String>? get usernameIn => (_$data['usernameIn'] as List<String>?);
  List<String>? get usernameNotIn => (_$data['usernameNotIn'] as List<String>?);
  String? get usernameGT => (_$data['usernameGT'] as String?);
  String? get usernameGTE => (_$data['usernameGTE'] as String?);
  String? get usernameLT => (_$data['usernameLT'] as String?);
  String? get usernameLTE => (_$data['usernameLTE'] as String?);
  String? get usernameContains => (_$data['usernameContains'] as String?);
  String? get usernameHasPrefix => (_$data['usernameHasPrefix'] as String?);
  String? get usernameHasSuffix => (_$data['usernameHasSuffix'] as String?);
  bool? get usernameIsNil => (_$data['usernameIsNil'] as bool?);
  bool? get usernameNotNil => (_$data['usernameNotNil'] as bool?);
  String? get usernameEqualFold => (_$data['usernameEqualFold'] as String?);
  String? get usernameContainsFold =>
      (_$data['usernameContainsFold'] as String?);
  String? get profile => (_$data['profile'] as String?);
  String? get profileNEQ => (_$data['profileNEQ'] as String?);
  List<String>? get profileIn => (_$data['profileIn'] as List<String>?);
  List<String>? get profileNotIn => (_$data['profileNotIn'] as List<String>?);
  String? get profileGT => (_$data['profileGT'] as String?);
  String? get profileGTE => (_$data['profileGTE'] as String?);
  String? get profileLT => (_$data['profileLT'] as String?);
  String? get profileLTE => (_$data['profileLTE'] as String?);
  String? get profileContains => (_$data['profileContains'] as String?);
  String? get profileHasPrefix => (_$data['profileHasPrefix'] as String?);
  String? get profileHasSuffix => (_$data['profileHasSuffix'] as String?);
  bool? get profileIsNil => (_$data['profileIsNil'] as bool?);
  bool? get profileNotNil => (_$data['profileNotNil'] as bool?);
  String? get profileEqualFold => (_$data['profileEqualFold'] as String?);
  String? get profileContainsFold => (_$data['profileContainsFold'] as String?);
  String? get avatarURL => (_$data['avatarURL'] as String?);
  String? get avatarURLNEQ => (_$data['avatarURLNEQ'] as String?);
  List<String>? get avatarURLIn => (_$data['avatarURLIn'] as List<String>?);
  List<String>? get avatarURLNotIn =>
      (_$data['avatarURLNotIn'] as List<String>?);
  String? get avatarURLGT => (_$data['avatarURLGT'] as String?);
  String? get avatarURLGTE => (_$data['avatarURLGTE'] as String?);
  String? get avatarURLLT => (_$data['avatarURLLT'] as String?);
  String? get avatarURLLTE => (_$data['avatarURLLTE'] as String?);
  String? get avatarURLContains => (_$data['avatarURLContains'] as String?);
  String? get avatarURLHasPrefix => (_$data['avatarURLHasPrefix'] as String?);
  String? get avatarURLHasSuffix => (_$data['avatarURLHasSuffix'] as String?);
  bool? get avatarURLIsNil => (_$data['avatarURLIsNil'] as bool?);
  bool? get avatarURLNotNil => (_$data['avatarURLNotNil'] as bool?);
  String? get avatarURLEqualFold => (_$data['avatarURLEqualFold'] as String?);
  String? get avatarURLContainsFold =>
      (_$data['avatarURLContainsFold'] as String?);
  bool? get hasPosts => (_$data['hasPosts'] as bool?);
  List<Input$PostWhereInput>? get hasPostsWith =>
      (_$data['hasPostsWith'] as List<Input$PostWhereInput>?);
  bool? get hasLikedPosts => (_$data['hasLikedPosts'] as bool?);
  List<Input$PostWhereInput>? get hasLikedPostsWith =>
      (_$data['hasLikedPostsWith'] as List<Input$PostWhereInput>?);
  bool? get hasBookmarkedPosts => (_$data['hasBookmarkedPosts'] as bool?);
  List<Input$PostWhereInput>? get hasBookmarkedPostsWith =>
      (_$data['hasBookmarkedPostsWith'] as List<Input$PostWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idNEQ')) {
      final l$idNEQ = idNEQ;
      result$data['idNEQ'] = l$idNEQ;
    }
    if (_$data.containsKey('idIn')) {
      final l$idIn = idIn;
      result$data['idIn'] = l$idIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idNotIn')) {
      final l$idNotIn = idNotIn;
      result$data['idNotIn'] = l$idNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idGT')) {
      final l$idGT = idGT;
      result$data['idGT'] = l$idGT;
    }
    if (_$data.containsKey('idGTE')) {
      final l$idGTE = idGTE;
      result$data['idGTE'] = l$idGTE;
    }
    if (_$data.containsKey('idLT')) {
      final l$idLT = idLT;
      result$data['idLT'] = l$idLT;
    }
    if (_$data.containsKey('idLTE')) {
      final l$idLTE = idLTE;
      result$data['idLTE'] = l$idLTE;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('nameNEQ')) {
      final l$nameNEQ = nameNEQ;
      result$data['nameNEQ'] = l$nameNEQ;
    }
    if (_$data.containsKey('nameIn')) {
      final l$nameIn = nameIn;
      result$data['nameIn'] = l$nameIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('nameNotIn')) {
      final l$nameNotIn = nameNotIn;
      result$data['nameNotIn'] = l$nameNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('nameGT')) {
      final l$nameGT = nameGT;
      result$data['nameGT'] = l$nameGT;
    }
    if (_$data.containsKey('nameGTE')) {
      final l$nameGTE = nameGTE;
      result$data['nameGTE'] = l$nameGTE;
    }
    if (_$data.containsKey('nameLT')) {
      final l$nameLT = nameLT;
      result$data['nameLT'] = l$nameLT;
    }
    if (_$data.containsKey('nameLTE')) {
      final l$nameLTE = nameLTE;
      result$data['nameLTE'] = l$nameLTE;
    }
    if (_$data.containsKey('nameContains')) {
      final l$nameContains = nameContains;
      result$data['nameContains'] = l$nameContains;
    }
    if (_$data.containsKey('nameHasPrefix')) {
      final l$nameHasPrefix = nameHasPrefix;
      result$data['nameHasPrefix'] = l$nameHasPrefix;
    }
    if (_$data.containsKey('nameHasSuffix')) {
      final l$nameHasSuffix = nameHasSuffix;
      result$data['nameHasSuffix'] = l$nameHasSuffix;
    }
    if (_$data.containsKey('nameEqualFold')) {
      final l$nameEqualFold = nameEqualFold;
      result$data['nameEqualFold'] = l$nameEqualFold;
    }
    if (_$data.containsKey('nameContainsFold')) {
      final l$nameContainsFold = nameContainsFold;
      result$data['nameContainsFold'] = l$nameContainsFold;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('usernameNEQ')) {
      final l$usernameNEQ = usernameNEQ;
      result$data['usernameNEQ'] = l$usernameNEQ;
    }
    if (_$data.containsKey('usernameIn')) {
      final l$usernameIn = usernameIn;
      result$data['usernameIn'] = l$usernameIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('usernameNotIn')) {
      final l$usernameNotIn = usernameNotIn;
      result$data['usernameNotIn'] = l$usernameNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('usernameGT')) {
      final l$usernameGT = usernameGT;
      result$data['usernameGT'] = l$usernameGT;
    }
    if (_$data.containsKey('usernameGTE')) {
      final l$usernameGTE = usernameGTE;
      result$data['usernameGTE'] = l$usernameGTE;
    }
    if (_$data.containsKey('usernameLT')) {
      final l$usernameLT = usernameLT;
      result$data['usernameLT'] = l$usernameLT;
    }
    if (_$data.containsKey('usernameLTE')) {
      final l$usernameLTE = usernameLTE;
      result$data['usernameLTE'] = l$usernameLTE;
    }
    if (_$data.containsKey('usernameContains')) {
      final l$usernameContains = usernameContains;
      result$data['usernameContains'] = l$usernameContains;
    }
    if (_$data.containsKey('usernameHasPrefix')) {
      final l$usernameHasPrefix = usernameHasPrefix;
      result$data['usernameHasPrefix'] = l$usernameHasPrefix;
    }
    if (_$data.containsKey('usernameHasSuffix')) {
      final l$usernameHasSuffix = usernameHasSuffix;
      result$data['usernameHasSuffix'] = l$usernameHasSuffix;
    }
    if (_$data.containsKey('usernameIsNil')) {
      final l$usernameIsNil = usernameIsNil;
      result$data['usernameIsNil'] = l$usernameIsNil;
    }
    if (_$data.containsKey('usernameNotNil')) {
      final l$usernameNotNil = usernameNotNil;
      result$data['usernameNotNil'] = l$usernameNotNil;
    }
    if (_$data.containsKey('usernameEqualFold')) {
      final l$usernameEqualFold = usernameEqualFold;
      result$data['usernameEqualFold'] = l$usernameEqualFold;
    }
    if (_$data.containsKey('usernameContainsFold')) {
      final l$usernameContainsFold = usernameContainsFold;
      result$data['usernameContainsFold'] = l$usernameContainsFold;
    }
    if (_$data.containsKey('profile')) {
      final l$profile = profile;
      result$data['profile'] = l$profile;
    }
    if (_$data.containsKey('profileNEQ')) {
      final l$profileNEQ = profileNEQ;
      result$data['profileNEQ'] = l$profileNEQ;
    }
    if (_$data.containsKey('profileIn')) {
      final l$profileIn = profileIn;
      result$data['profileIn'] = l$profileIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('profileNotIn')) {
      final l$profileNotIn = profileNotIn;
      result$data['profileNotIn'] = l$profileNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('profileGT')) {
      final l$profileGT = profileGT;
      result$data['profileGT'] = l$profileGT;
    }
    if (_$data.containsKey('profileGTE')) {
      final l$profileGTE = profileGTE;
      result$data['profileGTE'] = l$profileGTE;
    }
    if (_$data.containsKey('profileLT')) {
      final l$profileLT = profileLT;
      result$data['profileLT'] = l$profileLT;
    }
    if (_$data.containsKey('profileLTE')) {
      final l$profileLTE = profileLTE;
      result$data['profileLTE'] = l$profileLTE;
    }
    if (_$data.containsKey('profileContains')) {
      final l$profileContains = profileContains;
      result$data['profileContains'] = l$profileContains;
    }
    if (_$data.containsKey('profileHasPrefix')) {
      final l$profileHasPrefix = profileHasPrefix;
      result$data['profileHasPrefix'] = l$profileHasPrefix;
    }
    if (_$data.containsKey('profileHasSuffix')) {
      final l$profileHasSuffix = profileHasSuffix;
      result$data['profileHasSuffix'] = l$profileHasSuffix;
    }
    if (_$data.containsKey('profileIsNil')) {
      final l$profileIsNil = profileIsNil;
      result$data['profileIsNil'] = l$profileIsNil;
    }
    if (_$data.containsKey('profileNotNil')) {
      final l$profileNotNil = profileNotNil;
      result$data['profileNotNil'] = l$profileNotNil;
    }
    if (_$data.containsKey('profileEqualFold')) {
      final l$profileEqualFold = profileEqualFold;
      result$data['profileEqualFold'] = l$profileEqualFold;
    }
    if (_$data.containsKey('profileContainsFold')) {
      final l$profileContainsFold = profileContainsFold;
      result$data['profileContainsFold'] = l$profileContainsFold;
    }
    if (_$data.containsKey('avatarURL')) {
      final l$avatarURL = avatarURL;
      result$data['avatarURL'] = l$avatarURL;
    }
    if (_$data.containsKey('avatarURLNEQ')) {
      final l$avatarURLNEQ = avatarURLNEQ;
      result$data['avatarURLNEQ'] = l$avatarURLNEQ;
    }
    if (_$data.containsKey('avatarURLIn')) {
      final l$avatarURLIn = avatarURLIn;
      result$data['avatarURLIn'] = l$avatarURLIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('avatarURLNotIn')) {
      final l$avatarURLNotIn = avatarURLNotIn;
      result$data['avatarURLNotIn'] = l$avatarURLNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('avatarURLGT')) {
      final l$avatarURLGT = avatarURLGT;
      result$data['avatarURLGT'] = l$avatarURLGT;
    }
    if (_$data.containsKey('avatarURLGTE')) {
      final l$avatarURLGTE = avatarURLGTE;
      result$data['avatarURLGTE'] = l$avatarURLGTE;
    }
    if (_$data.containsKey('avatarURLLT')) {
      final l$avatarURLLT = avatarURLLT;
      result$data['avatarURLLT'] = l$avatarURLLT;
    }
    if (_$data.containsKey('avatarURLLTE')) {
      final l$avatarURLLTE = avatarURLLTE;
      result$data['avatarURLLTE'] = l$avatarURLLTE;
    }
    if (_$data.containsKey('avatarURLContains')) {
      final l$avatarURLContains = avatarURLContains;
      result$data['avatarURLContains'] = l$avatarURLContains;
    }
    if (_$data.containsKey('avatarURLHasPrefix')) {
      final l$avatarURLHasPrefix = avatarURLHasPrefix;
      result$data['avatarURLHasPrefix'] = l$avatarURLHasPrefix;
    }
    if (_$data.containsKey('avatarURLHasSuffix')) {
      final l$avatarURLHasSuffix = avatarURLHasSuffix;
      result$data['avatarURLHasSuffix'] = l$avatarURLHasSuffix;
    }
    if (_$data.containsKey('avatarURLIsNil')) {
      final l$avatarURLIsNil = avatarURLIsNil;
      result$data['avatarURLIsNil'] = l$avatarURLIsNil;
    }
    if (_$data.containsKey('avatarURLNotNil')) {
      final l$avatarURLNotNil = avatarURLNotNil;
      result$data['avatarURLNotNil'] = l$avatarURLNotNil;
    }
    if (_$data.containsKey('avatarURLEqualFold')) {
      final l$avatarURLEqualFold = avatarURLEqualFold;
      result$data['avatarURLEqualFold'] = l$avatarURLEqualFold;
    }
    if (_$data.containsKey('avatarURLContainsFold')) {
      final l$avatarURLContainsFold = avatarURLContainsFold;
      result$data['avatarURLContainsFold'] = l$avatarURLContainsFold;
    }
    if (_$data.containsKey('hasPosts')) {
      final l$hasPosts = hasPosts;
      result$data['hasPosts'] = l$hasPosts;
    }
    if (_$data.containsKey('hasPostsWith')) {
      final l$hasPostsWith = hasPostsWith;
      result$data['hasPostsWith'] =
          l$hasPostsWith?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('hasLikedPosts')) {
      final l$hasLikedPosts = hasLikedPosts;
      result$data['hasLikedPosts'] = l$hasLikedPosts;
    }
    if (_$data.containsKey('hasLikedPostsWith')) {
      final l$hasLikedPostsWith = hasLikedPostsWith;
      result$data['hasLikedPostsWith'] =
          l$hasLikedPostsWith?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('hasBookmarkedPosts')) {
      final l$hasBookmarkedPosts = hasBookmarkedPosts;
      result$data['hasBookmarkedPosts'] = l$hasBookmarkedPosts;
    }
    if (_$data.containsKey('hasBookmarkedPostsWith')) {
      final l$hasBookmarkedPostsWith = hasBookmarkedPostsWith;
      result$data['hasBookmarkedPostsWith'] =
          l$hasBookmarkedPostsWith?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UserWhereInput<Input$UserWhereInput> get copyWith =>
      CopyWith$Input$UserWhereInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserWhereInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idNEQ = idNEQ;
    final lOther$idNEQ = other.idNEQ;
    if (_$data.containsKey('idNEQ') != other._$data.containsKey('idNEQ')) {
      return false;
    }
    if (l$idNEQ != lOther$idNEQ) {
      return false;
    }
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (_$data.containsKey('idIn') != other._$data.containsKey('idIn')) {
      return false;
    }
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) {
        return false;
      }
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) {
          return false;
        }
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }
    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (_$data.containsKey('idNotIn') != other._$data.containsKey('idNotIn')) {
      return false;
    }
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) {
          return false;
        }
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }
    final l$idGT = idGT;
    final lOther$idGT = other.idGT;
    if (_$data.containsKey('idGT') != other._$data.containsKey('idGT')) {
      return false;
    }
    if (l$idGT != lOther$idGT) {
      return false;
    }
    final l$idGTE = idGTE;
    final lOther$idGTE = other.idGTE;
    if (_$data.containsKey('idGTE') != other._$data.containsKey('idGTE')) {
      return false;
    }
    if (l$idGTE != lOther$idGTE) {
      return false;
    }
    final l$idLT = idLT;
    final lOther$idLT = other.idLT;
    if (_$data.containsKey('idLT') != other._$data.containsKey('idLT')) {
      return false;
    }
    if (l$idLT != lOther$idLT) {
      return false;
    }
    final l$idLTE = idLTE;
    final lOther$idLTE = other.idLTE;
    if (_$data.containsKey('idLTE') != other._$data.containsKey('idLTE')) {
      return false;
    }
    if (l$idLTE != lOther$idLTE) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$nameNEQ = nameNEQ;
    final lOther$nameNEQ = other.nameNEQ;
    if (_$data.containsKey('nameNEQ') != other._$data.containsKey('nameNEQ')) {
      return false;
    }
    if (l$nameNEQ != lOther$nameNEQ) {
      return false;
    }
    final l$nameIn = nameIn;
    final lOther$nameIn = other.nameIn;
    if (_$data.containsKey('nameIn') != other._$data.containsKey('nameIn')) {
      return false;
    }
    if (l$nameIn != null && lOther$nameIn != null) {
      if (l$nameIn.length != lOther$nameIn.length) {
        return false;
      }
      for (int i = 0; i < l$nameIn.length; i++) {
        final l$nameIn$entry = l$nameIn[i];
        final lOther$nameIn$entry = lOther$nameIn[i];
        if (l$nameIn$entry != lOther$nameIn$entry) {
          return false;
        }
      }
    } else if (l$nameIn != lOther$nameIn) {
      return false;
    }
    final l$nameNotIn = nameNotIn;
    final lOther$nameNotIn = other.nameNotIn;
    if (_$data.containsKey('nameNotIn') !=
        other._$data.containsKey('nameNotIn')) {
      return false;
    }
    if (l$nameNotIn != null && lOther$nameNotIn != null) {
      if (l$nameNotIn.length != lOther$nameNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$nameNotIn.length; i++) {
        final l$nameNotIn$entry = l$nameNotIn[i];
        final lOther$nameNotIn$entry = lOther$nameNotIn[i];
        if (l$nameNotIn$entry != lOther$nameNotIn$entry) {
          return false;
        }
      }
    } else if (l$nameNotIn != lOther$nameNotIn) {
      return false;
    }
    final l$nameGT = nameGT;
    final lOther$nameGT = other.nameGT;
    if (_$data.containsKey('nameGT') != other._$data.containsKey('nameGT')) {
      return false;
    }
    if (l$nameGT != lOther$nameGT) {
      return false;
    }
    final l$nameGTE = nameGTE;
    final lOther$nameGTE = other.nameGTE;
    if (_$data.containsKey('nameGTE') != other._$data.containsKey('nameGTE')) {
      return false;
    }
    if (l$nameGTE != lOther$nameGTE) {
      return false;
    }
    final l$nameLT = nameLT;
    final lOther$nameLT = other.nameLT;
    if (_$data.containsKey('nameLT') != other._$data.containsKey('nameLT')) {
      return false;
    }
    if (l$nameLT != lOther$nameLT) {
      return false;
    }
    final l$nameLTE = nameLTE;
    final lOther$nameLTE = other.nameLTE;
    if (_$data.containsKey('nameLTE') != other._$data.containsKey('nameLTE')) {
      return false;
    }
    if (l$nameLTE != lOther$nameLTE) {
      return false;
    }
    final l$nameContains = nameContains;
    final lOther$nameContains = other.nameContains;
    if (_$data.containsKey('nameContains') !=
        other._$data.containsKey('nameContains')) {
      return false;
    }
    if (l$nameContains != lOther$nameContains) {
      return false;
    }
    final l$nameHasPrefix = nameHasPrefix;
    final lOther$nameHasPrefix = other.nameHasPrefix;
    if (_$data.containsKey('nameHasPrefix') !=
        other._$data.containsKey('nameHasPrefix')) {
      return false;
    }
    if (l$nameHasPrefix != lOther$nameHasPrefix) {
      return false;
    }
    final l$nameHasSuffix = nameHasSuffix;
    final lOther$nameHasSuffix = other.nameHasSuffix;
    if (_$data.containsKey('nameHasSuffix') !=
        other._$data.containsKey('nameHasSuffix')) {
      return false;
    }
    if (l$nameHasSuffix != lOther$nameHasSuffix) {
      return false;
    }
    final l$nameEqualFold = nameEqualFold;
    final lOther$nameEqualFold = other.nameEqualFold;
    if (_$data.containsKey('nameEqualFold') !=
        other._$data.containsKey('nameEqualFold')) {
      return false;
    }
    if (l$nameEqualFold != lOther$nameEqualFold) {
      return false;
    }
    final l$nameContainsFold = nameContainsFold;
    final lOther$nameContainsFold = other.nameContainsFold;
    if (_$data.containsKey('nameContainsFold') !=
        other._$data.containsKey('nameContainsFold')) {
      return false;
    }
    if (l$nameContainsFold != lOther$nameContainsFold) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$usernameNEQ = usernameNEQ;
    final lOther$usernameNEQ = other.usernameNEQ;
    if (_$data.containsKey('usernameNEQ') !=
        other._$data.containsKey('usernameNEQ')) {
      return false;
    }
    if (l$usernameNEQ != lOther$usernameNEQ) {
      return false;
    }
    final l$usernameIn = usernameIn;
    final lOther$usernameIn = other.usernameIn;
    if (_$data.containsKey('usernameIn') !=
        other._$data.containsKey('usernameIn')) {
      return false;
    }
    if (l$usernameIn != null && lOther$usernameIn != null) {
      if (l$usernameIn.length != lOther$usernameIn.length) {
        return false;
      }
      for (int i = 0; i < l$usernameIn.length; i++) {
        final l$usernameIn$entry = l$usernameIn[i];
        final lOther$usernameIn$entry = lOther$usernameIn[i];
        if (l$usernameIn$entry != lOther$usernameIn$entry) {
          return false;
        }
      }
    } else if (l$usernameIn != lOther$usernameIn) {
      return false;
    }
    final l$usernameNotIn = usernameNotIn;
    final lOther$usernameNotIn = other.usernameNotIn;
    if (_$data.containsKey('usernameNotIn') !=
        other._$data.containsKey('usernameNotIn')) {
      return false;
    }
    if (l$usernameNotIn != null && lOther$usernameNotIn != null) {
      if (l$usernameNotIn.length != lOther$usernameNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$usernameNotIn.length; i++) {
        final l$usernameNotIn$entry = l$usernameNotIn[i];
        final lOther$usernameNotIn$entry = lOther$usernameNotIn[i];
        if (l$usernameNotIn$entry != lOther$usernameNotIn$entry) {
          return false;
        }
      }
    } else if (l$usernameNotIn != lOther$usernameNotIn) {
      return false;
    }
    final l$usernameGT = usernameGT;
    final lOther$usernameGT = other.usernameGT;
    if (_$data.containsKey('usernameGT') !=
        other._$data.containsKey('usernameGT')) {
      return false;
    }
    if (l$usernameGT != lOther$usernameGT) {
      return false;
    }
    final l$usernameGTE = usernameGTE;
    final lOther$usernameGTE = other.usernameGTE;
    if (_$data.containsKey('usernameGTE') !=
        other._$data.containsKey('usernameGTE')) {
      return false;
    }
    if (l$usernameGTE != lOther$usernameGTE) {
      return false;
    }
    final l$usernameLT = usernameLT;
    final lOther$usernameLT = other.usernameLT;
    if (_$data.containsKey('usernameLT') !=
        other._$data.containsKey('usernameLT')) {
      return false;
    }
    if (l$usernameLT != lOther$usernameLT) {
      return false;
    }
    final l$usernameLTE = usernameLTE;
    final lOther$usernameLTE = other.usernameLTE;
    if (_$data.containsKey('usernameLTE') !=
        other._$data.containsKey('usernameLTE')) {
      return false;
    }
    if (l$usernameLTE != lOther$usernameLTE) {
      return false;
    }
    final l$usernameContains = usernameContains;
    final lOther$usernameContains = other.usernameContains;
    if (_$data.containsKey('usernameContains') !=
        other._$data.containsKey('usernameContains')) {
      return false;
    }
    if (l$usernameContains != lOther$usernameContains) {
      return false;
    }
    final l$usernameHasPrefix = usernameHasPrefix;
    final lOther$usernameHasPrefix = other.usernameHasPrefix;
    if (_$data.containsKey('usernameHasPrefix') !=
        other._$data.containsKey('usernameHasPrefix')) {
      return false;
    }
    if (l$usernameHasPrefix != lOther$usernameHasPrefix) {
      return false;
    }
    final l$usernameHasSuffix = usernameHasSuffix;
    final lOther$usernameHasSuffix = other.usernameHasSuffix;
    if (_$data.containsKey('usernameHasSuffix') !=
        other._$data.containsKey('usernameHasSuffix')) {
      return false;
    }
    if (l$usernameHasSuffix != lOther$usernameHasSuffix) {
      return false;
    }
    final l$usernameIsNil = usernameIsNil;
    final lOther$usernameIsNil = other.usernameIsNil;
    if (_$data.containsKey('usernameIsNil') !=
        other._$data.containsKey('usernameIsNil')) {
      return false;
    }
    if (l$usernameIsNil != lOther$usernameIsNil) {
      return false;
    }
    final l$usernameNotNil = usernameNotNil;
    final lOther$usernameNotNil = other.usernameNotNil;
    if (_$data.containsKey('usernameNotNil') !=
        other._$data.containsKey('usernameNotNil')) {
      return false;
    }
    if (l$usernameNotNil != lOther$usernameNotNil) {
      return false;
    }
    final l$usernameEqualFold = usernameEqualFold;
    final lOther$usernameEqualFold = other.usernameEqualFold;
    if (_$data.containsKey('usernameEqualFold') !=
        other._$data.containsKey('usernameEqualFold')) {
      return false;
    }
    if (l$usernameEqualFold != lOther$usernameEqualFold) {
      return false;
    }
    final l$usernameContainsFold = usernameContainsFold;
    final lOther$usernameContainsFold = other.usernameContainsFold;
    if (_$data.containsKey('usernameContainsFold') !=
        other._$data.containsKey('usernameContainsFold')) {
      return false;
    }
    if (l$usernameContainsFold != lOther$usernameContainsFold) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (_$data.containsKey('profile') != other._$data.containsKey('profile')) {
      return false;
    }
    if (l$profile != lOther$profile) {
      return false;
    }
    final l$profileNEQ = profileNEQ;
    final lOther$profileNEQ = other.profileNEQ;
    if (_$data.containsKey('profileNEQ') !=
        other._$data.containsKey('profileNEQ')) {
      return false;
    }
    if (l$profileNEQ != lOther$profileNEQ) {
      return false;
    }
    final l$profileIn = profileIn;
    final lOther$profileIn = other.profileIn;
    if (_$data.containsKey('profileIn') !=
        other._$data.containsKey('profileIn')) {
      return false;
    }
    if (l$profileIn != null && lOther$profileIn != null) {
      if (l$profileIn.length != lOther$profileIn.length) {
        return false;
      }
      for (int i = 0; i < l$profileIn.length; i++) {
        final l$profileIn$entry = l$profileIn[i];
        final lOther$profileIn$entry = lOther$profileIn[i];
        if (l$profileIn$entry != lOther$profileIn$entry) {
          return false;
        }
      }
    } else if (l$profileIn != lOther$profileIn) {
      return false;
    }
    final l$profileNotIn = profileNotIn;
    final lOther$profileNotIn = other.profileNotIn;
    if (_$data.containsKey('profileNotIn') !=
        other._$data.containsKey('profileNotIn')) {
      return false;
    }
    if (l$profileNotIn != null && lOther$profileNotIn != null) {
      if (l$profileNotIn.length != lOther$profileNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$profileNotIn.length; i++) {
        final l$profileNotIn$entry = l$profileNotIn[i];
        final lOther$profileNotIn$entry = lOther$profileNotIn[i];
        if (l$profileNotIn$entry != lOther$profileNotIn$entry) {
          return false;
        }
      }
    } else if (l$profileNotIn != lOther$profileNotIn) {
      return false;
    }
    final l$profileGT = profileGT;
    final lOther$profileGT = other.profileGT;
    if (_$data.containsKey('profileGT') !=
        other._$data.containsKey('profileGT')) {
      return false;
    }
    if (l$profileGT != lOther$profileGT) {
      return false;
    }
    final l$profileGTE = profileGTE;
    final lOther$profileGTE = other.profileGTE;
    if (_$data.containsKey('profileGTE') !=
        other._$data.containsKey('profileGTE')) {
      return false;
    }
    if (l$profileGTE != lOther$profileGTE) {
      return false;
    }
    final l$profileLT = profileLT;
    final lOther$profileLT = other.profileLT;
    if (_$data.containsKey('profileLT') !=
        other._$data.containsKey('profileLT')) {
      return false;
    }
    if (l$profileLT != lOther$profileLT) {
      return false;
    }
    final l$profileLTE = profileLTE;
    final lOther$profileLTE = other.profileLTE;
    if (_$data.containsKey('profileLTE') !=
        other._$data.containsKey('profileLTE')) {
      return false;
    }
    if (l$profileLTE != lOther$profileLTE) {
      return false;
    }
    final l$profileContains = profileContains;
    final lOther$profileContains = other.profileContains;
    if (_$data.containsKey('profileContains') !=
        other._$data.containsKey('profileContains')) {
      return false;
    }
    if (l$profileContains != lOther$profileContains) {
      return false;
    }
    final l$profileHasPrefix = profileHasPrefix;
    final lOther$profileHasPrefix = other.profileHasPrefix;
    if (_$data.containsKey('profileHasPrefix') !=
        other._$data.containsKey('profileHasPrefix')) {
      return false;
    }
    if (l$profileHasPrefix != lOther$profileHasPrefix) {
      return false;
    }
    final l$profileHasSuffix = profileHasSuffix;
    final lOther$profileHasSuffix = other.profileHasSuffix;
    if (_$data.containsKey('profileHasSuffix') !=
        other._$data.containsKey('profileHasSuffix')) {
      return false;
    }
    if (l$profileHasSuffix != lOther$profileHasSuffix) {
      return false;
    }
    final l$profileIsNil = profileIsNil;
    final lOther$profileIsNil = other.profileIsNil;
    if (_$data.containsKey('profileIsNil') !=
        other._$data.containsKey('profileIsNil')) {
      return false;
    }
    if (l$profileIsNil != lOther$profileIsNil) {
      return false;
    }
    final l$profileNotNil = profileNotNil;
    final lOther$profileNotNil = other.profileNotNil;
    if (_$data.containsKey('profileNotNil') !=
        other._$data.containsKey('profileNotNil')) {
      return false;
    }
    if (l$profileNotNil != lOther$profileNotNil) {
      return false;
    }
    final l$profileEqualFold = profileEqualFold;
    final lOther$profileEqualFold = other.profileEqualFold;
    if (_$data.containsKey('profileEqualFold') !=
        other._$data.containsKey('profileEqualFold')) {
      return false;
    }
    if (l$profileEqualFold != lOther$profileEqualFold) {
      return false;
    }
    final l$profileContainsFold = profileContainsFold;
    final lOther$profileContainsFold = other.profileContainsFold;
    if (_$data.containsKey('profileContainsFold') !=
        other._$data.containsKey('profileContainsFold')) {
      return false;
    }
    if (l$profileContainsFold != lOther$profileContainsFold) {
      return false;
    }
    final l$avatarURL = avatarURL;
    final lOther$avatarURL = other.avatarURL;
    if (_$data.containsKey('avatarURL') !=
        other._$data.containsKey('avatarURL')) {
      return false;
    }
    if (l$avatarURL != lOther$avatarURL) {
      return false;
    }
    final l$avatarURLNEQ = avatarURLNEQ;
    final lOther$avatarURLNEQ = other.avatarURLNEQ;
    if (_$data.containsKey('avatarURLNEQ') !=
        other._$data.containsKey('avatarURLNEQ')) {
      return false;
    }
    if (l$avatarURLNEQ != lOther$avatarURLNEQ) {
      return false;
    }
    final l$avatarURLIn = avatarURLIn;
    final lOther$avatarURLIn = other.avatarURLIn;
    if (_$data.containsKey('avatarURLIn') !=
        other._$data.containsKey('avatarURLIn')) {
      return false;
    }
    if (l$avatarURLIn != null && lOther$avatarURLIn != null) {
      if (l$avatarURLIn.length != lOther$avatarURLIn.length) {
        return false;
      }
      for (int i = 0; i < l$avatarURLIn.length; i++) {
        final l$avatarURLIn$entry = l$avatarURLIn[i];
        final lOther$avatarURLIn$entry = lOther$avatarURLIn[i];
        if (l$avatarURLIn$entry != lOther$avatarURLIn$entry) {
          return false;
        }
      }
    } else if (l$avatarURLIn != lOther$avatarURLIn) {
      return false;
    }
    final l$avatarURLNotIn = avatarURLNotIn;
    final lOther$avatarURLNotIn = other.avatarURLNotIn;
    if (_$data.containsKey('avatarURLNotIn') !=
        other._$data.containsKey('avatarURLNotIn')) {
      return false;
    }
    if (l$avatarURLNotIn != null && lOther$avatarURLNotIn != null) {
      if (l$avatarURLNotIn.length != lOther$avatarURLNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$avatarURLNotIn.length; i++) {
        final l$avatarURLNotIn$entry = l$avatarURLNotIn[i];
        final lOther$avatarURLNotIn$entry = lOther$avatarURLNotIn[i];
        if (l$avatarURLNotIn$entry != lOther$avatarURLNotIn$entry) {
          return false;
        }
      }
    } else if (l$avatarURLNotIn != lOther$avatarURLNotIn) {
      return false;
    }
    final l$avatarURLGT = avatarURLGT;
    final lOther$avatarURLGT = other.avatarURLGT;
    if (_$data.containsKey('avatarURLGT') !=
        other._$data.containsKey('avatarURLGT')) {
      return false;
    }
    if (l$avatarURLGT != lOther$avatarURLGT) {
      return false;
    }
    final l$avatarURLGTE = avatarURLGTE;
    final lOther$avatarURLGTE = other.avatarURLGTE;
    if (_$data.containsKey('avatarURLGTE') !=
        other._$data.containsKey('avatarURLGTE')) {
      return false;
    }
    if (l$avatarURLGTE != lOther$avatarURLGTE) {
      return false;
    }
    final l$avatarURLLT = avatarURLLT;
    final lOther$avatarURLLT = other.avatarURLLT;
    if (_$data.containsKey('avatarURLLT') !=
        other._$data.containsKey('avatarURLLT')) {
      return false;
    }
    if (l$avatarURLLT != lOther$avatarURLLT) {
      return false;
    }
    final l$avatarURLLTE = avatarURLLTE;
    final lOther$avatarURLLTE = other.avatarURLLTE;
    if (_$data.containsKey('avatarURLLTE') !=
        other._$data.containsKey('avatarURLLTE')) {
      return false;
    }
    if (l$avatarURLLTE != lOther$avatarURLLTE) {
      return false;
    }
    final l$avatarURLContains = avatarURLContains;
    final lOther$avatarURLContains = other.avatarURLContains;
    if (_$data.containsKey('avatarURLContains') !=
        other._$data.containsKey('avatarURLContains')) {
      return false;
    }
    if (l$avatarURLContains != lOther$avatarURLContains) {
      return false;
    }
    final l$avatarURLHasPrefix = avatarURLHasPrefix;
    final lOther$avatarURLHasPrefix = other.avatarURLHasPrefix;
    if (_$data.containsKey('avatarURLHasPrefix') !=
        other._$data.containsKey('avatarURLHasPrefix')) {
      return false;
    }
    if (l$avatarURLHasPrefix != lOther$avatarURLHasPrefix) {
      return false;
    }
    final l$avatarURLHasSuffix = avatarURLHasSuffix;
    final lOther$avatarURLHasSuffix = other.avatarURLHasSuffix;
    if (_$data.containsKey('avatarURLHasSuffix') !=
        other._$data.containsKey('avatarURLHasSuffix')) {
      return false;
    }
    if (l$avatarURLHasSuffix != lOther$avatarURLHasSuffix) {
      return false;
    }
    final l$avatarURLIsNil = avatarURLIsNil;
    final lOther$avatarURLIsNil = other.avatarURLIsNil;
    if (_$data.containsKey('avatarURLIsNil') !=
        other._$data.containsKey('avatarURLIsNil')) {
      return false;
    }
    if (l$avatarURLIsNil != lOther$avatarURLIsNil) {
      return false;
    }
    final l$avatarURLNotNil = avatarURLNotNil;
    final lOther$avatarURLNotNil = other.avatarURLNotNil;
    if (_$data.containsKey('avatarURLNotNil') !=
        other._$data.containsKey('avatarURLNotNil')) {
      return false;
    }
    if (l$avatarURLNotNil != lOther$avatarURLNotNil) {
      return false;
    }
    final l$avatarURLEqualFold = avatarURLEqualFold;
    final lOther$avatarURLEqualFold = other.avatarURLEqualFold;
    if (_$data.containsKey('avatarURLEqualFold') !=
        other._$data.containsKey('avatarURLEqualFold')) {
      return false;
    }
    if (l$avatarURLEqualFold != lOther$avatarURLEqualFold) {
      return false;
    }
    final l$avatarURLContainsFold = avatarURLContainsFold;
    final lOther$avatarURLContainsFold = other.avatarURLContainsFold;
    if (_$data.containsKey('avatarURLContainsFold') !=
        other._$data.containsKey('avatarURLContainsFold')) {
      return false;
    }
    if (l$avatarURLContainsFold != lOther$avatarURLContainsFold) {
      return false;
    }
    final l$hasPosts = hasPosts;
    final lOther$hasPosts = other.hasPosts;
    if (_$data.containsKey('hasPosts') !=
        other._$data.containsKey('hasPosts')) {
      return false;
    }
    if (l$hasPosts != lOther$hasPosts) {
      return false;
    }
    final l$hasPostsWith = hasPostsWith;
    final lOther$hasPostsWith = other.hasPostsWith;
    if (_$data.containsKey('hasPostsWith') !=
        other._$data.containsKey('hasPostsWith')) {
      return false;
    }
    if (l$hasPostsWith != null && lOther$hasPostsWith != null) {
      if (l$hasPostsWith.length != lOther$hasPostsWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasPostsWith.length; i++) {
        final l$hasPostsWith$entry = l$hasPostsWith[i];
        final lOther$hasPostsWith$entry = lOther$hasPostsWith[i];
        if (l$hasPostsWith$entry != lOther$hasPostsWith$entry) {
          return false;
        }
      }
    } else if (l$hasPostsWith != lOther$hasPostsWith) {
      return false;
    }
    final l$hasLikedPosts = hasLikedPosts;
    final lOther$hasLikedPosts = other.hasLikedPosts;
    if (_$data.containsKey('hasLikedPosts') !=
        other._$data.containsKey('hasLikedPosts')) {
      return false;
    }
    if (l$hasLikedPosts != lOther$hasLikedPosts) {
      return false;
    }
    final l$hasLikedPostsWith = hasLikedPostsWith;
    final lOther$hasLikedPostsWith = other.hasLikedPostsWith;
    if (_$data.containsKey('hasLikedPostsWith') !=
        other._$data.containsKey('hasLikedPostsWith')) {
      return false;
    }
    if (l$hasLikedPostsWith != null && lOther$hasLikedPostsWith != null) {
      if (l$hasLikedPostsWith.length != lOther$hasLikedPostsWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasLikedPostsWith.length; i++) {
        final l$hasLikedPostsWith$entry = l$hasLikedPostsWith[i];
        final lOther$hasLikedPostsWith$entry = lOther$hasLikedPostsWith[i];
        if (l$hasLikedPostsWith$entry != lOther$hasLikedPostsWith$entry) {
          return false;
        }
      }
    } else if (l$hasLikedPostsWith != lOther$hasLikedPostsWith) {
      return false;
    }
    final l$hasBookmarkedPosts = hasBookmarkedPosts;
    final lOther$hasBookmarkedPosts = other.hasBookmarkedPosts;
    if (_$data.containsKey('hasBookmarkedPosts') !=
        other._$data.containsKey('hasBookmarkedPosts')) {
      return false;
    }
    if (l$hasBookmarkedPosts != lOther$hasBookmarkedPosts) {
      return false;
    }
    final l$hasBookmarkedPostsWith = hasBookmarkedPostsWith;
    final lOther$hasBookmarkedPostsWith = other.hasBookmarkedPostsWith;
    if (_$data.containsKey('hasBookmarkedPostsWith') !=
        other._$data.containsKey('hasBookmarkedPostsWith')) {
      return false;
    }
    if (l$hasBookmarkedPostsWith != null &&
        lOther$hasBookmarkedPostsWith != null) {
      if (l$hasBookmarkedPostsWith.length !=
          lOther$hasBookmarkedPostsWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasBookmarkedPostsWith.length; i++) {
        final l$hasBookmarkedPostsWith$entry = l$hasBookmarkedPostsWith[i];
        final lOther$hasBookmarkedPostsWith$entry =
            lOther$hasBookmarkedPostsWith[i];
        if (l$hasBookmarkedPostsWith$entry !=
            lOther$hasBookmarkedPostsWith$entry) {
          return false;
        }
      }
    } else if (l$hasBookmarkedPostsWith != lOther$hasBookmarkedPostsWith) {
      return false;
    }
    return true;
  }

  @override
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
    final l$username = username;
    final l$usernameNEQ = usernameNEQ;
    final l$usernameIn = usernameIn;
    final l$usernameNotIn = usernameNotIn;
    final l$usernameGT = usernameGT;
    final l$usernameGTE = usernameGTE;
    final l$usernameLT = usernameLT;
    final l$usernameLTE = usernameLTE;
    final l$usernameContains = usernameContains;
    final l$usernameHasPrefix = usernameHasPrefix;
    final l$usernameHasSuffix = usernameHasSuffix;
    final l$usernameIsNil = usernameIsNil;
    final l$usernameNotNil = usernameNotNil;
    final l$usernameEqualFold = usernameEqualFold;
    final l$usernameContainsFold = usernameContainsFold;
    final l$profile = profile;
    final l$profileNEQ = profileNEQ;
    final l$profileIn = profileIn;
    final l$profileNotIn = profileNotIn;
    final l$profileGT = profileGT;
    final l$profileGTE = profileGTE;
    final l$profileLT = profileLT;
    final l$profileLTE = profileLTE;
    final l$profileContains = profileContains;
    final l$profileHasPrefix = profileHasPrefix;
    final l$profileHasSuffix = profileHasSuffix;
    final l$profileIsNil = profileIsNil;
    final l$profileNotNil = profileNotNil;
    final l$profileEqualFold = profileEqualFold;
    final l$profileContainsFold = profileContainsFold;
    final l$avatarURL = avatarURL;
    final l$avatarURLNEQ = avatarURLNEQ;
    final l$avatarURLIn = avatarURLIn;
    final l$avatarURLNotIn = avatarURLNotIn;
    final l$avatarURLGT = avatarURLGT;
    final l$avatarURLGTE = avatarURLGTE;
    final l$avatarURLLT = avatarURLLT;
    final l$avatarURLLTE = avatarURLLTE;
    final l$avatarURLContains = avatarURLContains;
    final l$avatarURLHasPrefix = avatarURLHasPrefix;
    final l$avatarURLHasSuffix = avatarURLHasSuffix;
    final l$avatarURLIsNil = avatarURLIsNil;
    final l$avatarURLNotNil = avatarURLNotNil;
    final l$avatarURLEqualFold = avatarURLEqualFold;
    final l$avatarURLContainsFold = avatarURLContainsFold;
    final l$hasPosts = hasPosts;
    final l$hasPostsWith = hasPostsWith;
    final l$hasLikedPosts = hasLikedPosts;
    final l$hasLikedPostsWith = hasLikedPostsWith;
    final l$hasBookmarkedPosts = hasBookmarkedPosts;
    final l$hasBookmarkedPostsWith = hasBookmarkedPostsWith;
    return Object.hashAll([
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idNEQ') ? l$idNEQ : const {},
      _$data.containsKey('idIn')
          ? l$idIn == null
              ? null
              : Object.hashAll(l$idIn.map((v) => v))
          : const {},
      _$data.containsKey('idNotIn')
          ? l$idNotIn == null
              ? null
              : Object.hashAll(l$idNotIn.map((v) => v))
          : const {},
      _$data.containsKey('idGT') ? l$idGT : const {},
      _$data.containsKey('idGTE') ? l$idGTE : const {},
      _$data.containsKey('idLT') ? l$idLT : const {},
      _$data.containsKey('idLTE') ? l$idLTE : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nameNEQ') ? l$nameNEQ : const {},
      _$data.containsKey('nameIn')
          ? l$nameIn == null
              ? null
              : Object.hashAll(l$nameIn.map((v) => v))
          : const {},
      _$data.containsKey('nameNotIn')
          ? l$nameNotIn == null
              ? null
              : Object.hashAll(l$nameNotIn.map((v) => v))
          : const {},
      _$data.containsKey('nameGT') ? l$nameGT : const {},
      _$data.containsKey('nameGTE') ? l$nameGTE : const {},
      _$data.containsKey('nameLT') ? l$nameLT : const {},
      _$data.containsKey('nameLTE') ? l$nameLTE : const {},
      _$data.containsKey('nameContains') ? l$nameContains : const {},
      _$data.containsKey('nameHasPrefix') ? l$nameHasPrefix : const {},
      _$data.containsKey('nameHasSuffix') ? l$nameHasSuffix : const {},
      _$data.containsKey('nameEqualFold') ? l$nameEqualFold : const {},
      _$data.containsKey('nameContainsFold') ? l$nameContainsFold : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('usernameNEQ') ? l$usernameNEQ : const {},
      _$data.containsKey('usernameIn')
          ? l$usernameIn == null
              ? null
              : Object.hashAll(l$usernameIn.map((v) => v))
          : const {},
      _$data.containsKey('usernameNotIn')
          ? l$usernameNotIn == null
              ? null
              : Object.hashAll(l$usernameNotIn.map((v) => v))
          : const {},
      _$data.containsKey('usernameGT') ? l$usernameGT : const {},
      _$data.containsKey('usernameGTE') ? l$usernameGTE : const {},
      _$data.containsKey('usernameLT') ? l$usernameLT : const {},
      _$data.containsKey('usernameLTE') ? l$usernameLTE : const {},
      _$data.containsKey('usernameContains') ? l$usernameContains : const {},
      _$data.containsKey('usernameHasPrefix') ? l$usernameHasPrefix : const {},
      _$data.containsKey('usernameHasSuffix') ? l$usernameHasSuffix : const {},
      _$data.containsKey('usernameIsNil') ? l$usernameIsNil : const {},
      _$data.containsKey('usernameNotNil') ? l$usernameNotNil : const {},
      _$data.containsKey('usernameEqualFold') ? l$usernameEqualFold : const {},
      _$data.containsKey('usernameContainsFold')
          ? l$usernameContainsFold
          : const {},
      _$data.containsKey('profile') ? l$profile : const {},
      _$data.containsKey('profileNEQ') ? l$profileNEQ : const {},
      _$data.containsKey('profileIn')
          ? l$profileIn == null
              ? null
              : Object.hashAll(l$profileIn.map((v) => v))
          : const {},
      _$data.containsKey('profileNotIn')
          ? l$profileNotIn == null
              ? null
              : Object.hashAll(l$profileNotIn.map((v) => v))
          : const {},
      _$data.containsKey('profileGT') ? l$profileGT : const {},
      _$data.containsKey('profileGTE') ? l$profileGTE : const {},
      _$data.containsKey('profileLT') ? l$profileLT : const {},
      _$data.containsKey('profileLTE') ? l$profileLTE : const {},
      _$data.containsKey('profileContains') ? l$profileContains : const {},
      _$data.containsKey('profileHasPrefix') ? l$profileHasPrefix : const {},
      _$data.containsKey('profileHasSuffix') ? l$profileHasSuffix : const {},
      _$data.containsKey('profileIsNil') ? l$profileIsNil : const {},
      _$data.containsKey('profileNotNil') ? l$profileNotNil : const {},
      _$data.containsKey('profileEqualFold') ? l$profileEqualFold : const {},
      _$data.containsKey('profileContainsFold')
          ? l$profileContainsFold
          : const {},
      _$data.containsKey('avatarURL') ? l$avatarURL : const {},
      _$data.containsKey('avatarURLNEQ') ? l$avatarURLNEQ : const {},
      _$data.containsKey('avatarURLIn')
          ? l$avatarURLIn == null
              ? null
              : Object.hashAll(l$avatarURLIn.map((v) => v))
          : const {},
      _$data.containsKey('avatarURLNotIn')
          ? l$avatarURLNotIn == null
              ? null
              : Object.hashAll(l$avatarURLNotIn.map((v) => v))
          : const {},
      _$data.containsKey('avatarURLGT') ? l$avatarURLGT : const {},
      _$data.containsKey('avatarURLGTE') ? l$avatarURLGTE : const {},
      _$data.containsKey('avatarURLLT') ? l$avatarURLLT : const {},
      _$data.containsKey('avatarURLLTE') ? l$avatarURLLTE : const {},
      _$data.containsKey('avatarURLContains') ? l$avatarURLContains : const {},
      _$data.containsKey('avatarURLHasPrefix')
          ? l$avatarURLHasPrefix
          : const {},
      _$data.containsKey('avatarURLHasSuffix')
          ? l$avatarURLHasSuffix
          : const {},
      _$data.containsKey('avatarURLIsNil') ? l$avatarURLIsNil : const {},
      _$data.containsKey('avatarURLNotNil') ? l$avatarURLNotNil : const {},
      _$data.containsKey('avatarURLEqualFold')
          ? l$avatarURLEqualFold
          : const {},
      _$data.containsKey('avatarURLContainsFold')
          ? l$avatarURLContainsFold
          : const {},
      _$data.containsKey('hasPosts') ? l$hasPosts : const {},
      _$data.containsKey('hasPostsWith')
          ? l$hasPostsWith == null
              ? null
              : Object.hashAll(l$hasPostsWith.map((v) => v))
          : const {},
      _$data.containsKey('hasLikedPosts') ? l$hasLikedPosts : const {},
      _$data.containsKey('hasLikedPostsWith')
          ? l$hasLikedPostsWith == null
              ? null
              : Object.hashAll(l$hasLikedPostsWith.map((v) => v))
          : const {},
      _$data.containsKey('hasBookmarkedPosts')
          ? l$hasBookmarkedPosts
          : const {},
      _$data.containsKey('hasBookmarkedPostsWith')
          ? l$hasBookmarkedPostsWith == null
              ? null
              : Object.hashAll(l$hasBookmarkedPostsWith.map((v) => v))
          : const {}
    ]);
  }
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
      String? username,
      String? usernameNEQ,
      List<String>? usernameIn,
      List<String>? usernameNotIn,
      String? usernameGT,
      String? usernameGTE,
      String? usernameLT,
      String? usernameLTE,
      String? usernameContains,
      String? usernameHasPrefix,
      String? usernameHasSuffix,
      bool? usernameIsNil,
      bool? usernameNotNil,
      String? usernameEqualFold,
      String? usernameContainsFold,
      String? profile,
      String? profileNEQ,
      List<String>? profileIn,
      List<String>? profileNotIn,
      String? profileGT,
      String? profileGTE,
      String? profileLT,
      String? profileLTE,
      String? profileContains,
      String? profileHasPrefix,
      String? profileHasSuffix,
      bool? profileIsNil,
      bool? profileNotNil,
      String? profileEqualFold,
      String? profileContainsFold,
      String? avatarURL,
      String? avatarURLNEQ,
      List<String>? avatarURLIn,
      List<String>? avatarURLNotIn,
      String? avatarURLGT,
      String? avatarURLGTE,
      String? avatarURLLT,
      String? avatarURLLTE,
      String? avatarURLContains,
      String? avatarURLHasPrefix,
      String? avatarURLHasSuffix,
      bool? avatarURLIsNil,
      bool? avatarURLNotNil,
      String? avatarURLEqualFold,
      String? avatarURLContainsFold,
      bool? hasPosts,
      List<Input$PostWhereInput>? hasPostsWith,
      bool? hasLikedPosts,
      List<Input$PostWhereInput>? hasLikedPostsWith,
      bool? hasBookmarkedPosts,
      List<Input$PostWhereInput>? hasBookmarkedPostsWith});
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
  TRes hasBookmarkedPostsWith(
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
          Object? username = _undefined,
          Object? usernameNEQ = _undefined,
          Object? usernameIn = _undefined,
          Object? usernameNotIn = _undefined,
          Object? usernameGT = _undefined,
          Object? usernameGTE = _undefined,
          Object? usernameLT = _undefined,
          Object? usernameLTE = _undefined,
          Object? usernameContains = _undefined,
          Object? usernameHasPrefix = _undefined,
          Object? usernameHasSuffix = _undefined,
          Object? usernameIsNil = _undefined,
          Object? usernameNotNil = _undefined,
          Object? usernameEqualFold = _undefined,
          Object? usernameContainsFold = _undefined,
          Object? profile = _undefined,
          Object? profileNEQ = _undefined,
          Object? profileIn = _undefined,
          Object? profileNotIn = _undefined,
          Object? profileGT = _undefined,
          Object? profileGTE = _undefined,
          Object? profileLT = _undefined,
          Object? profileLTE = _undefined,
          Object? profileContains = _undefined,
          Object? profileHasPrefix = _undefined,
          Object? profileHasSuffix = _undefined,
          Object? profileIsNil = _undefined,
          Object? profileNotNil = _undefined,
          Object? profileEqualFold = _undefined,
          Object? profileContainsFold = _undefined,
          Object? avatarURL = _undefined,
          Object? avatarURLNEQ = _undefined,
          Object? avatarURLIn = _undefined,
          Object? avatarURLNotIn = _undefined,
          Object? avatarURLGT = _undefined,
          Object? avatarURLGTE = _undefined,
          Object? avatarURLLT = _undefined,
          Object? avatarURLLTE = _undefined,
          Object? avatarURLContains = _undefined,
          Object? avatarURLHasPrefix = _undefined,
          Object? avatarURLHasSuffix = _undefined,
          Object? avatarURLIsNil = _undefined,
          Object? avatarURLNotNil = _undefined,
          Object? avatarURLEqualFold = _undefined,
          Object? avatarURLContainsFold = _undefined,
          Object? hasPosts = _undefined,
          Object? hasPostsWith = _undefined,
          Object? hasLikedPosts = _undefined,
          Object? hasLikedPostsWith = _undefined,
          Object? hasBookmarkedPosts = _undefined,
          Object? hasBookmarkedPostsWith = _undefined}) =>
      _then(Input$UserWhereInput._({
        ..._instance._$data,
        if (not != _undefined) 'not': (not as Input$UserWhereInput?),
        if (and != _undefined) 'and': (and as List<Input$UserWhereInput>?),
        if (or != _undefined) 'or': (or as List<Input$UserWhereInput>?),
        if (id != _undefined) 'id': (id as String?),
        if (idNEQ != _undefined) 'idNEQ': (idNEQ as String?),
        if (idIn != _undefined) 'idIn': (idIn as List<String>?),
        if (idNotIn != _undefined) 'idNotIn': (idNotIn as List<String>?),
        if (idGT != _undefined) 'idGT': (idGT as String?),
        if (idGTE != _undefined) 'idGTE': (idGTE as String?),
        if (idLT != _undefined) 'idLT': (idLT as String?),
        if (idLTE != _undefined) 'idLTE': (idLTE as String?),
        if (name != _undefined) 'name': (name as String?),
        if (nameNEQ != _undefined) 'nameNEQ': (nameNEQ as String?),
        if (nameIn != _undefined) 'nameIn': (nameIn as List<String>?),
        if (nameNotIn != _undefined) 'nameNotIn': (nameNotIn as List<String>?),
        if (nameGT != _undefined) 'nameGT': (nameGT as String?),
        if (nameGTE != _undefined) 'nameGTE': (nameGTE as String?),
        if (nameLT != _undefined) 'nameLT': (nameLT as String?),
        if (nameLTE != _undefined) 'nameLTE': (nameLTE as String?),
        if (nameContains != _undefined)
          'nameContains': (nameContains as String?),
        if (nameHasPrefix != _undefined)
          'nameHasPrefix': (nameHasPrefix as String?),
        if (nameHasSuffix != _undefined)
          'nameHasSuffix': (nameHasSuffix as String?),
        if (nameEqualFold != _undefined)
          'nameEqualFold': (nameEqualFold as String?),
        if (nameContainsFold != _undefined)
          'nameContainsFold': (nameContainsFold as String?),
        if (username != _undefined) 'username': (username as String?),
        if (usernameNEQ != _undefined) 'usernameNEQ': (usernameNEQ as String?),
        if (usernameIn != _undefined)
          'usernameIn': (usernameIn as List<String>?),
        if (usernameNotIn != _undefined)
          'usernameNotIn': (usernameNotIn as List<String>?),
        if (usernameGT != _undefined) 'usernameGT': (usernameGT as String?),
        if (usernameGTE != _undefined) 'usernameGTE': (usernameGTE as String?),
        if (usernameLT != _undefined) 'usernameLT': (usernameLT as String?),
        if (usernameLTE != _undefined) 'usernameLTE': (usernameLTE as String?),
        if (usernameContains != _undefined)
          'usernameContains': (usernameContains as String?),
        if (usernameHasPrefix != _undefined)
          'usernameHasPrefix': (usernameHasPrefix as String?),
        if (usernameHasSuffix != _undefined)
          'usernameHasSuffix': (usernameHasSuffix as String?),
        if (usernameIsNil != _undefined)
          'usernameIsNil': (usernameIsNil as bool?),
        if (usernameNotNil != _undefined)
          'usernameNotNil': (usernameNotNil as bool?),
        if (usernameEqualFold != _undefined)
          'usernameEqualFold': (usernameEqualFold as String?),
        if (usernameContainsFold != _undefined)
          'usernameContainsFold': (usernameContainsFold as String?),
        if (profile != _undefined) 'profile': (profile as String?),
        if (profileNEQ != _undefined) 'profileNEQ': (profileNEQ as String?),
        if (profileIn != _undefined) 'profileIn': (profileIn as List<String>?),
        if (profileNotIn != _undefined)
          'profileNotIn': (profileNotIn as List<String>?),
        if (profileGT != _undefined) 'profileGT': (profileGT as String?),
        if (profileGTE != _undefined) 'profileGTE': (profileGTE as String?),
        if (profileLT != _undefined) 'profileLT': (profileLT as String?),
        if (profileLTE != _undefined) 'profileLTE': (profileLTE as String?),
        if (profileContains != _undefined)
          'profileContains': (profileContains as String?),
        if (profileHasPrefix != _undefined)
          'profileHasPrefix': (profileHasPrefix as String?),
        if (profileHasSuffix != _undefined)
          'profileHasSuffix': (profileHasSuffix as String?),
        if (profileIsNil != _undefined) 'profileIsNil': (profileIsNil as bool?),
        if (profileNotNil != _undefined)
          'profileNotNil': (profileNotNil as bool?),
        if (profileEqualFold != _undefined)
          'profileEqualFold': (profileEqualFold as String?),
        if (profileContainsFold != _undefined)
          'profileContainsFold': (profileContainsFold as String?),
        if (avatarURL != _undefined) 'avatarURL': (avatarURL as String?),
        if (avatarURLNEQ != _undefined)
          'avatarURLNEQ': (avatarURLNEQ as String?),
        if (avatarURLIn != _undefined)
          'avatarURLIn': (avatarURLIn as List<String>?),
        if (avatarURLNotIn != _undefined)
          'avatarURLNotIn': (avatarURLNotIn as List<String>?),
        if (avatarURLGT != _undefined) 'avatarURLGT': (avatarURLGT as String?),
        if (avatarURLGTE != _undefined)
          'avatarURLGTE': (avatarURLGTE as String?),
        if (avatarURLLT != _undefined) 'avatarURLLT': (avatarURLLT as String?),
        if (avatarURLLTE != _undefined)
          'avatarURLLTE': (avatarURLLTE as String?),
        if (avatarURLContains != _undefined)
          'avatarURLContains': (avatarURLContains as String?),
        if (avatarURLHasPrefix != _undefined)
          'avatarURLHasPrefix': (avatarURLHasPrefix as String?),
        if (avatarURLHasSuffix != _undefined)
          'avatarURLHasSuffix': (avatarURLHasSuffix as String?),
        if (avatarURLIsNil != _undefined)
          'avatarURLIsNil': (avatarURLIsNil as bool?),
        if (avatarURLNotNil != _undefined)
          'avatarURLNotNil': (avatarURLNotNil as bool?),
        if (avatarURLEqualFold != _undefined)
          'avatarURLEqualFold': (avatarURLEqualFold as String?),
        if (avatarURLContainsFold != _undefined)
          'avatarURLContainsFold': (avatarURLContainsFold as String?),
        if (hasPosts != _undefined) 'hasPosts': (hasPosts as bool?),
        if (hasPostsWith != _undefined)
          'hasPostsWith': (hasPostsWith as List<Input$PostWhereInput>?),
        if (hasLikedPosts != _undefined)
          'hasLikedPosts': (hasLikedPosts as bool?),
        if (hasLikedPostsWith != _undefined)
          'hasLikedPostsWith':
              (hasLikedPostsWith as List<Input$PostWhereInput>?),
        if (hasBookmarkedPosts != _undefined)
          'hasBookmarkedPosts': (hasBookmarkedPosts as bool?),
        if (hasBookmarkedPostsWith != _undefined)
          'hasBookmarkedPostsWith':
              (hasBookmarkedPostsWith as List<Input$PostWhereInput>?),
      }));
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
  TRes hasBookmarkedPostsWith(
          Iterable<Input$PostWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PostWhereInput<Input$PostWhereInput>>?)
              _fn) =>
      call(
          hasBookmarkedPostsWith: _fn(_instance.hasBookmarkedPostsWith
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
          String? username,
          String? usernameNEQ,
          List<String>? usernameIn,
          List<String>? usernameNotIn,
          String? usernameGT,
          String? usernameGTE,
          String? usernameLT,
          String? usernameLTE,
          String? usernameContains,
          String? usernameHasPrefix,
          String? usernameHasSuffix,
          bool? usernameIsNil,
          bool? usernameNotNil,
          String? usernameEqualFold,
          String? usernameContainsFold,
          String? profile,
          String? profileNEQ,
          List<String>? profileIn,
          List<String>? profileNotIn,
          String? profileGT,
          String? profileGTE,
          String? profileLT,
          String? profileLTE,
          String? profileContains,
          String? profileHasPrefix,
          String? profileHasSuffix,
          bool? profileIsNil,
          bool? profileNotNil,
          String? profileEqualFold,
          String? profileContainsFold,
          String? avatarURL,
          String? avatarURLNEQ,
          List<String>? avatarURLIn,
          List<String>? avatarURLNotIn,
          String? avatarURLGT,
          String? avatarURLGTE,
          String? avatarURLLT,
          String? avatarURLLTE,
          String? avatarURLContains,
          String? avatarURLHasPrefix,
          String? avatarURLHasSuffix,
          bool? avatarURLIsNil,
          bool? avatarURLNotNil,
          String? avatarURLEqualFold,
          String? avatarURLContainsFold,
          bool? hasPosts,
          List<Input$PostWhereInput>? hasPostsWith,
          bool? hasLikedPosts,
          List<Input$PostWhereInput>? hasLikedPostsWith,
          bool? hasBookmarkedPosts,
          List<Input$PostWhereInput>? hasBookmarkedPostsWith}) =>
      _res;
  CopyWith$Input$UserWhereInput<TRes> get not =>
      CopyWith$Input$UserWhereInput.stub(_res);
  and(_fn) => _res;
  or(_fn) => _res;
  hasPostsWith(_fn) => _res;
  hasLikedPostsWith(_fn) => _res;
  hasBookmarkedPostsWith(_fn) => _res;
}

class Input$WorkWhereInput {
  factory Input$WorkWhereInput(
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
      Input$WorkWhereInput._({
        if (not != null) r'not': not,
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (idNEQ != null) r'idNEQ': idNEQ,
        if (idIn != null) r'idIn': idIn,
        if (idNotIn != null) r'idNotIn': idNotIn,
        if (idGT != null) r'idGT': idGT,
        if (idGTE != null) r'idGTE': idGTE,
        if (idLT != null) r'idLT': idLT,
        if (idLTE != null) r'idLTE': idLTE,
        if (title != null) r'title': title,
        if (titleNEQ != null) r'titleNEQ': titleNEQ,
        if (titleIn != null) r'titleIn': titleIn,
        if (titleNotIn != null) r'titleNotIn': titleNotIn,
        if (titleGT != null) r'titleGT': titleGT,
        if (titleGTE != null) r'titleGTE': titleGTE,
        if (titleLT != null) r'titleLT': titleLT,
        if (titleLTE != null) r'titleLTE': titleLTE,
        if (titleContains != null) r'titleContains': titleContains,
        if (titleHasPrefix != null) r'titleHasPrefix': titleHasPrefix,
        if (titleHasSuffix != null) r'titleHasSuffix': titleHasSuffix,
        if (titleEqualFold != null) r'titleEqualFold': titleEqualFold,
        if (titleContainsFold != null) r'titleContainsFold': titleContainsFold,
        if (thumbnail != null) r'thumbnail': thumbnail,
        if (thumbnailNEQ != null) r'thumbnailNEQ': thumbnailNEQ,
        if (thumbnailIn != null) r'thumbnailIn': thumbnailIn,
        if (thumbnailNotIn != null) r'thumbnailNotIn': thumbnailNotIn,
        if (thumbnailGT != null) r'thumbnailGT': thumbnailGT,
        if (thumbnailGTE != null) r'thumbnailGTE': thumbnailGTE,
        if (thumbnailLT != null) r'thumbnailLT': thumbnailLT,
        if (thumbnailLTE != null) r'thumbnailLTE': thumbnailLTE,
        if (thumbnailContains != null) r'thumbnailContains': thumbnailContains,
        if (thumbnailHasPrefix != null)
          r'thumbnailHasPrefix': thumbnailHasPrefix,
        if (thumbnailHasSuffix != null)
          r'thumbnailHasSuffix': thumbnailHasSuffix,
        if (thumbnailIsNil != null) r'thumbnailIsNil': thumbnailIsNil,
        if (thumbnailNotNil != null) r'thumbnailNotNil': thumbnailNotNil,
        if (thumbnailEqualFold != null)
          r'thumbnailEqualFold': thumbnailEqualFold,
        if (thumbnailContainsFold != null)
          r'thumbnailContainsFold': thumbnailContainsFold,
        if (hasPosts != null) r'hasPosts': hasPosts,
        if (hasPostsWith != null) r'hasPostsWith': hasPostsWith,
      });

  Input$WorkWhereInput._(this._$data);

  factory Input$WorkWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$WorkWhereInput.fromJson((l$not as Map<String, dynamic>));
    }
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
              (e) => Input$WorkWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$WorkWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('idNEQ')) {
      final l$idNEQ = data['idNEQ'];
      result$data['idNEQ'] = (l$idNEQ as String?);
    }
    if (data.containsKey('idIn')) {
      final l$idIn = data['idIn'];
      result$data['idIn'] =
          (l$idIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idNotIn')) {
      final l$idNotIn = data['idNotIn'];
      result$data['idNotIn'] =
          (l$idNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('idGT')) {
      final l$idGT = data['idGT'];
      result$data['idGT'] = (l$idGT as String?);
    }
    if (data.containsKey('idGTE')) {
      final l$idGTE = data['idGTE'];
      result$data['idGTE'] = (l$idGTE as String?);
    }
    if (data.containsKey('idLT')) {
      final l$idLT = data['idLT'];
      result$data['idLT'] = (l$idLT as String?);
    }
    if (data.containsKey('idLTE')) {
      final l$idLTE = data['idLTE'];
      result$data['idLTE'] = (l$idLTE as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('titleNEQ')) {
      final l$titleNEQ = data['titleNEQ'];
      result$data['titleNEQ'] = (l$titleNEQ as String?);
    }
    if (data.containsKey('titleIn')) {
      final l$titleIn = data['titleIn'];
      result$data['titleIn'] =
          (l$titleIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('titleNotIn')) {
      final l$titleNotIn = data['titleNotIn'];
      result$data['titleNotIn'] =
          (l$titleNotIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('titleGT')) {
      final l$titleGT = data['titleGT'];
      result$data['titleGT'] = (l$titleGT as String?);
    }
    if (data.containsKey('titleGTE')) {
      final l$titleGTE = data['titleGTE'];
      result$data['titleGTE'] = (l$titleGTE as String?);
    }
    if (data.containsKey('titleLT')) {
      final l$titleLT = data['titleLT'];
      result$data['titleLT'] = (l$titleLT as String?);
    }
    if (data.containsKey('titleLTE')) {
      final l$titleLTE = data['titleLTE'];
      result$data['titleLTE'] = (l$titleLTE as String?);
    }
    if (data.containsKey('titleContains')) {
      final l$titleContains = data['titleContains'];
      result$data['titleContains'] = (l$titleContains as String?);
    }
    if (data.containsKey('titleHasPrefix')) {
      final l$titleHasPrefix = data['titleHasPrefix'];
      result$data['titleHasPrefix'] = (l$titleHasPrefix as String?);
    }
    if (data.containsKey('titleHasSuffix')) {
      final l$titleHasSuffix = data['titleHasSuffix'];
      result$data['titleHasSuffix'] = (l$titleHasSuffix as String?);
    }
    if (data.containsKey('titleEqualFold')) {
      final l$titleEqualFold = data['titleEqualFold'];
      result$data['titleEqualFold'] = (l$titleEqualFold as String?);
    }
    if (data.containsKey('titleContainsFold')) {
      final l$titleContainsFold = data['titleContainsFold'];
      result$data['titleContainsFold'] = (l$titleContainsFold as String?);
    }
    if (data.containsKey('thumbnail')) {
      final l$thumbnail = data['thumbnail'];
      result$data['thumbnail'] = (l$thumbnail as String?);
    }
    if (data.containsKey('thumbnailNEQ')) {
      final l$thumbnailNEQ = data['thumbnailNEQ'];
      result$data['thumbnailNEQ'] = (l$thumbnailNEQ as String?);
    }
    if (data.containsKey('thumbnailIn')) {
      final l$thumbnailIn = data['thumbnailIn'];
      result$data['thumbnailIn'] =
          (l$thumbnailIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('thumbnailNotIn')) {
      final l$thumbnailNotIn = data['thumbnailNotIn'];
      result$data['thumbnailNotIn'] = (l$thumbnailNotIn as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('thumbnailGT')) {
      final l$thumbnailGT = data['thumbnailGT'];
      result$data['thumbnailGT'] = (l$thumbnailGT as String?);
    }
    if (data.containsKey('thumbnailGTE')) {
      final l$thumbnailGTE = data['thumbnailGTE'];
      result$data['thumbnailGTE'] = (l$thumbnailGTE as String?);
    }
    if (data.containsKey('thumbnailLT')) {
      final l$thumbnailLT = data['thumbnailLT'];
      result$data['thumbnailLT'] = (l$thumbnailLT as String?);
    }
    if (data.containsKey('thumbnailLTE')) {
      final l$thumbnailLTE = data['thumbnailLTE'];
      result$data['thumbnailLTE'] = (l$thumbnailLTE as String?);
    }
    if (data.containsKey('thumbnailContains')) {
      final l$thumbnailContains = data['thumbnailContains'];
      result$data['thumbnailContains'] = (l$thumbnailContains as String?);
    }
    if (data.containsKey('thumbnailHasPrefix')) {
      final l$thumbnailHasPrefix = data['thumbnailHasPrefix'];
      result$data['thumbnailHasPrefix'] = (l$thumbnailHasPrefix as String?);
    }
    if (data.containsKey('thumbnailHasSuffix')) {
      final l$thumbnailHasSuffix = data['thumbnailHasSuffix'];
      result$data['thumbnailHasSuffix'] = (l$thumbnailHasSuffix as String?);
    }
    if (data.containsKey('thumbnailIsNil')) {
      final l$thumbnailIsNil = data['thumbnailIsNil'];
      result$data['thumbnailIsNil'] = (l$thumbnailIsNil as bool?);
    }
    if (data.containsKey('thumbnailNotNil')) {
      final l$thumbnailNotNil = data['thumbnailNotNil'];
      result$data['thumbnailNotNil'] = (l$thumbnailNotNil as bool?);
    }
    if (data.containsKey('thumbnailEqualFold')) {
      final l$thumbnailEqualFold = data['thumbnailEqualFold'];
      result$data['thumbnailEqualFold'] = (l$thumbnailEqualFold as String?);
    }
    if (data.containsKey('thumbnailContainsFold')) {
      final l$thumbnailContainsFold = data['thumbnailContainsFold'];
      result$data['thumbnailContainsFold'] =
          (l$thumbnailContainsFold as String?);
    }
    if (data.containsKey('hasPosts')) {
      final l$hasPosts = data['hasPosts'];
      result$data['hasPosts'] = (l$hasPosts as bool?);
    }
    if (data.containsKey('hasPostsWith')) {
      final l$hasPostsWith = data['hasPostsWith'];
      result$data['hasPostsWith'] = (l$hasPostsWith as List<dynamic>?)
          ?.map(
              (e) => Input$PostWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$WorkWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$WorkWhereInput? get not => (_$data['not'] as Input$WorkWhereInput?);
  List<Input$WorkWhereInput>? get and =>
      (_$data['and'] as List<Input$WorkWhereInput>?);
  List<Input$WorkWhereInput>? get or =>
      (_$data['or'] as List<Input$WorkWhereInput>?);
  String? get id => (_$data['id'] as String?);
  String? get idNEQ => (_$data['idNEQ'] as String?);
  List<String>? get idIn => (_$data['idIn'] as List<String>?);
  List<String>? get idNotIn => (_$data['idNotIn'] as List<String>?);
  String? get idGT => (_$data['idGT'] as String?);
  String? get idGTE => (_$data['idGTE'] as String?);
  String? get idLT => (_$data['idLT'] as String?);
  String? get idLTE => (_$data['idLTE'] as String?);
  String? get title => (_$data['title'] as String?);
  String? get titleNEQ => (_$data['titleNEQ'] as String?);
  List<String>? get titleIn => (_$data['titleIn'] as List<String>?);
  List<String>? get titleNotIn => (_$data['titleNotIn'] as List<String>?);
  String? get titleGT => (_$data['titleGT'] as String?);
  String? get titleGTE => (_$data['titleGTE'] as String?);
  String? get titleLT => (_$data['titleLT'] as String?);
  String? get titleLTE => (_$data['titleLTE'] as String?);
  String? get titleContains => (_$data['titleContains'] as String?);
  String? get titleHasPrefix => (_$data['titleHasPrefix'] as String?);
  String? get titleHasSuffix => (_$data['titleHasSuffix'] as String?);
  String? get titleEqualFold => (_$data['titleEqualFold'] as String?);
  String? get titleContainsFold => (_$data['titleContainsFold'] as String?);
  String? get thumbnail => (_$data['thumbnail'] as String?);
  String? get thumbnailNEQ => (_$data['thumbnailNEQ'] as String?);
  List<String>? get thumbnailIn => (_$data['thumbnailIn'] as List<String>?);
  List<String>? get thumbnailNotIn =>
      (_$data['thumbnailNotIn'] as List<String>?);
  String? get thumbnailGT => (_$data['thumbnailGT'] as String?);
  String? get thumbnailGTE => (_$data['thumbnailGTE'] as String?);
  String? get thumbnailLT => (_$data['thumbnailLT'] as String?);
  String? get thumbnailLTE => (_$data['thumbnailLTE'] as String?);
  String? get thumbnailContains => (_$data['thumbnailContains'] as String?);
  String? get thumbnailHasPrefix => (_$data['thumbnailHasPrefix'] as String?);
  String? get thumbnailHasSuffix => (_$data['thumbnailHasSuffix'] as String?);
  bool? get thumbnailIsNil => (_$data['thumbnailIsNil'] as bool?);
  bool? get thumbnailNotNil => (_$data['thumbnailNotNil'] as bool?);
  String? get thumbnailEqualFold => (_$data['thumbnailEqualFold'] as String?);
  String? get thumbnailContainsFold =>
      (_$data['thumbnailContainsFold'] as String?);
  bool? get hasPosts => (_$data['hasPosts'] as bool?);
  List<Input$PostWhereInput>? get hasPostsWith =>
      (_$data['hasPostsWith'] as List<Input$PostWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idNEQ')) {
      final l$idNEQ = idNEQ;
      result$data['idNEQ'] = l$idNEQ;
    }
    if (_$data.containsKey('idIn')) {
      final l$idIn = idIn;
      result$data['idIn'] = l$idIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idNotIn')) {
      final l$idNotIn = idNotIn;
      result$data['idNotIn'] = l$idNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idGT')) {
      final l$idGT = idGT;
      result$data['idGT'] = l$idGT;
    }
    if (_$data.containsKey('idGTE')) {
      final l$idGTE = idGTE;
      result$data['idGTE'] = l$idGTE;
    }
    if (_$data.containsKey('idLT')) {
      final l$idLT = idLT;
      result$data['idLT'] = l$idLT;
    }
    if (_$data.containsKey('idLTE')) {
      final l$idLTE = idLTE;
      result$data['idLTE'] = l$idLTE;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('titleNEQ')) {
      final l$titleNEQ = titleNEQ;
      result$data['titleNEQ'] = l$titleNEQ;
    }
    if (_$data.containsKey('titleIn')) {
      final l$titleIn = titleIn;
      result$data['titleIn'] = l$titleIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('titleNotIn')) {
      final l$titleNotIn = titleNotIn;
      result$data['titleNotIn'] = l$titleNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('titleGT')) {
      final l$titleGT = titleGT;
      result$data['titleGT'] = l$titleGT;
    }
    if (_$data.containsKey('titleGTE')) {
      final l$titleGTE = titleGTE;
      result$data['titleGTE'] = l$titleGTE;
    }
    if (_$data.containsKey('titleLT')) {
      final l$titleLT = titleLT;
      result$data['titleLT'] = l$titleLT;
    }
    if (_$data.containsKey('titleLTE')) {
      final l$titleLTE = titleLTE;
      result$data['titleLTE'] = l$titleLTE;
    }
    if (_$data.containsKey('titleContains')) {
      final l$titleContains = titleContains;
      result$data['titleContains'] = l$titleContains;
    }
    if (_$data.containsKey('titleHasPrefix')) {
      final l$titleHasPrefix = titleHasPrefix;
      result$data['titleHasPrefix'] = l$titleHasPrefix;
    }
    if (_$data.containsKey('titleHasSuffix')) {
      final l$titleHasSuffix = titleHasSuffix;
      result$data['titleHasSuffix'] = l$titleHasSuffix;
    }
    if (_$data.containsKey('titleEqualFold')) {
      final l$titleEqualFold = titleEqualFold;
      result$data['titleEqualFold'] = l$titleEqualFold;
    }
    if (_$data.containsKey('titleContainsFold')) {
      final l$titleContainsFold = titleContainsFold;
      result$data['titleContainsFold'] = l$titleContainsFold;
    }
    if (_$data.containsKey('thumbnail')) {
      final l$thumbnail = thumbnail;
      result$data['thumbnail'] = l$thumbnail;
    }
    if (_$data.containsKey('thumbnailNEQ')) {
      final l$thumbnailNEQ = thumbnailNEQ;
      result$data['thumbnailNEQ'] = l$thumbnailNEQ;
    }
    if (_$data.containsKey('thumbnailIn')) {
      final l$thumbnailIn = thumbnailIn;
      result$data['thumbnailIn'] = l$thumbnailIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('thumbnailNotIn')) {
      final l$thumbnailNotIn = thumbnailNotIn;
      result$data['thumbnailNotIn'] = l$thumbnailNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('thumbnailGT')) {
      final l$thumbnailGT = thumbnailGT;
      result$data['thumbnailGT'] = l$thumbnailGT;
    }
    if (_$data.containsKey('thumbnailGTE')) {
      final l$thumbnailGTE = thumbnailGTE;
      result$data['thumbnailGTE'] = l$thumbnailGTE;
    }
    if (_$data.containsKey('thumbnailLT')) {
      final l$thumbnailLT = thumbnailLT;
      result$data['thumbnailLT'] = l$thumbnailLT;
    }
    if (_$data.containsKey('thumbnailLTE')) {
      final l$thumbnailLTE = thumbnailLTE;
      result$data['thumbnailLTE'] = l$thumbnailLTE;
    }
    if (_$data.containsKey('thumbnailContains')) {
      final l$thumbnailContains = thumbnailContains;
      result$data['thumbnailContains'] = l$thumbnailContains;
    }
    if (_$data.containsKey('thumbnailHasPrefix')) {
      final l$thumbnailHasPrefix = thumbnailHasPrefix;
      result$data['thumbnailHasPrefix'] = l$thumbnailHasPrefix;
    }
    if (_$data.containsKey('thumbnailHasSuffix')) {
      final l$thumbnailHasSuffix = thumbnailHasSuffix;
      result$data['thumbnailHasSuffix'] = l$thumbnailHasSuffix;
    }
    if (_$data.containsKey('thumbnailIsNil')) {
      final l$thumbnailIsNil = thumbnailIsNil;
      result$data['thumbnailIsNil'] = l$thumbnailIsNil;
    }
    if (_$data.containsKey('thumbnailNotNil')) {
      final l$thumbnailNotNil = thumbnailNotNil;
      result$data['thumbnailNotNil'] = l$thumbnailNotNil;
    }
    if (_$data.containsKey('thumbnailEqualFold')) {
      final l$thumbnailEqualFold = thumbnailEqualFold;
      result$data['thumbnailEqualFold'] = l$thumbnailEqualFold;
    }
    if (_$data.containsKey('thumbnailContainsFold')) {
      final l$thumbnailContainsFold = thumbnailContainsFold;
      result$data['thumbnailContainsFold'] = l$thumbnailContainsFold;
    }
    if (_$data.containsKey('hasPosts')) {
      final l$hasPosts = hasPosts;
      result$data['hasPosts'] = l$hasPosts;
    }
    if (_$data.containsKey('hasPostsWith')) {
      final l$hasPostsWith = hasPostsWith;
      result$data['hasPostsWith'] =
          l$hasPostsWith?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$WorkWhereInput<Input$WorkWhereInput> get copyWith =>
      CopyWith$Input$WorkWhereInput(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WorkWhereInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idNEQ = idNEQ;
    final lOther$idNEQ = other.idNEQ;
    if (_$data.containsKey('idNEQ') != other._$data.containsKey('idNEQ')) {
      return false;
    }
    if (l$idNEQ != lOther$idNEQ) {
      return false;
    }
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (_$data.containsKey('idIn') != other._$data.containsKey('idIn')) {
      return false;
    }
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) {
        return false;
      }
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) {
          return false;
        }
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }
    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (_$data.containsKey('idNotIn') != other._$data.containsKey('idNotIn')) {
      return false;
    }
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) {
          return false;
        }
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }
    final l$idGT = idGT;
    final lOther$idGT = other.idGT;
    if (_$data.containsKey('idGT') != other._$data.containsKey('idGT')) {
      return false;
    }
    if (l$idGT != lOther$idGT) {
      return false;
    }
    final l$idGTE = idGTE;
    final lOther$idGTE = other.idGTE;
    if (_$data.containsKey('idGTE') != other._$data.containsKey('idGTE')) {
      return false;
    }
    if (l$idGTE != lOther$idGTE) {
      return false;
    }
    final l$idLT = idLT;
    final lOther$idLT = other.idLT;
    if (_$data.containsKey('idLT') != other._$data.containsKey('idLT')) {
      return false;
    }
    if (l$idLT != lOther$idLT) {
      return false;
    }
    final l$idLTE = idLTE;
    final lOther$idLTE = other.idLTE;
    if (_$data.containsKey('idLTE') != other._$data.containsKey('idLTE')) {
      return false;
    }
    if (l$idLTE != lOther$idLTE) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$titleNEQ = titleNEQ;
    final lOther$titleNEQ = other.titleNEQ;
    if (_$data.containsKey('titleNEQ') !=
        other._$data.containsKey('titleNEQ')) {
      return false;
    }
    if (l$titleNEQ != lOther$titleNEQ) {
      return false;
    }
    final l$titleIn = titleIn;
    final lOther$titleIn = other.titleIn;
    if (_$data.containsKey('titleIn') != other._$data.containsKey('titleIn')) {
      return false;
    }
    if (l$titleIn != null && lOther$titleIn != null) {
      if (l$titleIn.length != lOther$titleIn.length) {
        return false;
      }
      for (int i = 0; i < l$titleIn.length; i++) {
        final l$titleIn$entry = l$titleIn[i];
        final lOther$titleIn$entry = lOther$titleIn[i];
        if (l$titleIn$entry != lOther$titleIn$entry) {
          return false;
        }
      }
    } else if (l$titleIn != lOther$titleIn) {
      return false;
    }
    final l$titleNotIn = titleNotIn;
    final lOther$titleNotIn = other.titleNotIn;
    if (_$data.containsKey('titleNotIn') !=
        other._$data.containsKey('titleNotIn')) {
      return false;
    }
    if (l$titleNotIn != null && lOther$titleNotIn != null) {
      if (l$titleNotIn.length != lOther$titleNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$titleNotIn.length; i++) {
        final l$titleNotIn$entry = l$titleNotIn[i];
        final lOther$titleNotIn$entry = lOther$titleNotIn[i];
        if (l$titleNotIn$entry != lOther$titleNotIn$entry) {
          return false;
        }
      }
    } else if (l$titleNotIn != lOther$titleNotIn) {
      return false;
    }
    final l$titleGT = titleGT;
    final lOther$titleGT = other.titleGT;
    if (_$data.containsKey('titleGT') != other._$data.containsKey('titleGT')) {
      return false;
    }
    if (l$titleGT != lOther$titleGT) {
      return false;
    }
    final l$titleGTE = titleGTE;
    final lOther$titleGTE = other.titleGTE;
    if (_$data.containsKey('titleGTE') !=
        other._$data.containsKey('titleGTE')) {
      return false;
    }
    if (l$titleGTE != lOther$titleGTE) {
      return false;
    }
    final l$titleLT = titleLT;
    final lOther$titleLT = other.titleLT;
    if (_$data.containsKey('titleLT') != other._$data.containsKey('titleLT')) {
      return false;
    }
    if (l$titleLT != lOther$titleLT) {
      return false;
    }
    final l$titleLTE = titleLTE;
    final lOther$titleLTE = other.titleLTE;
    if (_$data.containsKey('titleLTE') !=
        other._$data.containsKey('titleLTE')) {
      return false;
    }
    if (l$titleLTE != lOther$titleLTE) {
      return false;
    }
    final l$titleContains = titleContains;
    final lOther$titleContains = other.titleContains;
    if (_$data.containsKey('titleContains') !=
        other._$data.containsKey('titleContains')) {
      return false;
    }
    if (l$titleContains != lOther$titleContains) {
      return false;
    }
    final l$titleHasPrefix = titleHasPrefix;
    final lOther$titleHasPrefix = other.titleHasPrefix;
    if (_$data.containsKey('titleHasPrefix') !=
        other._$data.containsKey('titleHasPrefix')) {
      return false;
    }
    if (l$titleHasPrefix != lOther$titleHasPrefix) {
      return false;
    }
    final l$titleHasSuffix = titleHasSuffix;
    final lOther$titleHasSuffix = other.titleHasSuffix;
    if (_$data.containsKey('titleHasSuffix') !=
        other._$data.containsKey('titleHasSuffix')) {
      return false;
    }
    if (l$titleHasSuffix != lOther$titleHasSuffix) {
      return false;
    }
    final l$titleEqualFold = titleEqualFold;
    final lOther$titleEqualFold = other.titleEqualFold;
    if (_$data.containsKey('titleEqualFold') !=
        other._$data.containsKey('titleEqualFold')) {
      return false;
    }
    if (l$titleEqualFold != lOther$titleEqualFold) {
      return false;
    }
    final l$titleContainsFold = titleContainsFold;
    final lOther$titleContainsFold = other.titleContainsFold;
    if (_$data.containsKey('titleContainsFold') !=
        other._$data.containsKey('titleContainsFold')) {
      return false;
    }
    if (l$titleContainsFold != lOther$titleContainsFold) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (_$data.containsKey('thumbnail') !=
        other._$data.containsKey('thumbnail')) {
      return false;
    }
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$thumbnailNEQ = thumbnailNEQ;
    final lOther$thumbnailNEQ = other.thumbnailNEQ;
    if (_$data.containsKey('thumbnailNEQ') !=
        other._$data.containsKey('thumbnailNEQ')) {
      return false;
    }
    if (l$thumbnailNEQ != lOther$thumbnailNEQ) {
      return false;
    }
    final l$thumbnailIn = thumbnailIn;
    final lOther$thumbnailIn = other.thumbnailIn;
    if (_$data.containsKey('thumbnailIn') !=
        other._$data.containsKey('thumbnailIn')) {
      return false;
    }
    if (l$thumbnailIn != null && lOther$thumbnailIn != null) {
      if (l$thumbnailIn.length != lOther$thumbnailIn.length) {
        return false;
      }
      for (int i = 0; i < l$thumbnailIn.length; i++) {
        final l$thumbnailIn$entry = l$thumbnailIn[i];
        final lOther$thumbnailIn$entry = lOther$thumbnailIn[i];
        if (l$thumbnailIn$entry != lOther$thumbnailIn$entry) {
          return false;
        }
      }
    } else if (l$thumbnailIn != lOther$thumbnailIn) {
      return false;
    }
    final l$thumbnailNotIn = thumbnailNotIn;
    final lOther$thumbnailNotIn = other.thumbnailNotIn;
    if (_$data.containsKey('thumbnailNotIn') !=
        other._$data.containsKey('thumbnailNotIn')) {
      return false;
    }
    if (l$thumbnailNotIn != null && lOther$thumbnailNotIn != null) {
      if (l$thumbnailNotIn.length != lOther$thumbnailNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$thumbnailNotIn.length; i++) {
        final l$thumbnailNotIn$entry = l$thumbnailNotIn[i];
        final lOther$thumbnailNotIn$entry = lOther$thumbnailNotIn[i];
        if (l$thumbnailNotIn$entry != lOther$thumbnailNotIn$entry) {
          return false;
        }
      }
    } else if (l$thumbnailNotIn != lOther$thumbnailNotIn) {
      return false;
    }
    final l$thumbnailGT = thumbnailGT;
    final lOther$thumbnailGT = other.thumbnailGT;
    if (_$data.containsKey('thumbnailGT') !=
        other._$data.containsKey('thumbnailGT')) {
      return false;
    }
    if (l$thumbnailGT != lOther$thumbnailGT) {
      return false;
    }
    final l$thumbnailGTE = thumbnailGTE;
    final lOther$thumbnailGTE = other.thumbnailGTE;
    if (_$data.containsKey('thumbnailGTE') !=
        other._$data.containsKey('thumbnailGTE')) {
      return false;
    }
    if (l$thumbnailGTE != lOther$thumbnailGTE) {
      return false;
    }
    final l$thumbnailLT = thumbnailLT;
    final lOther$thumbnailLT = other.thumbnailLT;
    if (_$data.containsKey('thumbnailLT') !=
        other._$data.containsKey('thumbnailLT')) {
      return false;
    }
    if (l$thumbnailLT != lOther$thumbnailLT) {
      return false;
    }
    final l$thumbnailLTE = thumbnailLTE;
    final lOther$thumbnailLTE = other.thumbnailLTE;
    if (_$data.containsKey('thumbnailLTE') !=
        other._$data.containsKey('thumbnailLTE')) {
      return false;
    }
    if (l$thumbnailLTE != lOther$thumbnailLTE) {
      return false;
    }
    final l$thumbnailContains = thumbnailContains;
    final lOther$thumbnailContains = other.thumbnailContains;
    if (_$data.containsKey('thumbnailContains') !=
        other._$data.containsKey('thumbnailContains')) {
      return false;
    }
    if (l$thumbnailContains != lOther$thumbnailContains) {
      return false;
    }
    final l$thumbnailHasPrefix = thumbnailHasPrefix;
    final lOther$thumbnailHasPrefix = other.thumbnailHasPrefix;
    if (_$data.containsKey('thumbnailHasPrefix') !=
        other._$data.containsKey('thumbnailHasPrefix')) {
      return false;
    }
    if (l$thumbnailHasPrefix != lOther$thumbnailHasPrefix) {
      return false;
    }
    final l$thumbnailHasSuffix = thumbnailHasSuffix;
    final lOther$thumbnailHasSuffix = other.thumbnailHasSuffix;
    if (_$data.containsKey('thumbnailHasSuffix') !=
        other._$data.containsKey('thumbnailHasSuffix')) {
      return false;
    }
    if (l$thumbnailHasSuffix != lOther$thumbnailHasSuffix) {
      return false;
    }
    final l$thumbnailIsNil = thumbnailIsNil;
    final lOther$thumbnailIsNil = other.thumbnailIsNil;
    if (_$data.containsKey('thumbnailIsNil') !=
        other._$data.containsKey('thumbnailIsNil')) {
      return false;
    }
    if (l$thumbnailIsNil != lOther$thumbnailIsNil) {
      return false;
    }
    final l$thumbnailNotNil = thumbnailNotNil;
    final lOther$thumbnailNotNil = other.thumbnailNotNil;
    if (_$data.containsKey('thumbnailNotNil') !=
        other._$data.containsKey('thumbnailNotNil')) {
      return false;
    }
    if (l$thumbnailNotNil != lOther$thumbnailNotNil) {
      return false;
    }
    final l$thumbnailEqualFold = thumbnailEqualFold;
    final lOther$thumbnailEqualFold = other.thumbnailEqualFold;
    if (_$data.containsKey('thumbnailEqualFold') !=
        other._$data.containsKey('thumbnailEqualFold')) {
      return false;
    }
    if (l$thumbnailEqualFold != lOther$thumbnailEqualFold) {
      return false;
    }
    final l$thumbnailContainsFold = thumbnailContainsFold;
    final lOther$thumbnailContainsFold = other.thumbnailContainsFold;
    if (_$data.containsKey('thumbnailContainsFold') !=
        other._$data.containsKey('thumbnailContainsFold')) {
      return false;
    }
    if (l$thumbnailContainsFold != lOther$thumbnailContainsFold) {
      return false;
    }
    final l$hasPosts = hasPosts;
    final lOther$hasPosts = other.hasPosts;
    if (_$data.containsKey('hasPosts') !=
        other._$data.containsKey('hasPosts')) {
      return false;
    }
    if (l$hasPosts != lOther$hasPosts) {
      return false;
    }
    final l$hasPostsWith = hasPostsWith;
    final lOther$hasPostsWith = other.hasPostsWith;
    if (_$data.containsKey('hasPostsWith') !=
        other._$data.containsKey('hasPostsWith')) {
      return false;
    }
    if (l$hasPostsWith != null && lOther$hasPostsWith != null) {
      if (l$hasPostsWith.length != lOther$hasPostsWith.length) {
        return false;
      }
      for (int i = 0; i < l$hasPostsWith.length; i++) {
        final l$hasPostsWith$entry = l$hasPostsWith[i];
        final lOther$hasPostsWith$entry = lOther$hasPostsWith[i];
        if (l$hasPostsWith$entry != lOther$hasPostsWith$entry) {
          return false;
        }
      }
    } else if (l$hasPostsWith != lOther$hasPostsWith) {
      return false;
    }
    return true;
  }

  @override
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
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idNEQ') ? l$idNEQ : const {},
      _$data.containsKey('idIn')
          ? l$idIn == null
              ? null
              : Object.hashAll(l$idIn.map((v) => v))
          : const {},
      _$data.containsKey('idNotIn')
          ? l$idNotIn == null
              ? null
              : Object.hashAll(l$idNotIn.map((v) => v))
          : const {},
      _$data.containsKey('idGT') ? l$idGT : const {},
      _$data.containsKey('idGTE') ? l$idGTE : const {},
      _$data.containsKey('idLT') ? l$idLT : const {},
      _$data.containsKey('idLTE') ? l$idLTE : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('titleNEQ') ? l$titleNEQ : const {},
      _$data.containsKey('titleIn')
          ? l$titleIn == null
              ? null
              : Object.hashAll(l$titleIn.map((v) => v))
          : const {},
      _$data.containsKey('titleNotIn')
          ? l$titleNotIn == null
              ? null
              : Object.hashAll(l$titleNotIn.map((v) => v))
          : const {},
      _$data.containsKey('titleGT') ? l$titleGT : const {},
      _$data.containsKey('titleGTE') ? l$titleGTE : const {},
      _$data.containsKey('titleLT') ? l$titleLT : const {},
      _$data.containsKey('titleLTE') ? l$titleLTE : const {},
      _$data.containsKey('titleContains') ? l$titleContains : const {},
      _$data.containsKey('titleHasPrefix') ? l$titleHasPrefix : const {},
      _$data.containsKey('titleHasSuffix') ? l$titleHasSuffix : const {},
      _$data.containsKey('titleEqualFold') ? l$titleEqualFold : const {},
      _$data.containsKey('titleContainsFold') ? l$titleContainsFold : const {},
      _$data.containsKey('thumbnail') ? l$thumbnail : const {},
      _$data.containsKey('thumbnailNEQ') ? l$thumbnailNEQ : const {},
      _$data.containsKey('thumbnailIn')
          ? l$thumbnailIn == null
              ? null
              : Object.hashAll(l$thumbnailIn.map((v) => v))
          : const {},
      _$data.containsKey('thumbnailNotIn')
          ? l$thumbnailNotIn == null
              ? null
              : Object.hashAll(l$thumbnailNotIn.map((v) => v))
          : const {},
      _$data.containsKey('thumbnailGT') ? l$thumbnailGT : const {},
      _$data.containsKey('thumbnailGTE') ? l$thumbnailGTE : const {},
      _$data.containsKey('thumbnailLT') ? l$thumbnailLT : const {},
      _$data.containsKey('thumbnailLTE') ? l$thumbnailLTE : const {},
      _$data.containsKey('thumbnailContains') ? l$thumbnailContains : const {},
      _$data.containsKey('thumbnailHasPrefix')
          ? l$thumbnailHasPrefix
          : const {},
      _$data.containsKey('thumbnailHasSuffix')
          ? l$thumbnailHasSuffix
          : const {},
      _$data.containsKey('thumbnailIsNil') ? l$thumbnailIsNil : const {},
      _$data.containsKey('thumbnailNotNil') ? l$thumbnailNotNil : const {},
      _$data.containsKey('thumbnailEqualFold')
          ? l$thumbnailEqualFold
          : const {},
      _$data.containsKey('thumbnailContainsFold')
          ? l$thumbnailContainsFold
          : const {},
      _$data.containsKey('hasPosts') ? l$hasPosts : const {},
      _$data.containsKey('hasPostsWith')
          ? l$hasPostsWith == null
              ? null
              : Object.hashAll(l$hasPostsWith.map((v) => v))
          : const {}
    ]);
  }
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
      _then(Input$WorkWhereInput._({
        ..._instance._$data,
        if (not != _undefined) 'not': (not as Input$WorkWhereInput?),
        if (and != _undefined) 'and': (and as List<Input$WorkWhereInput>?),
        if (or != _undefined) 'or': (or as List<Input$WorkWhereInput>?),
        if (id != _undefined) 'id': (id as String?),
        if (idNEQ != _undefined) 'idNEQ': (idNEQ as String?),
        if (idIn != _undefined) 'idIn': (idIn as List<String>?),
        if (idNotIn != _undefined) 'idNotIn': (idNotIn as List<String>?),
        if (idGT != _undefined) 'idGT': (idGT as String?),
        if (idGTE != _undefined) 'idGTE': (idGTE as String?),
        if (idLT != _undefined) 'idLT': (idLT as String?),
        if (idLTE != _undefined) 'idLTE': (idLTE as String?),
        if (title != _undefined) 'title': (title as String?),
        if (titleNEQ != _undefined) 'titleNEQ': (titleNEQ as String?),
        if (titleIn != _undefined) 'titleIn': (titleIn as List<String>?),
        if (titleNotIn != _undefined)
          'titleNotIn': (titleNotIn as List<String>?),
        if (titleGT != _undefined) 'titleGT': (titleGT as String?),
        if (titleGTE != _undefined) 'titleGTE': (titleGTE as String?),
        if (titleLT != _undefined) 'titleLT': (titleLT as String?),
        if (titleLTE != _undefined) 'titleLTE': (titleLTE as String?),
        if (titleContains != _undefined)
          'titleContains': (titleContains as String?),
        if (titleHasPrefix != _undefined)
          'titleHasPrefix': (titleHasPrefix as String?),
        if (titleHasSuffix != _undefined)
          'titleHasSuffix': (titleHasSuffix as String?),
        if (titleEqualFold != _undefined)
          'titleEqualFold': (titleEqualFold as String?),
        if (titleContainsFold != _undefined)
          'titleContainsFold': (titleContainsFold as String?),
        if (thumbnail != _undefined) 'thumbnail': (thumbnail as String?),
        if (thumbnailNEQ != _undefined)
          'thumbnailNEQ': (thumbnailNEQ as String?),
        if (thumbnailIn != _undefined)
          'thumbnailIn': (thumbnailIn as List<String>?),
        if (thumbnailNotIn != _undefined)
          'thumbnailNotIn': (thumbnailNotIn as List<String>?),
        if (thumbnailGT != _undefined) 'thumbnailGT': (thumbnailGT as String?),
        if (thumbnailGTE != _undefined)
          'thumbnailGTE': (thumbnailGTE as String?),
        if (thumbnailLT != _undefined) 'thumbnailLT': (thumbnailLT as String?),
        if (thumbnailLTE != _undefined)
          'thumbnailLTE': (thumbnailLTE as String?),
        if (thumbnailContains != _undefined)
          'thumbnailContains': (thumbnailContains as String?),
        if (thumbnailHasPrefix != _undefined)
          'thumbnailHasPrefix': (thumbnailHasPrefix as String?),
        if (thumbnailHasSuffix != _undefined)
          'thumbnailHasSuffix': (thumbnailHasSuffix as String?),
        if (thumbnailIsNil != _undefined)
          'thumbnailIsNil': (thumbnailIsNil as bool?),
        if (thumbnailNotNil != _undefined)
          'thumbnailNotNil': (thumbnailNotNil as bool?),
        if (thumbnailEqualFold != _undefined)
          'thumbnailEqualFold': (thumbnailEqualFold as String?),
        if (thumbnailContainsFold != _undefined)
          'thumbnailContainsFold': (thumbnailContainsFold as String?),
        if (hasPosts != _undefined) 'hasPosts': (hasPosts as bool?),
        if (hasPostsWith != _undefined)
          'hasPostsWith': (hasPostsWith as List<Input$PostWhereInput>?),
      }));
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

enum Enum$OrderDirection { ASC, DESC, $unknown }

String toJson$Enum$OrderDirection(Enum$OrderDirection e) {
  switch (e) {
    case Enum$OrderDirection.ASC:
      return r'ASC';
    case Enum$OrderDirection.DESC:
      return r'DESC';
    case Enum$OrderDirection.$unknown:
      return r'$unknown';
  }
}

Enum$OrderDirection fromJson$Enum$OrderDirection(String value) {
  switch (value) {
    case r'ASC':
      return Enum$OrderDirection.ASC;
    case r'DESC':
      return Enum$OrderDirection.DESC;
    default:
      return Enum$OrderDirection.$unknown;
  }
}

enum Enum$PostOrderField { CREATE_TIME, UPDATE_TIME, $unknown }

String toJson$Enum$PostOrderField(Enum$PostOrderField e) {
  switch (e) {
    case Enum$PostOrderField.CREATE_TIME:
      return r'CREATE_TIME';
    case Enum$PostOrderField.UPDATE_TIME:
      return r'UPDATE_TIME';
    case Enum$PostOrderField.$unknown:
      return r'$unknown';
  }
}

Enum$PostOrderField fromJson$Enum$PostOrderField(String value) {
  switch (value) {
    case r'CREATE_TIME':
      return Enum$PostOrderField.CREATE_TIME;
    case r'UPDATE_TIME':
      return Enum$PostOrderField.UPDATE_TIME;
    default:
      return Enum$PostOrderField.$unknown;
  }
}

enum Enum$PostPostType { letter, praise, $unknown }

String toJson$Enum$PostPostType(Enum$PostPostType e) {
  switch (e) {
    case Enum$PostPostType.letter:
      return r'letter';
    case Enum$PostPostType.praise:
      return r'praise';
    case Enum$PostPostType.$unknown:
      return r'$unknown';
  }
}

Enum$PostPostType fromJson$Enum$PostPostType(String value) {
  switch (value) {
    case r'letter':
      return Enum$PostPostType.letter;
    case r'praise':
      return Enum$PostPostType.praise;
    default:
      return Enum$PostPostType.$unknown;
  }
}

const possibleTypesMap = {
  'Node': {'Category', 'Hashtag', 'Post', 'User', 'Work'}
};
