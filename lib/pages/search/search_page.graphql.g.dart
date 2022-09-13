// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_page.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$TopLetters _$Variables$Query$TopLettersFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$TopLetters(
      first: json['first'] as int?,
    );

Map<String, dynamic> _$Variables$Query$TopLettersToJson(
        Variables$Query$TopLetters instance) =>
    <String, dynamic>{
      'first': instance.first,
    };

Query$TopLetters _$Query$TopLettersFromJson(Map<String, dynamic> json) =>
    Query$TopLetters(
      posts: Query$TopLetters$posts.fromJson(
          json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopLettersToJson(Query$TopLetters instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$TopLetters$posts _$Query$TopLetters$postsFromJson(
        Map<String, dynamic> json) =>
    Query$TopLetters$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$TopLetters$posts$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopLetters$postsToJson(
        Query$TopLetters$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$TopLetters$posts$edges _$Query$TopLetters$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$TopLetters$posts$edges(
      node: json['node'] == null
          ? null
          : Fragment$LetterSummary.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopLetters$posts$edgesToJson(
        Query$TopLetters$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };
