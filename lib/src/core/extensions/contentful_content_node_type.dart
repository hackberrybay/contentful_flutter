import 'package:contentful_flutter/contentful_flutter.dart';

/// Extension methods for [ContentfulContentNodeType].
extension ContentfulContentNodeTypeX on ContentfulContentNodeType {
  /// Returns `true` if this [ContentfulContentNodeType] is an ordered list.
  bool get isOrderedList => this == ContentfulContentNodeType.orderedList;

  /// Returns `true` if this [ContentfulContentNodeType] is an unordered list.
  bool get isUnorderedList => this == ContentfulContentNodeType.unorderedList;

  /// Returns `true` if this [ContentfulContentNodeType] is a list item.
  bool get isListItem => this == ContentfulContentNodeType.listItem;

  /// Returns `true` if this [ContentfulContentNodeType] is a text.
  bool get isText => this == ContentfulContentNodeType.text;

  /// Returns `true` if this [ContentfulContentNodeType] is a heading-1
  bool get isHeadingOne => this == ContentfulContentNodeType.headingOne;

  /// Returns `true` if this [ContentfulContentNodeType] is a heading-2
  bool get isHeadingTwo => this == ContentfulContentNodeType.headingTwo;

  /// Returns `true` if this [ContentfulContentNodeType] is a heading-3
  bool get isHeadingThree => this == ContentfulContentNodeType.headingThree;

  /// Returns `true` if this [ContentfulContentNodeType] is a heading-4
  bool get isHeadingFour => this == ContentfulContentNodeType.headingFour;

  /// Returns `true` if this [ContentfulContentNodeType] is a heading-5
  bool get isHeadingFive => this == ContentfulContentNodeType.headingFive;

  /// Returns `true` if this [ContentfulContentNodeType] is a heading-6
  bool get isHeadingSix => this == ContentfulContentNodeType.headingSix;

  /// Returns `true` if this [ContentfulContentNodeType] is a paragraph
  bool get isParagraph => this == ContentfulContentNodeType.paragraph;

  /// Returns `true` if this [ContentfulContentNodeType] is an embedded-asset-block
  bool get isEmbeddedAssetBlock =>
      this == ContentfulContentNodeType.embeddedAssetBlock;

  /// Returns `true` if this [ContentfulContentNodeType] is a document
  bool get isDocument => this == ContentfulContentNodeType.document;

  /// Returns `true` if this [ContentfulContentNodeType] is a hr
  bool get isHorizontalDivider => this == ContentfulContentNodeType.hr;

  /// Returns `true` if this [ContentfulContentNodeType] is a hyperlink
  bool get isHyperlink => this == ContentfulContentNodeType.hyperlink;

  /// Returns `true` if this [ContentfulContentNodeType] is a asset hyperlink
  bool get isAssetHyperlink => this == ContentfulContentNodeType.assetHyperlink;

  /// Returns `true` if this [ContentfulContentNodeType] is a entry hyperlink
  bool get isEntryHyperlink => this == ContentfulContentNodeType.entryHyperlink;

  bool get isList =>
      this == ContentfulContentNodeType.orderedList ||
      this == ContentfulContentNodeType.unorderedList;

  bool get isHeading =>
      this == ContentfulContentNodeType.headingOne ||
      this == ContentfulContentNodeType.headingTwo ||
      this == ContentfulContentNodeType.headingThree ||
      this == ContentfulContentNodeType.headingFour ||
      this == ContentfulContentNodeType.headingFive ||
      this == ContentfulContentNodeType.headingSix;

  bool get hasHyperlink =>
      this == ContentfulContentNodeType.hyperlink ||
      this == ContentfulContentNodeType.assetHyperlink ||
      this == ContentfulContentNodeType.entryHyperlink;
}
