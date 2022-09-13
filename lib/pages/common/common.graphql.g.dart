// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$LetterSummary _$Fragment$LetterSummaryFromJson(
        Map<String, dynamic> json) =>
    Fragment$LetterSummary(
      title: json['title'] as String,
      id: json['id'] as String,
      content: json['content'] as String,
      owner: Fragment$LetterSummary$owner.fromJson(
          json['owner'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$LetterSummaryToJson(
        Fragment$LetterSummary instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'content': instance.content,
      'owner': instance.owner.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$LetterSummary$owner _$Fragment$LetterSummary$ownerFromJson(
        Map<String, dynamic> json) =>
    Fragment$LetterSummary$owner(
      id: json['id'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$LetterSummary$ownerToJson(
        Fragment$LetterSummary$owner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };
