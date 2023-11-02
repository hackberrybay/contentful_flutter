import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_field.freezed.dart';
part 'file_field.g.dart';

@freezed

/// [FileField] contains the url of the file and the details of the file.
/// The details are the url, the size, the content type and the fileName.
/// also the dimensions and the size of the image if it's an image.
/// The [FileField] is usually inside the [AssetField].
class FileField with _$FileField {
  /// [FileField] contains the url of the file and the details of the file.
  /// The details are the url, the size, the content type and the fileName.
  /// also the dimensions and the size of the image if it's an image.
  /// The [FileField] is usually inside the [AssetField].
  const factory FileField({
    String? url,
    Details? details,
    String? fileName,
    String? contentType,
  }) = _FileField;

  factory FileField.fromJson(Map<String, dynamic> json) =>
      _$FileFieldFromJson(json);
}
