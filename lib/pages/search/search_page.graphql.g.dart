// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_page.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$TopPraises _$Variables$Query$TopPraisesFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$TopPraises(
      first: json['first'] as int,
    );

Map<String, dynamic> _$Variables$Query$TopPraisesToJson(
        Variables$Query$TopPraises instance) =>
    <String, dynamic>{
      'first': instance.first,
    };

Query$TopPraises _$Query$TopPraisesFromJson(Map<String, dynamic> json) =>
    Query$TopPraises(
      topPraises: (json['topPraises'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$TopPraises$topPraises.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopPraisesToJson(Query$TopPraises instance) =>
    <String, dynamic>{
      'topPraises': instance.topPraises.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$TopPraises$topPraises _$Query$TopPraises$topPraisesFromJson(
        Map<String, dynamic> json) =>
    Query$TopPraises$topPraises(
      id: json['id'] as String,
      title: json['title'] as String,
      count: json['count'] as int,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopPraises$topPraisesToJson(
        Query$TopPraises$topPraises instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'count': instance.count,
      '__typename': instance.$__typename,
    };

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

Variables$Query$SearchCategories _$Variables$Query$SearchCategoriesFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$SearchCategories(
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$Variables$Query$SearchCategoriesToJson(
        Variables$Query$SearchCategories instance) =>
    <String, dynamic>{
      'searchText': instance.searchText,
    };

Query$SearchCategories _$Query$SearchCategoriesFromJson(
        Map<String, dynamic> json) =>
    Query$SearchCategories(
      categories: Query$SearchCategories$categories.fromJson(
          json['categories'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchCategoriesToJson(
        Query$SearchCategories instance) =>
    <String, dynamic>{
      'categories': instance.categories.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchCategories$categories _$Query$SearchCategories$categoriesFromJson(
        Map<String, dynamic> json) =>
    Query$SearchCategories$categories(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchCategories$categories$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchCategories$categoriesToJson(
        Query$SearchCategories$categories instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$SearchCategories$categories$edges
    _$Query$SearchCategories$categories$edgesFromJson(
            Map<String, dynamic> json) =>
        Query$SearchCategories$categories$edges(
          node: json['node'] == null
              ? null
              : Query$SearchCategories$categories$edges$node.fromJson(
                  json['node'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchCategories$categories$edgesToJson(
        Query$SearchCategories$categories$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchCategories$categories$edges$node
    _$Query$SearchCategories$categories$edges$nodeFromJson(
            Map<String, dynamic> json) =>
        Query$SearchCategories$categories$edges$node(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchCategories$categories$edges$nodeToJson(
        Query$SearchCategories$categories$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
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
