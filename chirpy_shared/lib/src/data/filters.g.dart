// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostFilterCreatedAfterImpl _$$PostFilterCreatedAfterImplFromJson(
        Map<String, dynamic> json) =>
    _$PostFilterCreatedAfterImpl(
      DateTime.parse(json['value'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostFilterCreatedAfterImplToJson(
        _$PostFilterCreatedAfterImpl instance) =>
    <String, dynamic>{
      'value': instance.value.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$PostFilterCreatedBeforeImpl _$$PostFilterCreatedBeforeImplFromJson(
        Map<String, dynamic> json) =>
    _$PostFilterCreatedBeforeImpl(
      DateTime.parse(json['value'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostFilterCreatedBeforeImplToJson(
        _$PostFilterCreatedBeforeImpl instance) =>
    <String, dynamic>{
      'value': instance.value.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$PostFilterBodyContainsImpl _$$PostFilterBodyContainsImplFromJson(
        Map<String, dynamic> json) =>
    _$PostFilterBodyContainsImpl(
      json['value'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostFilterBodyContainsImplToJson(
        _$PostFilterBodyContainsImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };
