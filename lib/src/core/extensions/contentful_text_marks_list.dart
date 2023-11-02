import 'package:contentful_flutter/contentful_flutter.dart';

/// Extension methods for [ContentfulTextMark].
/// Text marks are used to style text nodes.
/// And they are retunrned inside the item of nodeType text.
extension ContentfulTextMarksListX on List<ContentfulTextMark> {
  /// Returns `true` if this [ContentfulTextMark] is bold.
  bool get hasBold => any((element) => element.type.isBold);

  /// Returns `true` if this [ContentfulTextMark] is italic.
  bool get hasItalic => any((element) => element.type.isItalic);

  /// Returns `true` if this [ContentfulTextMark] is underline.
  bool get hasUnderline => any((element) => element.type.isUnderline);
}
