// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      contentList: (json['content'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodeType: $enumDecodeNullable(
          _$ContentfulContentNodeTypeEnumMap, json['nodeType']),
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'content': instance.contentList,
      'nodeType': _$ContentfulContentNodeTypeEnumMap[instance.nodeType],
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
