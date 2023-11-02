enum ContentfulTextMarksEnum {
  bold,
  italic,
  underline,
}

extension NullableContentfulTextMarksEnumX on ContentfulTextMarksEnum? {
  bool get isBold => this == ContentfulTextMarksEnum.bold;
  bool get isItalic => this == ContentfulTextMarksEnum.italic;
  bool get isUnderline => this == ContentfulTextMarksEnum.underline;
}
