import 'package:contentful_flutter/contentful_flutter.dart';

/// Extension methods for [Sys] objects.
extension SysX on Sys {
  /// Returns the id of this [Sys] object or `null` if it is not set.
  String? get idOrNull => id;
}
