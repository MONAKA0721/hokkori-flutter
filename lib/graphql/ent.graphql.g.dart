// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ent.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$CreateHashtagInput _$Input$CreateHashtagInputFromJson(
        Map<String, dynamic> json) =>
    Input$CreateHashtagInput(
      title: json['title'] as String,
      postIDs:
          (json['postIDs'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$Input$CreateHashtagInputToJson(
        Input$CreateHashtagInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'postIDs': instance.postIDs,
    };

Input$CreatePostInput _$Input$CreatePostInputFromJson(
        Map<String, dynamic> json) =>
    Input$CreatePostInput(
      createTime: json['createTime'] as String?,
      updateTime: json['updateTime'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
      type: $enumDecode(_$Enum$PostPostTypeEnumMap, json['type'],
          unknownValue: Enum$PostPostType.$unknown),
      spoiled: json['spoiled'] as bool,
      ownerID: json['ownerID'] as String,
      hashtagIDs: (json['hashtagIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workID: json['workID'] as String,
    );

Map<String, dynamic> _$Input$CreatePostInputToJson(
        Input$CreatePostInput instance) =>
    <String, dynamic>{
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'title': instance.title,
      'content': instance.content,
      'type': _$Enum$PostPostTypeEnumMap[instance.type]!,
      'spoiled': instance.spoiled,
      'ownerID': instance.ownerID,
      'hashtagIDs': instance.hashtagIDs,
      'workID': instance.workID,
    };

const _$Enum$PostPostTypeEnumMap = {
  Enum$PostPostType.letter: 'letter',
  Enum$PostPostType.praise: 'praise',
  Enum$PostPostType.$unknown: r'$unknown',
};

Input$CreateUserInput _$Input$CreateUserInputFromJson(
        Map<String, dynamic> json) =>
    Input$CreateUserInput(
      name: json['name'] as String,
      postIDs:
          (json['postIDs'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$Input$CreateUserInputToJson(
        Input$CreateUserInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'postIDs': instance.postIDs,
    };

Input$CreateWorkInput _$Input$CreateWorkInputFromJson(
        Map<String, dynamic> json) =>
    Input$CreateWorkInput(
      title: json['title'] as String,
      postIDs:
          (json['postIDs'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$Input$CreateWorkInputToJson(
        Input$CreateWorkInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'postIDs': instance.postIDs,
    };

Input$HashtagWhereInput _$Input$HashtagWhereInputFromJson(
        Map<String, dynamic> json) =>
    Input$HashtagWhereInput(
      not: json['not'] == null
          ? null
          : Input$HashtagWhereInput.fromJson(
              json['not'] as Map<String, dynamic>),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) =>
              Input$HashtagWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) =>
              Input$HashtagWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      idNEQ: json['idNEQ'] as String?,
      idIn: (json['idIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      idNotIn:
          (json['idNotIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      idGT: json['idGT'] as String?,
      idGTE: json['idGTE'] as String?,
      idLT: json['idLT'] as String?,
      idLTE: json['idLTE'] as String?,
      title: json['title'] as String?,
      titleNEQ: json['titleNEQ'] as String?,
      titleIn:
          (json['titleIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      titleNotIn: (json['titleNotIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      titleGT: json['titleGT'] as String?,
      titleGTE: json['titleGTE'] as String?,
      titleLT: json['titleLT'] as String?,
      titleLTE: json['titleLTE'] as String?,
      titleContains: json['titleContains'] as String?,
      titleHasPrefix: json['titleHasPrefix'] as String?,
      titleHasSuffix: json['titleHasSuffix'] as String?,
      titleEqualFold: json['titleEqualFold'] as String?,
      titleContainsFold: json['titleContainsFold'] as String?,
      hasPosts: json['hasPosts'] as bool?,
      hasPostsWith: (json['hasPostsWith'] as List<dynamic>?)
          ?.map((e) => Input$PostWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Input$HashtagWhereInputToJson(
        Input$HashtagWhereInput instance) =>
    <String, dynamic>{
      'not': instance.not?.toJson(),
      'and': instance.and?.map((e) => e.toJson()).toList(),
      'or': instance.or?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'idNEQ': instance.idNEQ,
      'idIn': instance.idIn,
      'idNotIn': instance.idNotIn,
      'idGT': instance.idGT,
      'idGTE': instance.idGTE,
      'idLT': instance.idLT,
      'idLTE': instance.idLTE,
      'title': instance.title,
      'titleNEQ': instance.titleNEQ,
      'titleIn': instance.titleIn,
      'titleNotIn': instance.titleNotIn,
      'titleGT': instance.titleGT,
      'titleGTE': instance.titleGTE,
      'titleLT': instance.titleLT,
      'titleLTE': instance.titleLTE,
      'titleContains': instance.titleContains,
      'titleHasPrefix': instance.titleHasPrefix,
      'titleHasSuffix': instance.titleHasSuffix,
      'titleEqualFold': instance.titleEqualFold,
      'titleContainsFold': instance.titleContainsFold,
      'hasPosts': instance.hasPosts,
      'hasPostsWith': instance.hasPostsWith?.map((e) => e.toJson()).toList(),
    };

Input$PostOrder _$Input$PostOrderFromJson(Map<String, dynamic> json) =>
    Input$PostOrder(
      direction: $enumDecode(_$Enum$OrderDirectionEnumMap, json['direction'],
          unknownValue: Enum$OrderDirection.$unknown),
      field: $enumDecode(_$Enum$PostOrderFieldEnumMap, json['field'],
          unknownValue: Enum$PostOrderField.$unknown),
    );

Map<String, dynamic> _$Input$PostOrderToJson(Input$PostOrder instance) =>
    <String, dynamic>{
      'direction': _$Enum$OrderDirectionEnumMap[instance.direction]!,
      'field': _$Enum$PostOrderFieldEnumMap[instance.field]!,
    };

const _$Enum$OrderDirectionEnumMap = {
  Enum$OrderDirection.ASC: 'ASC',
  Enum$OrderDirection.DESC: 'DESC',
  Enum$OrderDirection.$unknown: r'$unknown',
};

const _$Enum$PostOrderFieldEnumMap = {
  Enum$PostOrderField.CREATE_TIME: 'CREATE_TIME',
  Enum$PostOrderField.UPDATE_TIME: 'UPDATE_TIME',
  Enum$PostOrderField.$unknown: r'$unknown',
};

Input$PostWhereInput _$Input$PostWhereInputFromJson(
        Map<String, dynamic> json) =>
    Input$PostWhereInput(
      not: json['not'] == null
          ? null
          : Input$PostWhereInput.fromJson(json['not'] as Map<String, dynamic>),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => Input$PostWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => Input$PostWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      idNEQ: json['idNEQ'] as String?,
      idIn: (json['idIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      idNotIn:
          (json['idNotIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      idGT: json['idGT'] as String?,
      idGTE: json['idGTE'] as String?,
      idLT: json['idLT'] as String?,
      idLTE: json['idLTE'] as String?,
      createTime: json['createTime'] as String?,
      createTimeNEQ: json['createTimeNEQ'] as String?,
      createTimeIn: (json['createTimeIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createTimeNotIn: (json['createTimeNotIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createTimeGT: json['createTimeGT'] as String?,
      createTimeGTE: json['createTimeGTE'] as String?,
      createTimeLT: json['createTimeLT'] as String?,
      createTimeLTE: json['createTimeLTE'] as String?,
      updateTime: json['updateTime'] as String?,
      updateTimeNEQ: json['updateTimeNEQ'] as String?,
      updateTimeIn: (json['updateTimeIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updateTimeNotIn: (json['updateTimeNotIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updateTimeGT: json['updateTimeGT'] as String?,
      updateTimeGTE: json['updateTimeGTE'] as String?,
      updateTimeLT: json['updateTimeLT'] as String?,
      updateTimeLTE: json['updateTimeLTE'] as String?,
      title: json['title'] as String?,
      titleNEQ: json['titleNEQ'] as String?,
      titleIn:
          (json['titleIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      titleNotIn: (json['titleNotIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      titleGT: json['titleGT'] as String?,
      titleGTE: json['titleGTE'] as String?,
      titleLT: json['titleLT'] as String?,
      titleLTE: json['titleLTE'] as String?,
      titleContains: json['titleContains'] as String?,
      titleHasPrefix: json['titleHasPrefix'] as String?,
      titleHasSuffix: json['titleHasSuffix'] as String?,
      titleEqualFold: json['titleEqualFold'] as String?,
      titleContainsFold: json['titleContainsFold'] as String?,
      content: json['content'] as String?,
      contentNEQ: json['contentNEQ'] as String?,
      contentIn: (json['contentIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      contentNotIn: (json['contentNotIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      contentGT: json['contentGT'] as String?,
      contentGTE: json['contentGTE'] as String?,
      contentLT: json['contentLT'] as String?,
      contentLTE: json['contentLTE'] as String?,
      contentContains: json['contentContains'] as String?,
      contentHasPrefix: json['contentHasPrefix'] as String?,
      contentHasSuffix: json['contentHasSuffix'] as String?,
      contentEqualFold: json['contentEqualFold'] as String?,
      contentContainsFold: json['contentContainsFold'] as String?,
      type: $enumDecodeNullable(_$Enum$PostPostTypeEnumMap, json['type'],
          unknownValue: Enum$PostPostType.$unknown),
      typeNEQ: $enumDecodeNullable(_$Enum$PostPostTypeEnumMap, json['typeNEQ'],
          unknownValue: Enum$PostPostType.$unknown),
      typeIn: (json['typeIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$Enum$PostPostTypeEnumMap, e,
              unknownValue: Enum$PostPostType.$unknown))
          .toList(),
      typeNotIn: (json['typeNotIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$Enum$PostPostTypeEnumMap, e,
              unknownValue: Enum$PostPostType.$unknown))
          .toList(),
      spoiled: json['spoiled'] as bool?,
      spoiledNEQ: json['spoiledNEQ'] as bool?,
      hasOwner: json['hasOwner'] as bool?,
      hasOwnerWith: (json['hasOwnerWith'] as List<dynamic>?)
          ?.map((e) => Input$UserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasHashtags: json['hasHashtags'] as bool?,
      hasHashtagsWith: (json['hasHashtagsWith'] as List<dynamic>?)
          ?.map((e) =>
              Input$HashtagWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasWork: json['hasWork'] as bool?,
      hasWorkWith: (json['hasWorkWith'] as List<dynamic>?)
          ?.map((e) => Input$WorkWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Input$PostWhereInputToJson(
        Input$PostWhereInput instance) =>
    <String, dynamic>{
      'not': instance.not?.toJson(),
      'and': instance.and?.map((e) => e.toJson()).toList(),
      'or': instance.or?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'idNEQ': instance.idNEQ,
      'idIn': instance.idIn,
      'idNotIn': instance.idNotIn,
      'idGT': instance.idGT,
      'idGTE': instance.idGTE,
      'idLT': instance.idLT,
      'idLTE': instance.idLTE,
      'createTime': instance.createTime,
      'createTimeNEQ': instance.createTimeNEQ,
      'createTimeIn': instance.createTimeIn,
      'createTimeNotIn': instance.createTimeNotIn,
      'createTimeGT': instance.createTimeGT,
      'createTimeGTE': instance.createTimeGTE,
      'createTimeLT': instance.createTimeLT,
      'createTimeLTE': instance.createTimeLTE,
      'updateTime': instance.updateTime,
      'updateTimeNEQ': instance.updateTimeNEQ,
      'updateTimeIn': instance.updateTimeIn,
      'updateTimeNotIn': instance.updateTimeNotIn,
      'updateTimeGT': instance.updateTimeGT,
      'updateTimeGTE': instance.updateTimeGTE,
      'updateTimeLT': instance.updateTimeLT,
      'updateTimeLTE': instance.updateTimeLTE,
      'title': instance.title,
      'titleNEQ': instance.titleNEQ,
      'titleIn': instance.titleIn,
      'titleNotIn': instance.titleNotIn,
      'titleGT': instance.titleGT,
      'titleGTE': instance.titleGTE,
      'titleLT': instance.titleLT,
      'titleLTE': instance.titleLTE,
      'titleContains': instance.titleContains,
      'titleHasPrefix': instance.titleHasPrefix,
      'titleHasSuffix': instance.titleHasSuffix,
      'titleEqualFold': instance.titleEqualFold,
      'titleContainsFold': instance.titleContainsFold,
      'content': instance.content,
      'contentNEQ': instance.contentNEQ,
      'contentIn': instance.contentIn,
      'contentNotIn': instance.contentNotIn,
      'contentGT': instance.contentGT,
      'contentGTE': instance.contentGTE,
      'contentLT': instance.contentLT,
      'contentLTE': instance.contentLTE,
      'contentContains': instance.contentContains,
      'contentHasPrefix': instance.contentHasPrefix,
      'contentHasSuffix': instance.contentHasSuffix,
      'contentEqualFold': instance.contentEqualFold,
      'contentContainsFold': instance.contentContainsFold,
      'type': _$Enum$PostPostTypeEnumMap[instance.type],
      'typeNEQ': _$Enum$PostPostTypeEnumMap[instance.typeNEQ],
      'typeIn':
          instance.typeIn?.map((e) => _$Enum$PostPostTypeEnumMap[e]!).toList(),
      'typeNotIn': instance.typeNotIn
          ?.map((e) => _$Enum$PostPostTypeEnumMap[e]!)
          .toList(),
      'spoiled': instance.spoiled,
      'spoiledNEQ': instance.spoiledNEQ,
      'hasOwner': instance.hasOwner,
      'hasOwnerWith': instance.hasOwnerWith?.map((e) => e.toJson()).toList(),
      'hasHashtags': instance.hasHashtags,
      'hasHashtagsWith':
          instance.hasHashtagsWith?.map((e) => e.toJson()).toList(),
      'hasWork': instance.hasWork,
      'hasWorkWith': instance.hasWorkWith?.map((e) => e.toJson()).toList(),
    };

Input$UpdateHashtagInput _$Input$UpdateHashtagInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateHashtagInput(
      title: json['title'] as String?,
      addPostIDs: (json['addPostIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      removePostIDs: (json['removePostIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$Input$UpdateHashtagInputToJson(
        Input$UpdateHashtagInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'addPostIDs': instance.addPostIDs,
      'removePostIDs': instance.removePostIDs,
    };

Input$UpdatePostInput _$Input$UpdatePostInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdatePostInput(
      updateTime: json['updateTime'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      type: $enumDecodeNullable(_$Enum$PostPostTypeEnumMap, json['type'],
          unknownValue: Enum$PostPostType.$unknown),
      spoiled: json['spoiled'] as bool?,
      clearOwner: json['clearOwner'] as bool?,
      ownerID: json['ownerID'] as String?,
      addHashtagIDs: (json['addHashtagIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      removeHashtagIDs: (json['removeHashtagIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      clearWork: json['clearWork'] as bool?,
      workID: json['workID'] as String?,
    );

Map<String, dynamic> _$Input$UpdatePostInputToJson(
        Input$UpdatePostInput instance) =>
    <String, dynamic>{
      'updateTime': instance.updateTime,
      'title': instance.title,
      'content': instance.content,
      'type': _$Enum$PostPostTypeEnumMap[instance.type],
      'spoiled': instance.spoiled,
      'clearOwner': instance.clearOwner,
      'ownerID': instance.ownerID,
      'addHashtagIDs': instance.addHashtagIDs,
      'removeHashtagIDs': instance.removeHashtagIDs,
      'clearWork': instance.clearWork,
      'workID': instance.workID,
    };

Input$UpdateUserInput _$Input$UpdateUserInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateUserInput(
      name: json['name'] as String?,
      addPostIDs: (json['addPostIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      removePostIDs: (json['removePostIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$Input$UpdateUserInputToJson(
        Input$UpdateUserInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'addPostIDs': instance.addPostIDs,
      'removePostIDs': instance.removePostIDs,
    };

Input$UpdateWorkInput _$Input$UpdateWorkInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateWorkInput(
      title: json['title'] as String?,
      addPostIDs: (json['addPostIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      removePostIDs: (json['removePostIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$Input$UpdateWorkInputToJson(
        Input$UpdateWorkInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'addPostIDs': instance.addPostIDs,
      'removePostIDs': instance.removePostIDs,
    };

Input$UserWhereInput _$Input$UserWhereInputFromJson(
        Map<String, dynamic> json) =>
    Input$UserWhereInput(
      not: json['not'] == null
          ? null
          : Input$UserWhereInput.fromJson(json['not'] as Map<String, dynamic>),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => Input$UserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => Input$UserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      idNEQ: json['idNEQ'] as String?,
      idIn: (json['idIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      idNotIn:
          (json['idNotIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      idGT: json['idGT'] as String?,
      idGTE: json['idGTE'] as String?,
      idLT: json['idLT'] as String?,
      idLTE: json['idLTE'] as String?,
      name: json['name'] as String?,
      nameNEQ: json['nameNEQ'] as String?,
      nameIn:
          (json['nameIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      nameNotIn: (json['nameNotIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nameGT: json['nameGT'] as String?,
      nameGTE: json['nameGTE'] as String?,
      nameLT: json['nameLT'] as String?,
      nameLTE: json['nameLTE'] as String?,
      nameContains: json['nameContains'] as String?,
      nameHasPrefix: json['nameHasPrefix'] as String?,
      nameHasSuffix: json['nameHasSuffix'] as String?,
      nameEqualFold: json['nameEqualFold'] as String?,
      nameContainsFold: json['nameContainsFold'] as String?,
      hasPosts: json['hasPosts'] as bool?,
      hasPostsWith: (json['hasPostsWith'] as List<dynamic>?)
          ?.map((e) => Input$PostWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Input$UserWhereInputToJson(
        Input$UserWhereInput instance) =>
    <String, dynamic>{
      'not': instance.not?.toJson(),
      'and': instance.and?.map((e) => e.toJson()).toList(),
      'or': instance.or?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'idNEQ': instance.idNEQ,
      'idIn': instance.idIn,
      'idNotIn': instance.idNotIn,
      'idGT': instance.idGT,
      'idGTE': instance.idGTE,
      'idLT': instance.idLT,
      'idLTE': instance.idLTE,
      'name': instance.name,
      'nameNEQ': instance.nameNEQ,
      'nameIn': instance.nameIn,
      'nameNotIn': instance.nameNotIn,
      'nameGT': instance.nameGT,
      'nameGTE': instance.nameGTE,
      'nameLT': instance.nameLT,
      'nameLTE': instance.nameLTE,
      'nameContains': instance.nameContains,
      'nameHasPrefix': instance.nameHasPrefix,
      'nameHasSuffix': instance.nameHasSuffix,
      'nameEqualFold': instance.nameEqualFold,
      'nameContainsFold': instance.nameContainsFold,
      'hasPosts': instance.hasPosts,
      'hasPostsWith': instance.hasPostsWith?.map((e) => e.toJson()).toList(),
    };

Input$WorkWhereInput _$Input$WorkWhereInputFromJson(
        Map<String, dynamic> json) =>
    Input$WorkWhereInput(
      not: json['not'] == null
          ? null
          : Input$WorkWhereInput.fromJson(json['not'] as Map<String, dynamic>),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => Input$WorkWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => Input$WorkWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      idNEQ: json['idNEQ'] as String?,
      idIn: (json['idIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      idNotIn:
          (json['idNotIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      idGT: json['idGT'] as String?,
      idGTE: json['idGTE'] as String?,
      idLT: json['idLT'] as String?,
      idLTE: json['idLTE'] as String?,
      title: json['title'] as String?,
      titleNEQ: json['titleNEQ'] as String?,
      titleIn:
          (json['titleIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      titleNotIn: (json['titleNotIn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      titleGT: json['titleGT'] as String?,
      titleGTE: json['titleGTE'] as String?,
      titleLT: json['titleLT'] as String?,
      titleLTE: json['titleLTE'] as String?,
      titleContains: json['titleContains'] as String?,
      titleHasPrefix: json['titleHasPrefix'] as String?,
      titleHasSuffix: json['titleHasSuffix'] as String?,
      titleEqualFold: json['titleEqualFold'] as String?,
      titleContainsFold: json['titleContainsFold'] as String?,
      hasPosts: json['hasPosts'] as bool?,
      hasPostsWith: (json['hasPostsWith'] as List<dynamic>?)
          ?.map((e) => Input$PostWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Input$WorkWhereInputToJson(
        Input$WorkWhereInput instance) =>
    <String, dynamic>{
      'not': instance.not?.toJson(),
      'and': instance.and?.map((e) => e.toJson()).toList(),
      'or': instance.or?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'idNEQ': instance.idNEQ,
      'idIn': instance.idIn,
      'idNotIn': instance.idNotIn,
      'idGT': instance.idGT,
      'idGTE': instance.idGTE,
      'idLT': instance.idLT,
      'idLTE': instance.idLTE,
      'title': instance.title,
      'titleNEQ': instance.titleNEQ,
      'titleIn': instance.titleIn,
      'titleNotIn': instance.titleNotIn,
      'titleGT': instance.titleGT,
      'titleGTE': instance.titleGTE,
      'titleLT': instance.titleLT,
      'titleLTE': instance.titleLTE,
      'titleContains': instance.titleContains,
      'titleHasPrefix': instance.titleHasPrefix,
      'titleHasSuffix': instance.titleHasSuffix,
      'titleEqualFold': instance.titleEqualFold,
      'titleContainsFold': instance.titleContainsFold,
      'hasPosts': instance.hasPosts,
      'hasPostsWith': instance.hasPostsWith?.map((e) => e.toJson()).toList(),
    };
