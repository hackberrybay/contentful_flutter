import 'package:freezed_annotation/freezed_annotation.dart';

/// Enumerations for Contentful types.
enum ContentfulItemType {
  /// A Contentful entry.
  @JsonValue('Entry')
  entry,

  /// A Contentful link.
  @JsonValue('Link')
  link,

  @JsonValue('Array')
  array,

  @JsonValue('Asset')
  asset,
}

extension ContentfulItemTypeX on ContentfulItemType {
  bool get isEntry => this == ContentfulItemType.entry;
  bool get isLink => this == ContentfulItemType.link;
}

/// Enumerations for Contentful link types.
/// It could be an asset or a space.
enum ContentfulLinkType {
  /// asset link type.
  @JsonValue('Asset')
  asset,

  /// Space link type.
  @JsonValue('Space')
  space,

  /// Space link type.
  @JsonValue('Entry')
  entry,
}

extension ContentfulLinkTypeX on ContentfulLinkType {
  bool get isAsset => this == ContentfulLinkType.asset;
  bool get isSpace => this == ContentfulLinkType.space;
  bool get isEntry => this == ContentfulLinkType.entry;
}

/// Enumerations for Contentful content node types.
/// It could be a paragraph, an embedded asset block or a document.
/// A document is a collection of nodes.
/// A node is a paragraph or an embedded asset block.
/// An embedded asset block is an asset that is embedded in a paragraph.
enum ContentfulContentNodeType {
  /// A text. It contains a list of marks.
  @JsonValue('unordered-list')
  unorderedList,

  /// A text. It contains a list of marks.
  @JsonValue('ordered-list')
  orderedList,

  /// A text. It contains a list of marks.
  @JsonValue('list-item')
  listItem,

  /// A heading one.
  @JsonValue('heading-1')
  headingOne,

  /// A heading two.
  @JsonValue('heading-2')
  headingTwo,

  /// A heading three.
  @JsonValue('heading-3')
  headingThree,

  /// A heading four.
  @JsonValue('heading-4')
  headingFour,

  /// A heading five.
  @JsonValue('heading-5')
  headingFive,

  /// A heading six.
  @JsonValue('heading-6')
  headingSix,

  /// A paragraph. It contains a list of paragraph contents.
  @JsonValue('paragraph')
  paragraph,

  /// An embeddedAssetBlock. It contains an asset.
  @JsonValue('embedded-asset-block')
  embeddedAssetBlock,

  /// A document. It contains a list of nodes, it could contain a paragraph or an embedded asset block.
  @JsonValue('document')
  document,

  /// A divider, it is a horizontal line.
  @JsonValue('hr')
  hr,

  /// A text. It contains a list of marks.
  @JsonValue('text')
  text,

  /// A hyperlink.
  @JsonValue('hyperlink')
  hyperlink,

  /// A asset hyperlink.
  @JsonValue('asset-hyperlink')
  assetHyperlink,

  /// A asset hyperlink.
  @JsonValue('entry-hyperlink')
  entryHyperlink,
}
