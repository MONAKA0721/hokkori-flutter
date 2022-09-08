// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_page.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$SearchWorks _$Variables$Query$SearchWorksFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$SearchWorks(
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$Variables$Query$SearchWorksToJson(
        Variables$Query$SearchWorks instance) =>
    <String, dynamic>{
      'searchText': instance.searchText,
    };

Query$SearchWorks _$Query$SearchWorksFromJson(Map<String, dynamic> json) =>
    Query$SearchWorks(
      works: Query$SearchWorks$works.fromJson(
          json['works'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchWorksToJson(Query$SearchWorks instance) =>
    <String, dynamic>{
      'works': instance.works.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchWorks$works _$Query$SearchWorks$worksFromJson(
        Map<String, dynamic> json) =>
    Query$SearchWorks$works(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchWorks$works$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchWorks$worksToJson(
        Query$SearchWorks$works instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$SearchWorks$works$edges _$Query$SearchWorks$works$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$SearchWorks$works$edges(
      node: json['node'] == null
          ? null
          : Query$SearchWorks$works$edges$node.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchWorks$works$edgesToJson(
        Query$SearchWorks$works$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchWorks$works$edges$node _$Query$SearchWorks$works$edges$nodeFromJson(
        Map<String, dynamic> json) =>
    Query$SearchWorks$works$edges$node(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchWorks$works$edges$nodeToJson(
        Query$SearchWorks$works$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      '__typename': instance.$__typename,
    };

Variables$Query$SearchHashtags _$Variables$Query$SearchHashtagsFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$SearchHashtags(
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$Variables$Query$SearchHashtagsToJson(
        Variables$Query$SearchHashtags instance) =>
    <String, dynamic>{
      'searchText': instance.searchText,
    };

Query$SearchHashtags _$Query$SearchHashtagsFromJson(
        Map<String, dynamic> json) =>
    Query$SearchHashtags(
      hashtags: Query$SearchHashtags$hashtags.fromJson(
          json['hashtags'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchHashtagsToJson(
        Query$SearchHashtags instance) =>
    <String, dynamic>{
      'hashtags': instance.hashtags.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchHashtags$hashtags _$Query$SearchHashtags$hashtagsFromJson(
        Map<String, dynamic> json) =>
    Query$SearchHashtags$hashtags(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchHashtags$hashtags$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchHashtags$hashtagsToJson(
        Query$SearchHashtags$hashtags instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$SearchHashtags$hashtags$edges
    _$Query$SearchHashtags$hashtags$edgesFromJson(Map<String, dynamic> json) =>
        Query$SearchHashtags$hashtags$edges(
          node: json['node'] == null
              ? null
              : Query$SearchHashtags$hashtags$edges$node.fromJson(
                  json['node'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchHashtags$hashtags$edgesToJson(
        Query$SearchHashtags$hashtags$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchHashtags$hashtags$edges$node
    _$Query$SearchHashtags$hashtags$edges$nodeFromJson(
            Map<String, dynamic> json) =>
        Query$SearchHashtags$hashtags$edges$node(
          id: json['id'] as String,
          title: json['title'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchHashtags$hashtags$edges$nodeToJson(
        Query$SearchHashtags$hashtags$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      '__typename': instance.$__typename,
    };

Variables$Mutation$CreatePost _$Variables$Mutation$CreatePostFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$CreatePost(
      createPostInput: Input$CreatePostInput.fromJson(
          json['createPostInput'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Mutation$CreatePostToJson(
        Variables$Mutation$CreatePost instance) =>
    <String, dynamic>{
      'createPostInput': instance.createPostInput.toJson(),
    };

Mutation$CreatePost _$Mutation$CreatePostFromJson(Map<String, dynamic> json) =>
    Mutation$CreatePost(
      createPost: Mutation$CreatePost$createPost.fromJson(
          json['createPost'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$CreatePostToJson(
        Mutation$CreatePost instance) =>
    <String, dynamic>{
      'createPost': instance.createPost.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$CreatePost$createPost _$Mutation$CreatePost$createPostFromJson(
        Map<String, dynamic> json) =>
    Mutation$CreatePost$createPost(
      id: json['id'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$CreatePost$createPostToJson(
        Mutation$CreatePost$createPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      '__typename': instance.$__typename,
    };

Variables$Mutation$CreatePosts _$Variables$Mutation$CreatePostsFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$CreatePosts(
      createPostInput: Input$CreatePostInput.fromJson(
          json['createPostInput'] as Map<String, dynamic>),
      createPostInput2: Input$CreatePostInput.fromJson(
          json['createPostInput2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Mutation$CreatePostsToJson(
        Variables$Mutation$CreatePosts instance) =>
    <String, dynamic>{
      'createPostInput': instance.createPostInput.toJson(),
      'createPostInput2': instance.createPostInput2.toJson(),
    };

Mutation$CreatePosts _$Mutation$CreatePostsFromJson(
        Map<String, dynamic> json) =>
    Mutation$CreatePosts(
      createPosts: Mutation$CreatePosts$createPosts.fromJson(
          json['createPosts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$CreatePostsToJson(
        Mutation$CreatePosts instance) =>
    <String, dynamic>{
      'createPosts': instance.createPosts.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$CreatePosts$createPosts _$Mutation$CreatePosts$createPostsFromJson(
        Map<String, dynamic> json) =>
    Mutation$CreatePosts$createPosts(
      id: json['id'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$CreatePosts$createPostsToJson(
        Mutation$CreatePosts$createPosts instance) =>
    <String, dynamic>{
      'id': instance.id,
      '__typename': instance.$__typename,
    };
