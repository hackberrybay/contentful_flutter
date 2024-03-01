// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'includes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Includes _$IncludesFromJson(Map<String, dynamic> json) {
  return _Includes.fromJson(json);
}

/// @nodoc
mixin _$Includes {
// ignore: invalid_annotation_target
  @JsonKey(name: 'Asset')
  List<Asset>? get assetList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncludesCopyWith<Includes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncludesCopyWith<$Res> {
  factory $IncludesCopyWith(Includes value, $Res Function(Includes) then) =
      _$IncludesCopyWithImpl<$Res, Includes>;
  @useResult
  $Res call({@JsonKey(name: 'Asset') List<Asset>? assetList});
}

/// @nodoc
class _$IncludesCopyWithImpl<$Res, $Val extends Includes>
    implements $IncludesCopyWith<$Res> {
  _$IncludesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetList = freezed,
  }) {
    return _then(_value.copyWith(
      assetList: freezed == assetList
          ? _value.assetList
          : assetList // ignore: cast_nullable_to_non_nullable
              as List<Asset>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncludesImplCopyWith<$Res>
    implements $IncludesCopyWith<$Res> {
  factory _$$IncludesImplCopyWith(
          _$IncludesImpl value, $Res Function(_$IncludesImpl) then) =
      __$$IncludesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Asset') List<Asset>? assetList});
}

/// @nodoc
class __$$IncludesImplCopyWithImpl<$Res>
    extends _$IncludesCopyWithImpl<$Res, _$IncludesImpl>
    implements _$$IncludesImplCopyWith<$Res> {
  __$$IncludesImplCopyWithImpl(
      _$IncludesImpl _value, $Res Function(_$IncludesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetList = freezed,
  }) {
    return _then(_$IncludesImpl(
      assetList: freezed == assetList
          ? _value._assetList
          : assetList // ignore: cast_nullable_to_non_nullable
              as List<Asset>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncludesImpl implements _Includes {
  const _$IncludesImpl({@JsonKey(name: 'Asset') final List<Asset>? assetList})
      : _assetList = assetList;

  factory _$IncludesImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncludesImplFromJson(json);

// ignore: invalid_annotation_target
  final List<Asset>? _assetList;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'Asset')
  List<Asset>? get assetList {
    final value = _assetList;
    if (value == null) return null;
    if (_assetList is EqualUnmodifiableListView) return _assetList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Includes(assetList: $assetList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncludesImpl &&
            const DeepCollectionEquality()
                .equals(other._assetList, _assetList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assetList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncludesImplCopyWith<_$IncludesImpl> get copyWith =>
      __$$IncludesImplCopyWithImpl<_$IncludesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncludesImplToJson(
      this,
    );
  }
}

abstract class _Includes implements Includes {
  const factory _Includes(
      {@JsonKey(name: 'Asset') final List<Asset>? assetList}) = _$IncludesImpl;

  factory _Includes.fromJson(Map<String, dynamic> json) =
      _$IncludesImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'Asset')
  List<Asset>? get assetList;
  @override
  @JsonKey(ignore: true)
  _$$IncludesImplCopyWith<_$IncludesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
