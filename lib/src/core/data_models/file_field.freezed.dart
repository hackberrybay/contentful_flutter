// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileField _$FileFieldFromJson(Map<String, dynamic> json) {
  return _FileField.fromJson(json);
}

/// @nodoc
mixin _$FileField {
  String? get url => throw _privateConstructorUsedError;
  Details? get details => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileFieldCopyWith<FileField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileFieldCopyWith<$Res> {
  factory $FileFieldCopyWith(FileField value, $Res Function(FileField) then) =
      _$FileFieldCopyWithImpl<$Res, FileField>;
  @useResult
  $Res call(
      {String? url, Details? details, String? fileName, String? contentType});

  $DetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$FileFieldCopyWithImpl<$Res, $Val extends FileField>
    implements $FileFieldCopyWith<$Res> {
  _$FileFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? details = freezed,
    Object? fileName = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FileFieldImplCopyWith<$Res>
    implements $FileFieldCopyWith<$Res> {
  factory _$$FileFieldImplCopyWith(
          _$FileFieldImpl value, $Res Function(_$FileFieldImpl) then) =
      __$$FileFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url, Details? details, String? fileName, String? contentType});

  @override
  $DetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$FileFieldImplCopyWithImpl<$Res>
    extends _$FileFieldCopyWithImpl<$Res, _$FileFieldImpl>
    implements _$$FileFieldImplCopyWith<$Res> {
  __$$FileFieldImplCopyWithImpl(
      _$FileFieldImpl _value, $Res Function(_$FileFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? details = freezed,
    Object? fileName = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_$FileFieldImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileFieldImpl implements _FileField {
  const _$FileFieldImpl(
      {this.url, this.details, this.fileName, this.contentType});

  factory _$FileFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileFieldImplFromJson(json);

  @override
  final String? url;
  @override
  final Details? details;
  @override
  final String? fileName;
  @override
  final String? contentType;

  @override
  String toString() {
    return 'FileField(url: $url, details: $details, fileName: $fileName, contentType: $contentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileFieldImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, details, fileName, contentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileFieldImplCopyWith<_$FileFieldImpl> get copyWith =>
      __$$FileFieldImplCopyWithImpl<_$FileFieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileFieldImplToJson(
      this,
    );
  }
}

abstract class _FileField implements FileField {
  const factory _FileField(
      {final String? url,
      final Details? details,
      final String? fileName,
      final String? contentType}) = _$FileFieldImpl;

  factory _FileField.fromJson(Map<String, dynamic> json) =
      _$FileFieldImpl.fromJson;

  @override
  String? get url;
  @override
  Details? get details;
  @override
  String? get fileName;
  @override
  String? get contentType;
  @override
  @JsonKey(ignore: true)
  _$$FileFieldImplCopyWith<_$FileFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
