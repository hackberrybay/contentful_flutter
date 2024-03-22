// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contentful_delivery_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentfulDeliveryDataModel<T> _$ContentfulDeliveryDataModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ContentfulDeliveryDataModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ContentfulDeliveryDataModel<T> {
  int get total => throw _privateConstructorUsedError;
  Sys? get sys => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;
  Includes? get includes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentfulDeliveryDataModelCopyWith<T, ContentfulDeliveryDataModel<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentfulDeliveryDataModelCopyWith<T, $Res> {
  factory $ContentfulDeliveryDataModelCopyWith(
          ContentfulDeliveryDataModel<T> value,
          $Res Function(ContentfulDeliveryDataModel<T>) then) =
      _$ContentfulDeliveryDataModelCopyWithImpl<T, $Res,
          ContentfulDeliveryDataModel<T>>;
  @useResult
  $Res call(
      {int total,
      Sys? sys,
      int? skip,
      int? limit,
      List<T> items,
      Includes? includes});

  $SysCopyWith<$Res>? get sys;
  $IncludesCopyWith<$Res>? get includes;
}

/// @nodoc
class _$ContentfulDeliveryDataModelCopyWithImpl<T, $Res,
        $Val extends ContentfulDeliveryDataModel<T>>
    implements $ContentfulDeliveryDataModelCopyWith<T, $Res> {
  _$ContentfulDeliveryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? sys = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
    Object? items = null,
    Object? includes = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      includes: freezed == includes
          ? _value.includes
          : includes // ignore: cast_nullable_to_non_nullable
              as Includes?,
    ) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $IncludesCopyWith<$Res>? get includes {
    if (_value.includes == null) {
      return null;
    }

    return $IncludesCopyWith<$Res>(_value.includes!, (value) {
      return _then(_value.copyWith(includes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentfulDeliveryDataModelImplCopyWith<T, $Res>
    implements $ContentfulDeliveryDataModelCopyWith<T, $Res> {
  factory _$$ContentfulDeliveryDataModelImplCopyWith(
          _$ContentfulDeliveryDataModelImpl<T> value,
          $Res Function(_$ContentfulDeliveryDataModelImpl<T>) then) =
      __$$ContentfulDeliveryDataModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int total,
      Sys? sys,
      int? skip,
      int? limit,
      List<T> items,
      Includes? includes});

  @override
  $SysCopyWith<$Res>? get sys;
  @override
  $IncludesCopyWith<$Res>? get includes;
}

/// @nodoc
class __$$ContentfulDeliveryDataModelImplCopyWithImpl<T, $Res>
    extends _$ContentfulDeliveryDataModelCopyWithImpl<T, $Res,
        _$ContentfulDeliveryDataModelImpl<T>>
    implements _$$ContentfulDeliveryDataModelImplCopyWith<T, $Res> {
  __$$ContentfulDeliveryDataModelImplCopyWithImpl(
      _$ContentfulDeliveryDataModelImpl<T> _value,
      $Res Function(_$ContentfulDeliveryDataModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? sys = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
    Object? items = null,
    Object? includes = freezed,
  }) {
    return _then(_$ContentfulDeliveryDataModelImpl<T>(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      includes: freezed == includes
          ? _value.includes
          : includes // ignore: cast_nullable_to_non_nullable
              as Includes?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ContentfulDeliveryDataModelImpl<T>
    implements _ContentfulDeliveryDataModel<T> {
  _$ContentfulDeliveryDataModelImpl(
      {this.total = 0,
      this.sys,
      this.skip,
      this.limit,
      final List<T> items = const [],
      this.includes})
      : _items = items;

  factory _$ContentfulDeliveryDataModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ContentfulDeliveryDataModelImplFromJson(json, fromJsonT);

  @override
  @JsonKey()
  final int total;
  @override
  final Sys? sys;
  @override
  final int? skip;
  @override
  final int? limit;
  final List<T> _items;
  @override
  @JsonKey()
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Includes? includes;

  @override
  String toString() {
    return 'ContentfulDeliveryDataModel<$T>(total: $total, sys: $sys, skip: $skip, limit: $limit, items: $items, includes: $includes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentfulDeliveryDataModelImpl<T> &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.includes, includes) ||
                other.includes == includes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, sys, skip, limit,
      const DeepCollectionEquality().hash(_items), includes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentfulDeliveryDataModelImplCopyWith<T,
          _$ContentfulDeliveryDataModelImpl<T>>
      get copyWith => __$$ContentfulDeliveryDataModelImplCopyWithImpl<T,
          _$ContentfulDeliveryDataModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ContentfulDeliveryDataModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ContentfulDeliveryDataModel<T>
    implements ContentfulDeliveryDataModel<T> {
  factory _ContentfulDeliveryDataModel(
      {final int total,
      final Sys? sys,
      final int? skip,
      final int? limit,
      final List<T> items,
      final Includes? includes}) = _$ContentfulDeliveryDataModelImpl<T>;

  factory _ContentfulDeliveryDataModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ContentfulDeliveryDataModelImpl<T>.fromJson;

  @override
  int get total;
  @override
  Sys? get sys;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  List<T> get items;
  @override
  Includes? get includes;
  @override
  @JsonKey(ignore: true)
  _$$ContentfulDeliveryDataModelImplCopyWith<T,
          _$ContentfulDeliveryDataModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
