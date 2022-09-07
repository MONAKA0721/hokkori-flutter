// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$Posts _$Query$PostsFromJson(Map<String, dynamic> json) => Query$Posts(
      posts: Query$Posts$posts.fromJson(json['posts'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$PostsToJson(Query$Posts instance) =>
    <String, dynamic>{
      'posts': instance.posts.toJson(),
      '__typename': instance.$__typename,
    };

Query$Posts$posts _$Query$Posts$postsFromJson(Map<String, dynamic> json) =>
    Query$Posts$posts(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Posts$posts$edges.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Posts$postsToJson(Query$Posts$posts instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$Posts$posts$edges _$Query$Posts$posts$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$Posts$posts$edges(
      node: json['node'] == null
          ? null
          : Query$Posts$posts$edges$node.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Posts$posts$edgesToJson(
        Query$Posts$posts$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$Posts$posts$edges$node _$Query$Posts$posts$edges$nodeFromJson(
        Map<String, dynamic> json) =>
    Query$Posts$posts$edges$node(
      title: json['title'] as String,
      id: json['id'] as String,
      content: json['content'] as String,
      owner: Query$Posts$posts$edges$node$owner.fromJson(
          json['owner'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Posts$posts$edges$nodeToJson(
        Query$Posts$posts$edges$node instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'content': instance.content,
      'owner': instance.owner.toJson(),
      '__typename': instance.$__typename,
    };

Query$Posts$posts$edges$node$owner _$Query$Posts$posts$edges$node$ownerFromJson(
        Map<String, dynamic> json) =>
    Query$Posts$posts$edges$node$owner(
      id: json['id'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$Posts$posts$edges$node$ownerToJson(
        Query$Posts$posts$edges$node$owner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };
