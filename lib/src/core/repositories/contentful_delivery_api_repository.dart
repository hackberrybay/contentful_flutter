// ignore_for_file: public_member_api_docs, depend_on_referenced_packages

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:contentful_flutter/src/src.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ContentfulDeliveryAPIRepository {
  const ContentfulDeliveryAPIRepository({
    required ContentfulClient client,
    String baseUrl = 'https://cdn.contentful.com',
  })  : _client = client,
        _baseUrl = baseUrl;

  /// Fetch and parse the given type of Contentful model.
  /// Parses the language to utf8. Throws Exception on error.
  Future<ContentfulDeliveryDataModel<T>> getEntries<T>({
    required T Function(Object?) fromJsonT,
    String? contentType,
    Map<String, dynamic>? query,
  }) async {
    final contentTypeParam = contentType != null ? '&content_type=$contentType' : '';
    final baseUrl = '$_baseUrl/spaces/${_client.spaceId}/environments'
        '/${_client.environmentId}/entries?access_token=${_client.accessToken}'
        '&locale=${_client.locale.languageCode}$contentTypeParam';

    // Append query parameters to the URL if provided
    final url = query != null ? '$baseUrl&${_buildQueryString(query)}' : baseUrl;
    final response = await http.get(Uri.parse(url));
    Logger().i('Fetching entries response: ${response.statusCode}');
    if (response.statusCode == 200) {
      final body = utf8.decode(response.bodyBytes);
      final jsonBody = jsonDecode(body) as Map<String, dynamic>?;
      if (jsonBody == null) return throw Exception('Failed to load data');
      final result = ContentfulDeliveryDataModel.fromJson(jsonBody, fromJsonT);
      return result;
    } else {
      throw Exception('Failed to load article');
    }
  }

  /// Fetch and parse the given type of Data Entry.
  /// Parses the language to utf8. Throws Exception on error.
  Future<Entry<T>?> getEntryFrom<T>({
    required T Function(Object?) fromJsonT,
    required String entryID,
    String? envId,
  }) async {
    final environmentId = envId ?? 'master';
    final url = '$_baseUrl/spaces/${_client.spaceId}'
        '/environments/$environmentId/entries/'
        '$entryID?access_token=${_client.accessToken}';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = utf8.decode(response.bodyBytes);
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
    if ((sys.type?.isLink ?? false) && (sys.linkType?.isAsset ?? false) && includes != null) {
      return getAssetUrlFrom(
        assetId: sys.idOrNull,
        includes: includes,
      );
    }
    return null;
  }

  Either<List<Content>, String?>? getDataFrom({
    required Content content,
    Includes? includes,
  }) {
    final modifiedContent = content.copyWith(
      parentNodeType: content.parentNodeType,
      subContent:
          content.subContent?.map((e) => e.copyWith(parentNodeType: content.nodeType)).toList() ??
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

/// Returns [AssetField] from [assetId] and [includes]
AssetField? getAssetDataFrom({
  required String assetId,
  required Includes includes,
}) {
  final asset = _getAssetFromEntry(
    assetId: assetId,
    includes: includes,
  );
  return asset?.fields;
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

String _buildQueryString(Map<String, dynamic> queryParameters) {
  return queryParameters.entries.map((entry) {
    final key = Uri.encodeComponent(entry.key);
    final value = Uri.encodeComponent(entry.value.toString());
    return '$key=$value';
  }).join('&');
}
