import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry.freezed.dart';
part 'entry.g.dart';

@Freezed(genericArgumentFactories: true)

/// The model of Contentful Entry
class Entry<T> with _$Entry<T> {
  /// The constructor of Contentful Entry Model
  const factory Entry({
    required T fields,
    Metadata? metadata,
    Sys? sys,
  }) = _Entry;

  /// The constructor fromJson of Contentful Entry Model
  factory Entry.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$EntryFromJson(json, fromJsonT);
}
