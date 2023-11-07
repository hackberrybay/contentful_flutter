// ignore_for_file: public_member_api_docs

import 'package:contentful_flutter/contentful_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

typedef ContentfulEitherDataType = Either<List<Content>, String?>;

/// It returns the desired widget based on the type of the field.
class ContentfulFlutterBuilder extends StatelessWidget {
  /// It returns the desired widget based on the type of the field.
  const ContentfulFlutterBuilder({
    required this.data,
    required this.includes,
    required this.textBuilder,
    required this.blockQuoteBuilder,
    required this.linkWidgetBuilder,
    required this.imageBuilder,
    required this.dividerBuilder,
    required this.textStyle,
    this.entryHyperlinkBuilder,
    this.listIdentationPadding = const EdgeInsets.only(left: 16),
    this.headingOneStyle,
    this.headingTwoStyle,
    this.headingThreeStyle,
    this.headingFourStyle,
    this.headingFiveStyle,
    this.headingSixStyle,
    super.key,
  });

  final ContentfulEitherDataType data;
  final Includes? includes;

  final TextStyle textStyle;
  final TextStyle? headingOneStyle;
  final TextStyle? headingTwoStyle;
  final TextStyle? headingThreeStyle;
  final TextStyle? headingFourStyle;
  final TextStyle? headingFiveStyle;
  final TextStyle? headingSixStyle;

  final Widget Function(
    Content textContent,
    TextStyle style,
    bool ignoreTextPadding,
    EdgeInsets? padding,
  ) textBuilder;
  final Widget Function(Widget child) blockQuoteBuilder;
  final Widget Function(
    String? url,
    Widget child,
  ) linkWidgetBuilder;
  final Widget Function(
    String entryId,
    Widget child,
  )? entryHyperlinkBuilder;
  final Widget Function(String imageUrl) imageBuilder;
  final Widget Function() dividerBuilder;
  final EdgeInsets listIdentationPadding;

  @override
  Widget build(BuildContext context) {
    final textSpans = <InlineSpan>[];
    return _buildContentfulWidget(
      data,
      ignoreTextPadding: false,
      textSpans: textSpans,
    );
  }

  Widget _buildHasHyperlinkWidget(
    ContentfulContentNodeType nodeType,
    Content content,
    bool ignoreTextPadding,
    List<InlineSpan> textSpans,
  ) {
    final subContent = content.subContent
        ?.map(
          (e) => e.copyWith(
            parentNodeType: content.nodeType,
          ),
        )
        .toList();
    if (nodeType.isEntryHyperlink && entryHyperlinkBuilder != null) {
      return entryHyperlinkBuilder!(
        content.data!.target!.sys!.idOrNull!,
        _buildContentfulWidget(
          left(subContent!),
          ignoreTextPadding: ignoreTextPadding,
          isRow: true,
          textSpans: textSpans,
        ),
      );
    }
    final uri = nodeType.isHyperlink
        ? content.data?.uri
        : nodeType.isAssetHyperlink
            ? getAssetUrlFrom(
                assetId: content.data!.target!.sys!.idOrNull,
                includes: includes,
              )
            : null;
    if (uri == null) return const SizedBox.shrink();
    return linkWidgetBuilder(
      uri,
      _buildContentfulWidget(
        left(subContent!),
        ignoreTextPadding: ignoreTextPadding,
        isRow: true,
        textSpans: textSpans,
      ),
    );
  }

