import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_field.freezed.dart';
part 'asset_field.g.dart';

@freezed

/// [AssetField] is the field that contains the actual file.
/// It has the title and description of the file.
/// the file itself is in the [FileField].
/// The [FileField] contains the url of the file and the details of the file.
/// The details are the size and the content type.
/// also the dimensions and the size of the image if it's an image.
class AssetField with _$AssetField {
  /// [AssetField] is the field that contains the actual file.
  /// It has the title and description of the file.
  /// the file itself is in the [FileField].
  /// The [FileField] contains the url of the file and the details of the file.
  /// The details are the size and the content type.
  /// also the dimensions and the size of the image if it's an image.
  const factory AssetField({
    String? title,
    String? description,
    FileField? file,
  }) = _AssetField;

  factory AssetField.fromJson(Map<String, dynamic> json) =>
      _$AssetFieldFromJson(json);
}
