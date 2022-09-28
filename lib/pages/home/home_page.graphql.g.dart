// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$HomeWorks _$Variables$Query$HomeWorksFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$HomeWorks(
      first: json['first'] as int?,
    );

Map<String, dynamic> _$Variables$Query$HomeWorksToJson(
        Variables$Query$HomeWorks instance) =>
    <String, dynamic>{
      'first': instance.first,
    };

Query$HomeWorks _$Query$HomeWorksFromJson(Map<String, dynamic> json) =>
    Query$HomeWorks(
      works:
          Query$HomeWorks$works.fromJson(json['works'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomeWorksToJson(Query$HomeWorks instance) =>
    <String, dynamic>{
      'works': instance.works.toJson(),
      '__typename': instance.$__typename,
    };

Query$HomeWorks$works _$Query$HomeWorks$worksFromJson(
        Map<String, dynamic> json) =>
    Query$HomeWorks$works(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$HomeWorks$works$edges.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomeWorks$worksToJson(
        Query$HomeWorks$works instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$HomeWorks$works$edges _$Query$HomeWorks$works$edgesFromJson(
        Map<String, dynamic> json) =>
    Query$HomeWorks$works$edges(
      node: json['node'] == null
          ? null
          : Query$HomeWorks$works$edges$node.fromJson(
              json['node'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomeWorks$works$edgesToJson(
        Query$HomeWorks$works$edges instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
      '__typename': instance.$__typename,
    };

Query$HomeWorks$works$edges$node _$Query$HomeWorks$works$edges$nodeFromJson(
        Map<String, dynamic> json) =>
    Query$HomeWorks$works$edges$node(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomeWorks$works$edges$nodeToJson(
        Query$HomeWorks$works$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      '__typename': instance.$__typename,
    };
