// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$TopPraises _$Variables$Query$TopPraisesFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$TopPraises(
      first: json['first'] as int?,
    );

Map<String, dynamic> _$Variables$Query$TopPraisesToJson(
        Variables$Query$TopPraises instance) =>
    <String, dynamic>{
      'first': instance.first,
    };

Query$TopPraises _$Query$TopPraisesFromJson(Map<String, dynamic> json) =>
    Query$TopPraises(
      posts: Query$TopPraises$posts.fromJson(
          json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopPraisesToJson(Query$TopPraises instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$TopPraises$posts _$Query$TopPraises$postsFromJson(
        Map<String, dynamic> json) =>
    Query$TopPraises$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$TopPraises$posts$edges.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopPraises$postsToJson(
        Query$TopPraises$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$TopPraises$posts$edges _$Query$TopPraises$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$TopPraises$posts$edges(
      node: json['node'] == null
          ? null
          : Query$TopPraises$posts$edges$node.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopPraises$posts$edgesToJson(
        Query$TopPraises$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$TopPraises$posts$edges$node _$Query$TopPraises$posts$edges$nodeFromJson(
        Map<String, dynamic> json) =>
    Query$TopPraises$posts$edges$node(
      title: json['title'] as String,
      id: json['id'] as String,
      content: json['content'] as String,
      hashtags: (json['hashtags'] as List<dynamic>?)
          ?.map((e) => Query$TopPraises$posts$edges$node$hashtags.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      owner: Query$TopPraises$posts$edges$node$owner.fromJson(
          json['owner'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopPraises$posts$edges$nodeToJson(
        Query$TopPraises$posts$edges$node instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'content': instance.content,
      'hashtags': instance.hashtags?.map((e) => e.toJson()).toList(),
      'owner': instance.owner.toJson(),
      '__typename': instance.$__typename,
    };

Query$TopPraises$posts$edges$node$hashtags
    _$Query$TopPraises$posts$edges$node$hashtagsFromJson(
            Map<String, dynamic> json) =>
        Query$TopPraises$posts$edges$node$hashtags(
          id: json['id'] as String,
          title: json['title'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$TopPraises$posts$edges$node$hashtagsToJson(
        Query$TopPraises$posts$edges$node$hashtags instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      '__typename': instance.$__typename,
    };

Query$TopPraises$posts$edges$node$owner
    _$Query$TopPraises$posts$edges$node$ownerFromJson(
            Map<String, dynamic> json) =>
        Query$TopPraises$posts$edges$node$owner(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$TopPraises$posts$edges$node$ownerToJson(
        Query$TopPraises$posts$edges$node$owner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
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
          : Query$TopLetters$posts$edges$node.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopLetters$posts$edgesToJson(
        Query$TopLetters$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$TopLetters$posts$edges$node _$Query$TopLetters$posts$edges$nodeFromJson(
        Map<String, dynamic> json) =>
    Query$TopLetters$posts$edges$node(
      title: json['title'] as String,
      id: json['id'] as String,
      content: json['content'] as String,
      owner: Query$TopLetters$posts$edges$node$owner.fromJson(
          json['owner'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$TopLetters$posts$edges$nodeToJson(
        Query$TopLetters$posts$edges$node instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'content': instance.content,
      'owner': instance.owner.toJson(),
      '__typename': instance.$__typename,
    };

Query$TopLetters$posts$edges$node$owner
    _$Query$TopLetters$posts$edges$node$ownerFromJson(
            Map<String, dynamic> json) =>
        Query$TopLetters$posts$edges$node$owner(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$TopLetters$posts$edges$node$ownerToJson(
        Query$TopLetters$posts$edges$node$owner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };
