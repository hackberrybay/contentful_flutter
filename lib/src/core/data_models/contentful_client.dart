class ContentfulClient {
  const ContentfulClient({
    required this.spaceId,
    required this.accessToken,
  });
  final String accessToken;
  final String spaceId;
}
