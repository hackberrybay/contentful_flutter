// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) => _$ContentImpl(
      nodeType: $enumDecode(_$ContentfulContentNodeTypeEnumMap, json['nodeType']),
      parentNodeType: $enumDecodeNullable(
        _$ContentfulContentNodeTypeEnumMap,
        json['parentNodeType'],
      ),
      data: json['data'] == null ? null : Data.fromJson(json['data'] as Map<String, dynamic>),
      subContent: (json['content'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      marks: (json['marks'] as List<dynamic>?)
          ?.map((e) => ContentfulTextMark.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) => <String, dynamic>{
      'nodeType': _$ContentfulContentNodeTypeEnumMap[instance.nodeType]!,
      'parentNodeType': _$ContentfulContentNodeTypeEnumMap[instance.parentNodeType],
      'data': instance.data,
      'content': instance.subContent,
      'marks': instance.marks,
      'value': instance.value,
    };

const _$ContentfulContentNodeTypeEnumMap = {
  ContentfulContentNodeType.unorderedList: 'unordered-list',
  ContentfulContentNodeType.orderedList: 'ordered-list',
  ContentfulContentNodeType.listItem: 'list-item',
  ContentfulContentNodeType.headingOne: 'heading-1',
  ContentfulContentNodeType.headingTwo: 'heading-2',
  ContentfulContentNodeType.headingThree: 'heading-3',
  ContentfulContentNodeType.headingFour: 'heading-4',
  ContentfulContentNodeType.headingFive: 'heading-5',
  ContentfulContentNodeType.headingSix: 'heading-6',
  ContentfulContentNodeType.blockquote: 'blockquote',
  ContentfulContentNodeType.paragraph: 'paragraph',
  ContentfulContentNodeType.embeddedAssetBlock: 'embedded-asset-block',
  ContentfulContentNodeType.document: 'document',
  ContentfulContentNodeType.hr: 'hr',
  ContentfulContentNodeType.text: 'text',
  ContentfulContentNodeType.hyperlink: 'hyperlink',
  ContentfulContentNodeType.assetHyperlink: 'asset-hyperlink',
  ContentfulContentNodeType.entryHyperlink: 'entry-hyperlink',
};
