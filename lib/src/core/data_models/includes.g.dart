// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'includes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncludesImpl _$$IncludesImplFromJson(Map<String, dynamic> json) =>
    _$IncludesImpl(
      assetList: (json['Asset'] as List<dynamic>?)
          ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IncludesImplToJson(_$IncludesImpl instance) =>
    <String, dynamic>{
      'Asset': instance.assetList,
    };
