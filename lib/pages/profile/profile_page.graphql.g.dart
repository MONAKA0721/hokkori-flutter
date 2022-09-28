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
