import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contentful_text_mark.freezed.dart';
part 'contentful_text_mark.g.dart';

@freezed
class ContentfulTextMark with _$ContentfulTextMark {
  const factory ContentfulTextMark({
    ContentfulTextMarksEnum? type,
  }) = _ContentfulTextMark;

  factory ContentfulTextMark.fromJson(Map<String, dynamic> json) =>
      _$ContentfulTextMarkFromJson(json);
}
