import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys.freezed.dart';
part 'sys.g.dart';

@freezed

/// [Sys] is the system information that is returned from the Contentful API.
/// It contains the [type], [linkType] and [id] of the entry.
/// We use it to define if the returned data is of type [Entry] or [Asset] or link.
/// And from that you could return the desired widget or data.
class Sys with _$Sys {
  /// [Sys] is the system information that is returned from the Contentful API.
  /// It contains the [type], [linkType] and [id] of the entry.
  /// We use it to define if the returned data is of type [Entry] or [Asset] or link.
  /// And from that you could return the desired widget or data.
  const factory Sys({
    ContentfulItemType? type,
    ContentfulLinkType? linkType,
    String? id,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
