// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssetFieldImpl _$$AssetFieldImplFromJson(Map<String, dynamic> json) =>
    _$AssetFieldImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      file: json['file'] == null
          ? null
          : FileField.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AssetFieldImplToJson(_$AssetFieldImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'file': instance.file,
    };
