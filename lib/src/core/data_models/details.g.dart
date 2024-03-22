// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsImpl _$$DetailsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsImpl(
      size: json['size'] as int?,
      image: json['image'] == null
          ? null
          : ContentfulImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailsImplToJson(_$DetailsImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'image': instance.image,
    };
