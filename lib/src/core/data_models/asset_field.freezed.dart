// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssetField _$AssetFieldFromJson(Map<String, dynamic> json) {
  return _AssetField.fromJson(json);
}

/// @nodoc
mixin _$AssetField {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  FileField? get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetFieldCopyWith<AssetField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetFieldCopyWith<$Res> {
  factory $AssetFieldCopyWith(
          AssetField value, $Res Function(AssetField) then) =
      _$AssetFieldCopyWithImpl<$Res, AssetField>;
  @useResult
  $Res call({String? title, String? description, FileField? file});

  $FileFieldCopyWith<$Res>? get file;
}

/// @nodoc
class _$AssetFieldCopyWithImpl<$Res, $Val extends AssetField>
    implements $AssetFieldCopyWith<$Res> {
  _$AssetFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileField?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FileFieldCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $FileFieldCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssetFieldImplCopyWith<$Res>
    implements $AssetFieldCopyWith<$Res> {
  factory _$$AssetFieldImplCopyWith(
          _$AssetFieldImpl value, $Res Function(_$AssetFieldImpl) then) =
      __$$AssetFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, FileField? file});

  @override
  $FileFieldCopyWith<$Res>? get file;
}

/// @nodoc
class __$$AssetFieldImplCopyWithImpl<$Res>
    extends _$AssetFieldCopyWithImpl<$Res, _$AssetFieldImpl>
    implements _$$AssetFieldImplCopyWith<$Res> {
  __$$AssetFieldImplCopyWithImpl(
      _$AssetFieldImpl _value, $Res Function(_$AssetFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? file = freezed,
  }) {
    return _then(_$AssetFieldImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileField?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetFieldImpl implements _AssetField {
  const _$AssetFieldImpl({this.title, this.description, this.file});

  factory _$AssetFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetFieldImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final FileField? file;

  @override
  String toString() {
    return 'AssetField(title: $title, description: $description, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetFieldImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetFieldImplCopyWith<_$AssetFieldImpl> get copyWith =>
      __$$AssetFieldImplCopyWithImpl<_$AssetFieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetFieldImplToJson(
      this,
    );
  }
}

abstract class _AssetField implements AssetField {
  const factory _AssetField(
      {final String? title,
      final String? description,
      final FileField? file}) = _$AssetFieldImpl;

  factory _AssetField.fromJson(Map<String, dynamic> json) =
      _$AssetFieldImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  FileField? get file;
  @override
  @JsonKey(ignore: true)
  _$$AssetFieldImplCopyWith<_$AssetFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
