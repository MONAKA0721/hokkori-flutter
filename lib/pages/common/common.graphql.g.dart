// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$LetterSummary _$Fragment$LetterSummaryFromJson(
        Map<String, dynamic> json) =>
    Fragment$LetterSummary(
      title: json['title'] as String,
      id: json['id'] as String,
      content: json['content'] as String,
      createTime: json['createTime'] as String,
      owner: Fragment$LetterSummary$owner.fromJson(
          json['owner'] as Map<String, dynamic>),
      category: Fragment$LetterSummary$category.fromJson(
          json['category'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$LetterSummaryToJson(
        Fragment$LetterSummary instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'content': instance.content,
      'createTime': instance.createTime,
      'owner': instance.owner.toJson(),
      'category': instance.category.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$LetterSummary$owner _$Fragment$LetterSummary$ownerFromJson(
        Map<String, dynamic> json) =>
    Fragment$LetterSummary$owner(
      id: json['id'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$LetterSummary$ownerToJson(
        Fragment$LetterSummary$owner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$LetterSummary$category _$Fragment$LetterSummary$categoryFromJson(
        Map<String, dynamic> json) =>
    Fragment$LetterSummary$category(
      id: json['id'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$LetterSummary$categoryToJson(
        Fragment$LetterSummary$category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$PraiseSummary _$Fragment$PraiseSummaryFromJson(
        Map<String, dynamic> json) =>
    Fragment$PraiseSummary(
      title: json['title'] as String,
      id: json['id'] as String,
      content: json['content'] as String,
      hashtags: (json['hashtags'] as List<dynamic>?)
          ?.map((e) => Fragment$PraiseSummary$hashtags.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      owner: Fragment$PraiseSummary$owner.fromJson(
          json['owner'] as Map<String, dynamic>),
      category: Fragment$PraiseSummary$category.fromJson(
          json['category'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$PraiseSummaryToJson(
        Fragment$PraiseSummary instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'content': instance.content,
      'hashtags': instance.hashtags?.map((e) => e.toJson()).toList(),
      'owner': instance.owner.toJson(),
      'category': instance.category.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$PraiseSummary$hashtags _$Fragment$PraiseSummary$hashtagsFromJson(
        Map<String, dynamic> json) =>
    Fragment$PraiseSummary$hashtags(
      id: json['id'] as String,
      title: json['title'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$PraiseSummary$hashtagsToJson(
        Fragment$PraiseSummary$hashtags instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      '__typename': instance.$__typename,
    };

Fragment$PraiseSummary$owner _$Fragment$PraiseSummary$ownerFromJson(
        Map<String, dynamic> json) =>
    Fragment$PraiseSummary$owner(
      id: json['id'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$PraiseSummary$ownerToJson(
        Fragment$PraiseSummary$owner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$PraiseSummary$category _$Fragment$PraiseSummary$categoryFromJson(
        Map<String, dynamic> json) =>
    Fragment$PraiseSummary$category(
      id: json['id'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$PraiseSummary$categoryToJson(
        Fragment$PraiseSummary$category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Query$Letters _$Variables$Query$LettersFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$Letters(
      first: json['first'] as int?,
      after: json['after'] as String?,
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => Input$PostWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasCategoryWith: (json['hasCategoryWith'] as List<dynamic>?)
          ?.map((e) =>
              Input$CategoryWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Variables$Query$LettersToJson(
        Variables$Query$Letters instance) =>
    <String, dynamic>{
      'first': instance.first,
      'after': instance.after,
      'or': instance.or?.map((e) => e.toJson()).toList(),
      'hasCategoryWith':
          instance.hasCategoryWith?.map((e) => e.toJson()).toList(),
    };

Query$Letters _$Query$LettersFromJson(Map<String, dynamic> json) =>
    Query$Letters(
      posts:
          Query$Letters$posts.fromJson(json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$LettersToJson(Query$Letters instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$Letters$posts _$Query$Letters$postsFromJson(Map<String, dynamic> json) =>
    Query$Letters$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Letters$posts$edges.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: Query$Letters$posts$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Letters$postsToJson(
        Query$Letters$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
      '__typename': instance.$__typename,
    };

Query$Letters$posts$edges _$Query$Letters$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$Letters$posts$edges(
      node: json['node'] == null
          ? null
          : Fragment$LetterSummary.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Letters$posts$edgesToJson(
        Query$Letters$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$Letters$posts$pageInfo _$Query$Letters$posts$pageInfoFromJson(
        Map<String, dynamic> json) =>
    Query$Letters$posts$pageInfo(
      endCursor: json['endCursor'] as String?,
      hasNextPage: json['hasNextPage'] as bool,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Letters$posts$pageInfoToJson(
        Query$Letters$posts$pageInfo instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage,
      '__typename': instance.$__typename,
    };
