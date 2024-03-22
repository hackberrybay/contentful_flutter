// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Entry<T> _$EntryFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _Entry<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$Entry<T> {
  T get fields => throw _privateConstructorUsedError;
  Metadata? get metadata => throw _privateConstructorUsedError;
  Sys? get sys => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryCopyWith<T, Entry<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCopyWith<T, $Res> {
  factory $EntryCopyWith(Entry<T> value, $Res Function(Entry<T>) then) =
      _$EntryCopyWithImpl<T, $Res, Entry<T>>;
  @useResult
  $Res call({T fields, Metadata? metadata, Sys? sys});

  $MetadataCopyWith<$Res>? get metadata;
  $SysCopyWith<$Res>? get sys;
}

/// @nodoc
class _$EntryCopyWithImpl<T, $Res, $Val extends Entry<T>>
    implements $EntryCopyWith<T, $Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
    Object? metadata = freezed,
    Object? sys = freezed,
  }) {
    return _then(_value.copyWith(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $SysCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EntryImplCopyWith<T, $Res>
    implements $EntryCopyWith<T, $Res> {
  factory _$$EntryImplCopyWith(
          _$EntryImpl<T> value, $Res Function(_$EntryImpl<T>) then) =
      __$$EntryImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T fields, Metadata? metadata, Sys? sys});

  @override
  $MetadataCopyWith<$Res>? get metadata;
  @override
  $SysCopyWith<$Res>? get sys;
}

/// @nodoc
class __$$EntryImplCopyWithImpl<T, $Res>
    extends _$EntryCopyWithImpl<T, $Res, _$EntryImpl<T>>
    implements _$$EntryImplCopyWith<T, $Res> {
  __$$EntryImplCopyWithImpl(
      _$EntryImpl<T> _value, $Res Function(_$EntryImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
    Object? metadata = freezed,
    Object? sys = freezed,
  }) {
    return _then(_$EntryImpl<T>(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$EntryImpl<T> implements _Entry<T> {
  const _$EntryImpl({required this.fields, this.metadata, this.sys});

  factory _$EntryImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$EntryImplFromJson(json, fromJsonT);

  @override
  final T fields;
  @override
  final Metadata? metadata;
  @override
  final Sys? sys;

  @override
  String toString() {
    return 'Entry<$T>(fields: $fields, metadata: $metadata, sys: $sys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryImpl<T> &&
            const DeepCollectionEquality().equals(other.fields, fields) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.sys, sys) || other.sys == sys));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fields), metadata, sys);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryImplCopyWith<T, _$EntryImpl<T>> get copyWith =>
      __$$EntryImplCopyWithImpl<T, _$EntryImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$EntryImplToJson<T>(this, toJsonT);
  }
}

abstract class _Entry<T> implements Entry<T> {
  const factory _Entry(
      {required final T fields,
      final Metadata? metadata,
      final Sys? sys}) = _$EntryImpl<T>;

  factory _Entry.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$EntryImpl<T>.fromJson;

  @override
  T get fields;
  @override
  Metadata? get metadata;
  @override
  Sys? get sys;
  @override
  @JsonKey(ignore: true)
  _$$EntryImplCopyWith<T, _$EntryImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
