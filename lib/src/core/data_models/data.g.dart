// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      target: json['target'] == null
          ? null
          : Target.fromJson(json['target'] as Map<String, dynamic>),
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'target': instance.target,
      'uri': instance.uri,
    };