  Widget _buildContentItem(
    Content content, {
    required bool ignoreTextPadding,
    required List<InlineSpan> textSpans,
    int? index,
  }) {
    final nodeType = content.nodeType;
    // Adds parent node type to the subcontent to style the text
    final subContent = content.subContent
        ?.map((item) => item.copyWith(parentNodeType: content.parentNodeType))
        .toList();
    if (nodeType.hasHyperlink) {
      return _buildHasHyperlinkWidget(
        nodeType,
        content,
        ignoreTextPadding,
        textSpans,
      );
    } else if (nodeType.isEmbeddedAssetBlock) {
      final url = getAssetUrl(content);
      return imageBuilder(url);
    } else if (nodeType.isText) {
      return textBuilder(
        content,
        getTextStyle(content),
        ignoreTextPadding,
        const EdgeInsets.symmetric(horizontal: 16),
      );
    } else if (nodeType.isBlockquote) {
      return blockQuoteBuilder(
        _buildContentfulWidget(
          left(subContent!),
          ignoreTextPadding: true,
          isRow: false,
          textSpans: textSpans,
        ),
      );
    } else if (nodeType.isParagraph) {
      for (var i = 0; i < subContent!.length; i++) {
        final item = subContent[i];
        if (item.nodeType.isText) {
          textSpans.add(
            TextSpan(
              text: item.value,
              style: getTextStyle(item),
            ),
          );
        } else if (item.nodeType.hasHyperlink) {
          textSpans.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              style: getTextStyle(item),
              child: _buildHasHyperlinkWidget(
                item.nodeType,
                item,
                ignoreTextPadding,
                textSpans,
              ),
            ),
          );
        } else {
          _buildContentfulWidget(
            left(item.subContent!),
            ignoreTextPadding: ignoreTextPadding,
            textSpans: textSpans,
          );
        }
      }
      if (textSpans.isEmpty) return const SizedBox.shrink();
      final mySpans = [...textSpans];
      final result = Text.rich(TextSpan(children: mySpans));
      textSpans.clear();
      return result;
    } else if (nodeType.isHeading) {
      final newList = subContent!
          .map((subItem) => subItem.copyWith(parentNodeType: nodeType))
          .toList();
      return _buildContentfulWidget(
        left(newList),
        ignoreTextPadding: true,
        isRow: true,
        textSpans: textSpans,
      );
    } else if (nodeType.isListItem) {
      final isOrderedList = content.parentNodeType?.isOrderedList ?? false;
      // If it is a list item, the sublist a list of paragraphs or assets or lists
      return Padding(
        padding: listIdentationPadding,
        child: _buildListItem(subContent!, index: isOrderedList ? index : null),
      );
    } else if (nodeType.isList) {
      final isOrderedList = nodeType.isOrderedList;
      final indexedList = subContent!
          .mapWithIndex(
            (listItem, index) => _buildListItem(
              listItem.subContent!,
              index: isOrderedList ? index : null,
            ),
          )
          .toList();
      // If it is a list, the sublist should be a list of list items
      return Column(children: indexedList);
    }
    return const Text(
      'This text should not be shown, please check it or open an issue in the repository',
    );
  }

  Widget _buildContentfulWidget(
    ContentfulEitherDataType data, {
    required bool ignoreTextPadding,
    required List<InlineSpan> textSpans,
    bool? isRow,
  }) {
    return data.fold(
      (contentsList) {
        final list = contentsList.mapWithIndex((item, index) {
          return _buildContentItem(
            item,
            ignoreTextPadding: ignoreTextPadding,
            index: index,
            textSpans: textSpans,
          );
        }).toList();
        return isRow ?? false
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: list,
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: list,
              );
      },
      (text) {
        if (text?.isEmpty ?? true) return const SizedBox.shrink();
        if (text.isUrl) return imageBuilder(text!);
        if (text.isHorizontalDivider) return dividerBuilder();
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildListItem(
    List<Content> items, {
    double spaceBetween = 4,
    int? index,
  }) {
    final textSpans = <InlineSpan>[];
    final firstItem = items.first;
    final dotStyle = _getStyleFrom(firstItem.nodeType, marks: firstItem.marks);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(index != null ? '${index + 1}. ' : '•', style: dotStyle),
        SizedBox(width: spaceBetween),
        Expanded(
          child: _buildContentfulWidget(
            left(items),
            ignoreTextPadding: true,
            isRow: false,
            textSpans: textSpans,
          ),
        ),
      ],
    );
  }

  String getAssetUrl(Content item) {
    return getAssetUrlFrom(
          assetId: item.data!.target!.sys!.idOrNull,
          includes: includes,
        ) ??
        '';
  }

  TextStyle getTextStyle(Content item) {
    return _getStyleFrom(item.parentNodeType, marks: item.marks);
  }

  TextStyle _getStyleFrom(
    ContentfulContentNodeType? type, {
    required List<ContentfulTextMark>? marks,
  }) {
    TextStyle? result;
    switch (type) {
      case ContentfulContentNodeType.headingOne:
        result = headingOneStyle;
        break;
      case ContentfulContentNodeType.headingTwo:
        result = headingTwoStyle;
        break;
      case ContentfulContentNodeType.headingThree:
        result = headingThreeStyle;
        break;
      case ContentfulContentNodeType.headingFour:
        result = headingFourStyle;
        break;
      case ContentfulContentNodeType.headingFive:
        result = headingFiveStyle;
        break;
      case ContentfulContentNodeType.headingSix:
        result = headingSixStyle;
        break;

      default:
        break;
    }

    final finalResult = (result ?? textStyle).copyWith(
      fontWeight: (marks?.hasBold ?? false) ? FontWeight.bold : null,
      fontStyle: (marks?.hasItalic ?? false) ? FontStyle.italic : null,
      decoration:
          (marks?.hasUnderline ?? false) ? TextDecoration.underline : null,
    );
    return finalResult;
  }
}
