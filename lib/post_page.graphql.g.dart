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
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchWorks$works$edges$nodeToJson(
        Query$SearchWorks$works$edges$node instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      '__typename': instance.$__typename,
    };
