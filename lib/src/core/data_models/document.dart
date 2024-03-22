import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed

/// [Document] is the base model for the contentful rich text document.
/// It contains the [contentList] that is returned from the API.
/// The [contentList] are the entries that are returned from the API.
/// The [nodeType] is the type of the node that is returned from the API.
class Document with _$Document {
  /// [Document] is the base model for the contentful rich text document.
  /// It contains the [contentList] that is returned from the API.
  /// The [contentList] are the entries that are returned from the API.
  /// The [nodeType] is the type of the node that is returned from the API.
  const factory Document({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'content') List<Content>? contentList,
    ContentfulContentNodeType? nodeType,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}
