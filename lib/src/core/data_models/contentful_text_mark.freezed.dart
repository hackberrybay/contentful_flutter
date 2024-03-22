// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contentful_text_mark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentfulTextMark _$ContentfulTextMarkFromJson(Map<String, dynamic> json) {
  return _ContentfulTextMark.fromJson(json);
}

/// @nodoc
mixin _$ContentfulTextMark {
  ContentfulTextMarksEnum? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentfulTextMarkCopyWith<ContentfulTextMark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentfulTextMarkCopyWith<$Res> {
  factory $ContentfulTextMarkCopyWith(
          ContentfulTextMark value, $Res Function(ContentfulTextMark) then) =
      _$ContentfulTextMarkCopyWithImpl<$Res, ContentfulTextMark>;
  @useResult
  $Res call({ContentfulTextMarksEnum? type});
}

/// @nodoc
class _$ContentfulTextMarkCopyWithImpl<$Res, $Val extends ContentfulTextMark>
    implements $ContentfulTextMarkCopyWith<$Res> {
  _$ContentfulTextMarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentfulTextMarksEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentfulTextMarkImplCopyWith<$Res>
    implements $ContentfulTextMarkCopyWith<$Res> {
  factory _$$ContentfulTextMarkImplCopyWith(_$ContentfulTextMarkImpl value,
          $Res Function(_$ContentfulTextMarkImpl) then) =
      __$$ContentfulTextMarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContentfulTextMarksEnum? type});
}

/// @nodoc
class __$$ContentfulTextMarkImplCopyWithImpl<$Res>
    extends _$ContentfulTextMarkCopyWithImpl<$Res, _$ContentfulTextMarkImpl>
    implements _$$ContentfulTextMarkImplCopyWith<$Res> {
  __$$ContentfulTextMarkImplCopyWithImpl(_$ContentfulTextMarkImpl _value,
      $Res Function(_$ContentfulTextMarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$ContentfulTextMarkImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentfulTextMarksEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentfulTextMarkImpl implements _ContentfulTextMark {
  const _$ContentfulTextMarkImpl({this.type});

  factory _$ContentfulTextMarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentfulTextMarkImplFromJson(json);

  @override
  final ContentfulTextMarksEnum? type;

  @override
  String toString() {
    return 'ContentfulTextMark(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentfulTextMarkImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentfulTextMarkImplCopyWith<_$ContentfulTextMarkImpl> get copyWith =>
      __$$ContentfulTextMarkImplCopyWithImpl<_$ContentfulTextMarkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentfulTextMarkImplToJson(
      this,
    );
  }
}

abstract class _ContentfulTextMark implements ContentfulTextMark {
  const factory _ContentfulTextMark({final ContentfulTextMarksEnum? type}) =
      _$ContentfulTextMarkImpl;

  factory _ContentfulTextMark.fromJson(Map<String, dynamic> json) =
      _$ContentfulTextMarkImpl.fromJson;

  @override
  ContentfulTextMarksEnum? get type;
  @override
  @JsonKey(ignore: true)
  _$$ContentfulTextMarkImplCopyWith<_$ContentfulTextMarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
