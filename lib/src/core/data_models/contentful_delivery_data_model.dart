import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contentful_delivery_data_model.freezed.dart';
part 'contentful_delivery_data_model.g.dart';

@Freezed(genericArgumentFactories: true)

/// [ContentfulDeliveryDataModel] is the base model for the contentful delivery API
/// returned from the API.
/// It contains the [sys] information, the [total] number of items, the [skip] and [limit] values.
/// It also contains the [items] and [includes] that are returned from the API.
/// The [items] are the entries that are returned from the API.
/// The [includes] are the assets and linked entries that are returned from the API.
class ContentfulDeliveryDataModel<T> with _$ContentfulDeliveryDataModel<T> {
  /// [ContentfulDeliveryDataModel] is the base model for the contentful delivery API
  /// returned from the API.
  /// It contains the [sys] information, the [total] number of items, the [skip] and [limit] values.
  /// It also contains the [items] and [includes] that are returned from the API.
  /// The [items] are the entries that are returned from the API.
  /// The [includes] are the assets and linked entries that are returned from the API.
  factory ContentfulDeliveryDataModel({
    @Default(0) int total,
    Sys? sys,
    int? skip,
    int? limit,
    @Default([]) List<T> items,
    Includes? includes,
  }) = _ContentfulDeliveryDataModel<T>;

  /// [ContentfulDeliveryDataModel.fromJson] is used to convert the json that is received from the
  /// Contentful API into a [ContentfulDeliveryDataModel] object.
  factory ContentfulDeliveryDataModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ContentfulDeliveryDataModelFromJson(json, fromJsonT);
}
