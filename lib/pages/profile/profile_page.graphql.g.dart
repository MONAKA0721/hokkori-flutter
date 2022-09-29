// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_page.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$MyInfo _$Variables$Query$MyInfoFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$MyInfo(
      userID: json['userID'] as String?,
    );

Map<String, dynamic> _$Variables$Query$MyInfoToJson(
        Variables$Query$MyInfo instance) =>
    <String, dynamic>{
      'userID': instance.userID,
    };

Query$MyInfo _$Query$MyInfoFromJson(Map<String, dynamic> json) => Query$MyInfo(
      posts: Query$MyInfo$posts.fromJson(json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$MyInfoToJson(Query$MyInfo instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$MyInfo$posts _$Query$MyInfo$postsFromJson(Map<String, dynamic> json) =>
    Query$MyInfo$posts(
      totalCount: json['totalCount'] as int,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$MyInfo$postsToJson(Query$MyInfo$posts instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      '__typename': instance.$__typename,
    };

Variables$Mutation$UpdateUser _$Variables$Mutation$UpdateUserFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$UpdateUser(
      userID: json['userID'] as String,
      input:
          Input$UpdateUserInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Mutation$UpdateUserToJson(
        Variables$Mutation$UpdateUser instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'input': instance.input.toJson(),
    };

Mutation$UpdateUser _$Mutation$UpdateUserFromJson(Map<String, dynamic> json) =>
    Mutation$UpdateUser(
      updateUser: Mutation$UpdateUser$updateUser.fromJson(
          json['updateUser'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$UpdateUserToJson(
        Mutation$UpdateUser instance) =>
    <String, dynamic>{
      'updateUser': instance.updateUser.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$UpdateUser$updateUser _$Mutation$UpdateUser$updateUserFromJson(
        Map<String, dynamic> json) =>
    Mutation$UpdateUser$updateUser(
      id: json['id'] as String,
      name: json['name'] as String,
      username: json['username'] as String?,
      profile: json['profile'] as String?,
      avatarURL: json['avatarURL'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$UpdateUser$updateUserToJson(
        Mutation$UpdateUser$updateUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'profile': instance.profile,
      'avatarURL': instance.avatarURL,
      '__typename': instance.$__typename,
    };
