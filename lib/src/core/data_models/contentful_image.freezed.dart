// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contentful_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentfulImage _$ContentfulImageFromJson(Map<String, dynamic> json) {
  return _ContentfulImage.fromJson(json);
}

/// @nodoc
mixin _$ContentfulImage {
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentfulImageCopyWith<ContentfulImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentfulImageCopyWith<$Res> {
  factory $ContentfulImageCopyWith(
          ContentfulImage value, $Res Function(ContentfulImage) then) =
      _$ContentfulImageCopyWithImpl<$Res, ContentfulImage>;
  @useResult
  $Res call({int? width, int? height});
}

/// @nodoc
class _$ContentfulImageCopyWithImpl<$Res, $Val extends ContentfulImage>
    implements $ContentfulImageCopyWith<$Res> {
  _$ContentfulImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentfulImageImplCopyWith<$Res>
    implements $ContentfulImageCopyWith<$Res> {
  factory _$$ContentfulImageImplCopyWith(_$ContentfulImageImpl value,
          $Res Function(_$ContentfulImageImpl) then) =
      __$$ContentfulImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? width, int? height});
}

/// @nodoc
class __$$ContentfulImageImplCopyWithImpl<$Res>
    extends _$ContentfulImageCopyWithImpl<$Res, _$ContentfulImageImpl>
    implements _$$ContentfulImageImplCopyWith<$Res> {
  __$$ContentfulImageImplCopyWithImpl(
      _$ContentfulImageImpl _value, $Res Function(_$ContentfulImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$ContentfulImageImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentfulImageImpl implements _ContentfulImage {
  const _$ContentfulImageImpl({this.width, this.height});

  factory _$ContentfulImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentfulImageImplFromJson(json);

  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'ContentfulImage(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentfulImageImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentfulImageImplCopyWith<_$ContentfulImageImpl> get copyWith =>
      __$$ContentfulImageImplCopyWithImpl<_$ContentfulImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentfulImageImplToJson(
      this,
    );
  }
}

abstract class _ContentfulImage implements ContentfulImage {
  const factory _ContentfulImage({final int? width, final int? height}) =
      _$ContentfulImageImpl;

  factory _ContentfulImage.fromJson(Map<String, dynamic> json) =
      _$ContentfulImageImpl.fromJson;

  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$$ContentfulImageImplCopyWith<_$ContentfulImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
