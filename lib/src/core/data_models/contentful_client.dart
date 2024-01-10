import 'dart:ui';

/// Contentful client used to make requests to the Contentful Delivery API.
class ContentfulClient {
  /// Creates a new instance of the Contentful client.
  const ContentfulClient({
    required this.spaceId,
    required this.accessToken,
    this.environmentId = 'master',
    this.locale = const Locale('en-US'),
  });

  /// The access token used to authenticate the client.
  final String accessToken;

  /// The space ID used to identify the space.
  final String spaceId;

  /// The environment ID used to identify the environment.
  final String environmentId;

  /// The locale used to identify the locale.
  final Locale locale;
}
