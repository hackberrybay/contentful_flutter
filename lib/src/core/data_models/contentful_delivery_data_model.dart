import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:flutter/cupertino.dart';

/// [ContentfulDeliveryDataModel] is the base model for the contentful delivery
/// API returned from the API.
/// It contains the [sys] information, the [total] number of items, the [skip]
/// and [limit] values. It also contains the [items] and [includes] that are
/// returned from the API. The [items] are the entries that are returned from
/// the API.
/// The [includes] are the assets and linked entries that are returned from the
/// API.

class ContentfulDeliveryDataModel<T> {
  ///
  ContentfulDeliveryDataModel({
    required this.total,
    required this.items,
    this.sys,
    this.skip,
    this.limit,
    this.includes,
  });

  ///
  factory ContentfulDeliveryDataModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT, {
    required String modelName,
  }) {
    final items = <T>[];

    for (final item in json['items'] as List) {
      try {
        // Getting the modelName from the sys to check if it's the right model
        final modelNameId = item['sys']['contentType']['sys']['id'] as String;
        if (modelName == modelNameId) {
          items.add(fromJsonT(item));
        }
      } catch (e) {
        debugPrint('Parsing an item has failed \n$e');
      }
    }

    return ContentfulDeliveryDataModel(
      total: json['total'] as int? ?? 0,
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      skip: json['skip'] as int?,
      limit: json['limit'] as int?,
      includes: Includes.fromJson(json['includes'] as Map<String, dynamic>),
      items: items,
    );
  }

  /// total number of entries
  final int total;

  /// [sys] contains Contentful system info
  final Sys? sys;

  /// [skip] is the number of skipped entries
  final int? skip;

  /// [limit] is the limit number of entries
  final int? limit;

  /// [includes] is the list of assets
  final Includes? includes;

  /// [items] is the list of returned items depending
  /// on the modelName given in the fromJson method
  final List<T> items;
}
