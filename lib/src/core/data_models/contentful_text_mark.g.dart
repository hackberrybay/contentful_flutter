// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contentful_text_mark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentfulTextMarkImpl _$$ContentfulTextMarkImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentfulTextMarkImpl(
      type: $enumDecodeNullable(_$ContentfulTextMarksEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$$ContentfulTextMarkImplToJson(
        _$ContentfulTextMarkImpl instance) =>
    <String, dynamic>{
      'type': _$ContentfulTextMarksEnumEnumMap[instance.type],
    };

const _$ContentfulTextMarksEnumEnumMap = {
  ContentfulTextMarksEnum.bold: 'bold',
  ContentfulTextMarksEnum.italic: 'italic',
  ContentfulTextMarksEnum.underline: 'underline',
};
