import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:contentful_flutter/src/core/core.dart';
import 'package:contentful_flutter/src/core/data_models/data_models.dart';
import 'package:contentful_flutter/src/src.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata.freezed.dart';
part 'metadata.g.dart';

@freezed

/// [Metadata] contains the tags of the entry.
/// It's usually in the items and the includes asset returned from the delivery API in the [ContentfulDeliveryDataModel]
/// It's also used in the [Entry] to store the tags of the entry.
class Metadata with _$Metadata {
  /// [Metadata] contains the tags of the entry.
  /// It's usually in the items and the includes asset returned from the delivery API in the [ContentfulDeliveryDataModel]
  /// It's also used in the [Entry] to store the tags of the entry.
  const factory Metadata({
    List<dynamic>? tags,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
