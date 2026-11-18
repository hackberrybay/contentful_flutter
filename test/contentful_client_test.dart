import 'dart:ui';

import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContentfulClient', () {
    test('uses master environment and en-US locale by default', () {
      const client = ContentfulClient(spaceId: 'space', accessToken: 'token');

      expect(client.spaceId, 'space');
      expect(client.accessToken, 'token');
      expect(client.environmentId, 'master');
      expect(client.locale, const Locale('en-US'));
    });
  });
}
