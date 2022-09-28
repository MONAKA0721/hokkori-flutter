// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_page.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$LikedPraises _$Variables$Query$LikedPraisesFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$LikedPraises(
      first: json['first'] as int,
    );

Map<String, dynamic> _$Variables$Query$LikedPraisesToJson(
        Variables$Query$LikedPraises instance) =>
    <String, dynamic>{
      'first': instance.first,
    };

Query$LikedPraises _$Query$LikedPraisesFromJson(Map<String, dynamic> json) =>
    Query$LikedPraises(
      likedPosts: (json['likedPosts'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$LikedPraises$likedPosts.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$LikedPraisesToJson(Query$LikedPraises instance) =>
    <String, dynamic>{
      'likedPosts': instance.likedPosts.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$LikedPraises$likedPosts _$Query$LikedPraises$likedPostsFromJson(
        Map<String, dynamic> json) =>
    Query$LikedPraises$likedPosts(
      id: json['id'] as String,
      title: json['title'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$LikedPraises$likedPostsToJson(
        Query$LikedPraises$likedPosts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      '__typename': instance.$__typename,
    };

Variables$Query$LikedLetters _$Variables$Query$LikedLettersFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$LikedLetters(
      first: json['first'] as int,
    );

Map<String, dynamic> _$Variables$Query$LikedLettersToJson(
        Variables$Query$LikedLetters instance) =>
    <String, dynamic>{
      'first': instance.first,
    };

Query$LikedLetters _$Query$LikedLettersFromJson(Map<String, dynamic> json) =>
    Query$LikedLetters(
      likedPosts: (json['likedPosts'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : Fragment$LetterSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$LikedLettersToJson(Query$LikedLetters instance) =>
    <String, dynamic>{
      'likedPosts': instance.likedPosts.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Variables$Query$SearchCandidates _$Variables$Query$SearchCandidatesFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$SearchCandidates(
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$Variables$Query$SearchCandidatesToJson(
        Variables$Query$SearchCandidates instance) =>
    <String, dynamic>{
      'searchText': instance.searchText,
    };

Query$SearchCandidates _$Query$SearchCandidatesFromJson(
        Map<String, dynamic> json) =>
    Query$SearchCandidates(
      categories: Query$SearchCandidates$categories.fromJson(
          json['categories'] as Map<String, dynamic>),
      hashtags: Query$SearchCandidates$hashtags.fromJson(
          json['hashtags'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchCandidatesToJson(
        Query$SearchCandidates instance) =>
    <String, dynamic>{
      'categories': instance.categories.toJson(),
      'hashtags': instance.hashtags.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchCandidates$categories _$Query$SearchCandidates$categoriesFromJson(
        Map<String, dynamic> json) =>
    Query$SearchCandidates$categories(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchCandidates$categories$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchCandidates$categoriesToJson(
        Query$SearchCandidates$categories instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$SearchCandidates$categories$edges
    _$Query$SearchCandidates$categories$edgesFromJson(
            Map<String, dynamic> json) =>
        Query$SearchCandidates$categories$edges(
          node: json['node'] == null
              ? null
              : Query$SearchCandidates$categories$edges$node.fromJson(
                  json['node'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchCandidates$categories$edgesToJson(
        Query$SearchCandidates$categories$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchCandidates$categories$edges$node
    _$Query$SearchCandidates$categories$edges$nodeFromJson(
            Map<String, dynamic> json) =>
        Query$SearchCandidates$categories$edges$node(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchCandidates$categories$edges$nodeToJson(
        Query$SearchCandidates$categories$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$SearchCandidates$hashtags _$Query$SearchCandidates$hashtagsFromJson(
        Map<String, dynamic> json) =>
    Query$SearchCandidates$hashtags(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchCandidates$hashtags$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchCandidates$hashtagsToJson(
        Query$SearchCandidates$hashtags instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$SearchCandidates$hashtags$edges
    _$Query$SearchCandidates$hashtags$edgesFromJson(
            Map<String, dynamic> json) =>
        Query$SearchCandidates$hashtags$edges(
          node: json['node'] == null
              ? null
              : Query$SearchCandidates$hashtags$edges$node.fromJson(
                  json['node'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchCandidates$hashtags$edgesToJson(
        Query$SearchCandidates$hashtags$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchCandidates$hashtags$edges$node
    _$Query$SearchCandidates$hashtags$edges$nodeFromJson(
            Map<String, dynamic> json) =>
        Query$SearchCandidates$hashtags$edges$node(
          id: json['id'] as String,
          title: json['title'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchCandidates$hashtags$edges$nodeToJson(
        Query$SearchCandidates$hashtags$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      '__typename': instance.$__typename,
    };
