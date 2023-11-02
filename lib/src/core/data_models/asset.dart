import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset.freezed.dart';
part 'asset.g.dart';

@freezed

/// [Asset] is a file that is stored in Contentful.
/// It has the link in the [AssetField] to the actual file.
/// Also we could find different details in side the [AssetField] concerning
/// the size and content type of the file.
class Asset with _$Asset {
  /// [Asset] is a file that is stored in Contentful.
  /// It has the link in the [AssetField] to the actual file.
  /// Also we could find different details in side the [AssetField] concerning
  /// the size and content type of the file.
  const factory Asset({
    Metadata? metadata,
    Sys? sys,
    AssetField? fields,
  }) = _Asset;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}
