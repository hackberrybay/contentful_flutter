import 'package:freezed_annotation/freezed_annotation.dart';

part 'contentful_image.freezed.dart';
part 'contentful_image.g.dart';

@freezed
class ContentfulImage with _$ContentfulImage {
  const factory ContentfulImage({
    int? width,
    int? height,
  }) = _ContentfulImage;

  factory ContentfulImage.fromJson(Map<String, dynamic> json) =>
      _$ContentfulImageFromJson(json);
}
