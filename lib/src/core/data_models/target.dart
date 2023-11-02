import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'target.freezed.dart';
part 'target.g.dart';

@freezed

/// We find the target inside the data of the embedded-asset-block node.
/// It contains the [sys] of the asset/file. where we find it's id, type and linkType.
/// And we use it to retrieve the asset from the [Includes] object.
class Target with _$Target {
  /// We find the target inside the data of the embedded-asset-block node.
  /// It contains the [sys] of the asset/file. where we find it's id, type and linkType.
  /// And we use it to retrieve the asset from the [Includes] object.
  const factory Target({
    Sys? sys,
  }) = _Target;

  factory Target.fromJson(Map<String, dynamic> json) => _$TargetFromJson(json);
}
