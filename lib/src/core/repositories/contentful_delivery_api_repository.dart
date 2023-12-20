// ignore_for_file: public_member_api_docs, depend_on_referenced_packages

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:contentful_flutter/src/src.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

class ContentfulDeliveryAPIRepository {
  const ContentfulDeliveryAPIRepository({
    required ContentfulClient client,
    String baseUrl = 'https://cdn.contentful.com',
  })  : _client = client,
        _baseUrl = baseUrl;

  Future<ContentfulDeliveryDataModel<T>> getEntries<T>({
    required T Function(Object?) fromJsonT,
    String? envId,
  }) async {
    final environmentId = envId ?? 'master';
    final url =
        '$_baseUrl/spaces/${_client.spaceId}/environments/$environmentId/entries?access_token=${_client.accessToken}';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = response.body;
      final jsonBody = jsonDecode(body) as Map<String, dynamic>?;
      if (jsonBody == null) return throw Exception('Failed to load data');
      return ContentfulDeliveryDataModel.fromJson(jsonBody, fromJsonT);
    } else {
      throw Exception('Failed to load article');
    }
  }

  Future<Entry<T>?> getEntryFrom<T>({
    required T Function(Object?) fromJsonT,
    required String entryID,
    String? envId,
  }) async {
    final environmentId = envId ?? 'master';
    final url =
        '$_baseUrl/spaces/${_client.spaceId}/environments/$environmentId/entries/$entryID?access_token=${_client.accessToken}';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = response.body;
      final jsonBody = jsonDecode(body) as Map<String, dynamic>?;
      if (jsonBody == null) return null;
      return Entry.fromJson(jsonBody, fromJsonT);
    } else {
      throw Exception('Failed to load article');
    }
  }

  String? getAssetUrlFromSys({
    required Sys sys,
    required Includes? includes,
  }) {
    if ((sys.type?.isLink ?? false) &&
        (sys.linkType?.isAsset ?? false) &&
        includes != null) {
      return getAssetUrlFrom(assetId: sys.idOrNull, includes: includes);
    }
    return null;
  }

  Either<List<Content>, String?>? getDataFrom({
    required Content content,
    Includes? includes,
  }) {
    final modifiedContent = content.copyWith(
      parentNodeType: content.parentNodeType,
      subContent: content.subContent
              ?.map((e) => e.copyWith(parentNodeType: content.nodeType))
              .toList() ??
          [],
    );
    final nodeType = modifiedContent.nodeType;
    final subContent = modifiedContent.subContent;

    if ((nodeType.isEmbeddedAssetBlock) && includes != null) {
      // Returns String
      return right(
        getAssetUrlFrom(
          assetId: modifiedContent.data!.target!.sys!.idOrNull,
          includes: includes,
        ),
      );
    } else if (nodeType.isHorizontalDivider) {
      // Returns String
      return const Right(ContentfulAPIConstants.horizontalDivider);
    } else {
      // Returns Content but we make it List<Content> to match the return type
      return left([modifiedContent.copyWith(subContent: subContent)]);
    }
  }

  final String _baseUrl;
  final ContentfulClient _client;
}

String? getAssetUrlFrom({
  Asset? asset,
  String? assetId,
  Includes? includes,
}) {
  assert(
    asset != null || (assetId != null && includes != null),
    'asset or assetId and includes must be provided',
  );
  if (asset != null) {
    final assetUrl = asset.fields?.file?.url;
    if (assetUrl?.isEmpty ?? true) return null;
    if (assetUrl!.startsWith('//')) {
      return 'https:$assetUrl';
    }
    return assetUrl;
  }
  if (assetId != null && includes != null) {
    final asset = _getAssetFromEntry(
      assetId: assetId,
      includes: includes,
    );
    return getAssetUrlFrom(asset: asset);
  }
  return null;
}

Asset? _getAssetFromEntry({
  required String assetId,
  required Includes includes,
}) {
  final assetsList = includes.assetList;
  final assetItem = assetsList?.firstWhereOrNull(
    (asset) => asset.sys?.id == assetId,
  );
  return assetItem;
}
