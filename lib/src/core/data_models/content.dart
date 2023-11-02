import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';
part 'content.g.dart';

@freezed

/// [Content] is usually non null when we have a node type of document or paragraph.
/// It contains a list of paragraph contents.
/// And if it is a document it contains a list of different node types.
class Content with _$Content {
  /// [Content] is usually non null when we have a node type of document or paragraph.
  /// It contains a list of paragraph contents.
  /// And if it is a document it contains a list of different node types.
  const factory Content({
    required ContentfulContentNodeType nodeType,
    ContentfulContentNodeType? parentNodeType,
    Data? data,
    @JsonKey(name: 'content') List<Content>? subContent,
    List<ContentfulTextMark>? marks,

    /// value will be not null if we have a text
    String? value,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
