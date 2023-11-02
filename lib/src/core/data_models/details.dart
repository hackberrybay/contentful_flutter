import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed

/// [Details] contains the [Asset] and the [AssetField] details.
/// The details are specific to the asset content type.
/// For example if the asset is an image, the details will contain the size,
/// the dimensions and the content type.
class Details with _$Details {
  /// [Details] contains the [Asset] and the [AssetField] details.
  /// The details are specific to the asset content type.
  /// For example if the asset is an image, the details will contain the size,
  /// the dimensions and the content type.
  const factory Details({
    int? size,
    ContentfulImage? image,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}
