import 'package:contentful_flutter/contentful_flutter.dart';

extension ContentfulStringX on String? {
  bool get isUrl {
    if (this == null) return false;
    return this!.startsWith('http://') || this!.startsWith('https://');
  }

  bool get isHorizontalDivider {
    return this == ContentfulAPIConstants.horizontalDivider;
  }
}
