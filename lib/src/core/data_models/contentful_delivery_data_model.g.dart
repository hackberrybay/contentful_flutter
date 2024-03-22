// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contentful_delivery_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentfulDeliveryDataModelImpl<T>
    _$$ContentfulDeliveryDataModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
        _$ContentfulDeliveryDataModelImpl<T>(
          total: json['total'] as int? ?? 0,
          sys: json['sys'] == null
              ? null
              : Sys.fromJson(json['sys'] as Map<String, dynamic>),
          skip: json['skip'] as int?,
          limit: json['limit'] as int?,
          items: (json['items'] as List<dynamic>?)?.map(fromJsonT).toList() ??
              const [],
          includes: json['includes'] == null
              ? null
              : Includes.fromJson(json['includes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ContentfulDeliveryDataModelImplToJson<T>(
  _$ContentfulDeliveryDataModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'sys': instance.sys,
      'skip': instance.skip,
      'limit': instance.limit,
      'items': instance.items.map(toJsonT).toList(),
      'includes': instance.includes,
    };
