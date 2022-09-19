// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$HomePraises _$Variables$Query$HomePraisesFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$HomePraises(
      first: json['first'] as int?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$Variables$Query$HomePraisesToJson(
        Variables$Query$HomePraises instance) =>
    <String, dynamic>{
      'first': instance.first,
      'after': instance.after,
    };

Query$HomePraises _$Query$HomePraisesFromJson(Map<String, dynamic> json) =>
    Query$HomePraises(
      posts: Query$HomePraises$posts.fromJson(
          json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomePraisesToJson(Query$HomePraises instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$HomePraises$posts _$Query$HomePraises$postsFromJson(
        Map<String, dynamic> json) =>
    Query$HomePraises$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$HomePraises$posts$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      pageInfo: Query$HomePraises$posts$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomePraises$postsToJson(
        Query$HomePraises$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
      '__typename': instance.$__typename,
    };

Query$HomePraises$posts$edges _$Query$HomePraises$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$HomePraises$posts$edges(
      node: json['node'] == null
          ? null
          : Fragment$PraiseSummary.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomePraises$posts$edgesToJson(
        Query$HomePraises$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$HomePraises$posts$pageInfo _$Query$HomePraises$posts$pageInfoFromJson(
        Map<String, dynamic> json) =>
    Query$HomePraises$posts$pageInfo(
      endCursor: json['endCursor'] as String?,
      hasNextPage: json['hasNextPage'] as bool,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomePraises$posts$pageInfoToJson(
        Query$HomePraises$posts$pageInfo instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage,
      '__typename': instance.$__typename,
    };

Variables$Query$TopWorks _$Variables$Query$TopWorksFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$TopWorks(
      first: json['first'] as int?,
    );

Map<String, dynamic> _$Variables$Query$TopWorksToJson(
        Variables$Query$TopWorks instance) =>
    <String, dynamic>{
      'first': instance.first,
    };

Query$TopWorks _$Query$TopWorksFromJson(Map<String, dynamic> json) =>
    Query$TopWorks(
      works:
          Query$TopWorks$works.fromJson(json['works'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopWorksToJson(Query$TopWorks instance) =>
    <String, dynamic>{
      'works': instance.works.toJson(),
      '__typename': instance.$__typename,
    };

Query$TopWorks$works _$Query$TopWorks$worksFromJson(
        Map<String, dynamic> json) =>
    Query$TopWorks$works(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$TopWorks$works$edges.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopWorks$worksToJson(
        Query$TopWorks$works instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$TopWorks$works$edges _$Query$TopWorks$works$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$TopWorks$works$edges(
      node: json['node'] == null
          ? null
          : Query$TopWorks$works$edges$node.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopWorks$works$edgesToJson(
        Query$TopWorks$works$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$TopWorks$works$edges$node _$Query$TopWorks$works$edges$nodeFromJson(
        Map<String, dynamic> json) =>
    Query$TopWorks$works$edges$node(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopWorks$works$edges$nodeToJson(
        Query$TopWorks$works$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      '__typename': instance.$__typename,
    };

Variables$Query$HomeLetters _$Variables$Query$HomeLettersFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$HomeLetters(
      first: json['first'] as int?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$Variables$Query$HomeLettersToJson(
        Variables$Query$HomeLetters instance) =>
    <String, dynamic>{
      'first': instance.first,
      'after': instance.after,
    };

Query$HomeLetters _$Query$HomeLettersFromJson(Map<String, dynamic> json) =>
    Query$HomeLetters(
      posts: Query$HomeLetters$posts.fromJson(
          json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomeLettersToJson(Query$HomeLetters instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$HomeLetters$posts _$Query$HomeLetters$postsFromJson(
        Map<String, dynamic> json) =>
    Query$HomeLetters$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$HomeLetters$posts$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      pageInfo: Query$HomeLetters$posts$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomeLetters$postsToJson(
        Query$HomeLetters$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
      '__typename': instance.$__typename,
    };

Query$HomeLetters$posts$edges _$Query$HomeLetters$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$HomeLetters$posts$edges(
      node: json['node'] == null
          ? null
          : Fragment$LetterSummary.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomeLetters$posts$edgesToJson(
        Query$HomeLetters$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$HomeLetters$posts$pageInfo _$Query$HomeLetters$posts$pageInfoFromJson(
        Map<String, dynamic> json) =>
    Query$HomeLetters$posts$pageInfo(
      endCursor: json['endCursor'] as String?,
      hasNextPage: json['hasNextPage'] as bool,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomeLetters$posts$pageInfoToJson(
        Query$HomeLetters$posts$pageInfo instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage,
      '__typename': instance.$__typename,
    };
