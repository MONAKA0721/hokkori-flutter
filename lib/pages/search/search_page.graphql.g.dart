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

Variables$Query$CategoryPraises _$Variables$Query$CategoryPraisesFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$CategoryPraises(
      categoryID: json['categoryID'] as String?,
      first: json['first'] as int?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$Variables$Query$CategoryPraisesToJson(
        Variables$Query$CategoryPraises instance) =>
    <String, dynamic>{
      'categoryID': instance.categoryID,
      'first': instance.first,
      'after': instance.after,
    };

Query$CategoryPraises _$Query$CategoryPraisesFromJson(
        Map<String, dynamic> json) =>
    Query$CategoryPraises(
      posts: Query$CategoryPraises$posts.fromJson(
          json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$CategoryPraisesToJson(
        Query$CategoryPraises instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$CategoryPraises$posts _$Query$CategoryPraises$postsFromJson(
        Map<String, dynamic> json) =>
    Query$CategoryPraises$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$CategoryPraises$posts$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      pageInfo: Query$CategoryPraises$posts$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$CategoryPraises$postsToJson(
        Query$CategoryPraises$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
      '__typename': instance.$__typename,
    };

Query$CategoryPraises$posts$edges _$Query$CategoryPraises$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$CategoryPraises$posts$edges(
      node: json['node'] == null
          ? null
          : Fragment$PraiseSummary.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$CategoryPraises$posts$edgesToJson(
        Query$CategoryPraises$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$CategoryPraises$posts$pageInfo
    _$Query$CategoryPraises$posts$pageInfoFromJson(Map<String, dynamic> json) =>
        Query$CategoryPraises$posts$pageInfo(
          endCursor: json['endCursor'] as String?,
          hasNextPage: json['hasNextPage'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$CategoryPraises$posts$pageInfoToJson(
        Query$CategoryPraises$posts$pageInfo instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage,
      '__typename': instance.$__typename,
    };

Variables$Query$HashtagPraises _$Variables$Query$HashtagPraisesFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$HashtagPraises(
      hashtagID: json['hashtagID'] as String?,
      first: json['first'] as int?,
      after: json['after'] as String?,
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$Variables$Query$HashtagPraisesToJson(
        Variables$Query$HashtagPraises instance) =>
    <String, dynamic>{
      'hashtagID': instance.hashtagID,
      'first': instance.first,
      'after': instance.after,
      'searchText': instance.searchText,
    };

Query$HashtagPraises _$Query$HashtagPraisesFromJson(
        Map<String, dynamic> json) =>
    Query$HashtagPraises(
      posts: Query$HashtagPraises$posts.fromJson(
          json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HashtagPraisesToJson(
        Query$HashtagPraises instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$HashtagPraises$posts _$Query$HashtagPraises$postsFromJson(
        Map<String, dynamic> json) =>
    Query$HashtagPraises$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$HashtagPraises$posts$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      pageInfo: Query$HashtagPraises$posts$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HashtagPraises$postsToJson(
        Query$HashtagPraises$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
      '__typename': instance.$__typename,
    };

Query$HashtagPraises$posts$edges _$Query$HashtagPraises$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$HashtagPraises$posts$edges(
      node: json['node'] == null
          ? null
          : Fragment$PraiseSummary.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HashtagPraises$posts$edgesToJson(
        Query$HashtagPraises$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$HashtagPraises$posts$pageInfo
    _$Query$HashtagPraises$posts$pageInfoFromJson(Map<String, dynamic> json) =>
        Query$HashtagPraises$posts$pageInfo(
          endCursor: json['endCursor'] as String?,
          hasNextPage: json['hasNextPage'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$HashtagPraises$posts$pageInfoToJson(
        Query$HashtagPraises$posts$pageInfo instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage,
      '__typename': instance.$__typename,
    };

Variables$Query$CategoryLetters _$Variables$Query$CategoryLettersFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$CategoryLetters(
      categoryID: json['categoryID'] as String?,
      first: json['first'] as int?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$Variables$Query$CategoryLettersToJson(
        Variables$Query$CategoryLetters instance) =>
    <String, dynamic>{
      'categoryID': instance.categoryID,
      'first': instance.first,
      'after': instance.after,
    };

Query$CategoryLetters _$Query$CategoryLettersFromJson(
        Map<String, dynamic> json) =>
    Query$CategoryLetters(
      posts: Query$CategoryLetters$posts.fromJson(
          json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$CategoryLettersToJson(
        Query$CategoryLetters instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$CategoryLetters$posts _$Query$CategoryLetters$postsFromJson(
        Map<String, dynamic> json) =>
    Query$CategoryLetters$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$CategoryLetters$posts$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      pageInfo: Query$CategoryLetters$posts$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$CategoryLetters$postsToJson(
        Query$CategoryLetters$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
      '__typename': instance.$__typename,
    };

Query$CategoryLetters$posts$edges _$Query$CategoryLetters$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$CategoryLetters$posts$edges(
      node: json['node'] == null
          ? null
          : Fragment$LetterSummary.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$CategoryLetters$posts$edgesToJson(
        Query$CategoryLetters$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$CategoryLetters$posts$pageInfo
    _$Query$CategoryLetters$posts$pageInfoFromJson(Map<String, dynamic> json) =>
        Query$CategoryLetters$posts$pageInfo(
          endCursor: json['endCursor'] as String?,
          hasNextPage: json['hasNextPage'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$CategoryLetters$posts$pageInfoToJson(
        Query$CategoryLetters$posts$pageInfo instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage,
      '__typename': instance.$__typename,
    };

Variables$Query$HashtagLetters _$Variables$Query$HashtagLettersFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$HashtagLetters(
      hashtagID: json['hashtagID'] as String?,
      first: json['first'] as int?,
      after: json['after'] as String?,
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$Variables$Query$HashtagLettersToJson(
        Variables$Query$HashtagLetters instance) =>
    <String, dynamic>{
      'hashtagID': instance.hashtagID,
      'first': instance.first,
      'after': instance.after,
      'searchText': instance.searchText,
    };

Query$HashtagLetters _$Query$HashtagLettersFromJson(
        Map<String, dynamic> json) =>
    Query$HashtagLetters(
      posts: Query$HashtagLetters$posts.fromJson(
          json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HashtagLettersToJson(
        Query$HashtagLetters instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$HashtagLetters$posts _$Query$HashtagLetters$postsFromJson(
        Map<String, dynamic> json) =>
    Query$HashtagLetters$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$HashtagLetters$posts$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      pageInfo: Query$HashtagLetters$posts$pageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HashtagLetters$postsToJson(
        Query$HashtagLetters$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
      '__typename': instance.$__typename,
    };

Query$HashtagLetters$posts$edges _$Query$HashtagLetters$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$HashtagLetters$posts$edges(
      node: json['node'] == null
          ? null
          : Fragment$LetterSummary.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HashtagLetters$posts$edgesToJson(
        Query$HashtagLetters$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$HashtagLetters$posts$pageInfo
    _$Query$HashtagLetters$posts$pageInfoFromJson(Map<String, dynamic> json) =>
        Query$HashtagLetters$posts$pageInfo(
          endCursor: json['endCursor'] as String?,
          hasNextPage: json['hasNextPage'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$HashtagLetters$posts$pageInfoToJson(
        Query$HashtagLetters$posts$pageInfo instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage,
      '__typename': instance.$__typename,
    };
