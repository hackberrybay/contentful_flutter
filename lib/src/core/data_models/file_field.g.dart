// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileFieldImpl _$$FileFieldImplFromJson(Map<String, dynamic> json) =>
    _$FileFieldImpl(
      url: json['url'] as String?,
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
      fileName: json['fileName'] as String?,
      contentType: json['contentType'] as String?,
    );

Map<String, dynamic> _$$FileFieldImplToJson(_$FileFieldImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'details': instance.details,
      'fileName': instance.fileName,
      'contentType': instance.contentType,
    };
