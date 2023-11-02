import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'includes.freezed.dart';
part 'includes.g.dart';

@freezed

/// [Includes] is where the assets and it's linked entries are stored.
/// It's a part of the [ContentfulDeliveryDataModel] and is used to
/// retrieve the assets and linked entries from the [Entry]s.
class Includes with _$Includes {
  /// [Includes] is where the assets and it's linked entries are stored.
  /// It's a part of the [ContentfulDeliveryDataModel] and is used to
  /// retrieve the assets and linked entries from the [Entry]s.
  const factory Includes({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'Asset') List<Asset>? assetList,
  }) = _Includes;

  /// Includes.fromJson is used to convert the json that is received from the
  /// Contentful API into a [Includes] object.
  /// It also generated toJson methods that can be used to convert the
  /// [Includes] object back into json.
  factory Includes.fromJson(Map<String, dynamic> json) =>
      _$IncludesFromJson(json);
}
