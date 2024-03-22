// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExampleDataModel _$ExampleDataModelFromJson(Map<String, dynamic> json) {
  return _ExampleDataModel.fromJson(json);
}

/// @nodoc
mixin _$ExampleDataModel {
  Document get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleDataModelCopyWith<ExampleDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleDataModelCopyWith<$Res> {
  factory $ExampleDataModelCopyWith(
          ExampleDataModel value, $Res Function(ExampleDataModel) then) =
      _$ExampleDataModelCopyWithImpl<$Res, ExampleDataModel>;
  @useResult
  $Res call({Document body});

  $DocumentCopyWith<$Res> get body;
}

/// @nodoc
class _$ExampleDataModelCopyWithImpl<$Res, $Val extends ExampleDataModel>
    implements $ExampleDataModelCopyWith<$Res> {
  _$ExampleDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Document,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get body {
    return $DocumentCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExampleDataModelImplCopyWith<$Res>
    implements $ExampleDataModelCopyWith<$Res> {
  factory _$$ExampleDataModelImplCopyWith(_$ExampleDataModelImpl value,
          $Res Function(_$ExampleDataModelImpl) then) =
      __$$ExampleDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Document body});

  @override
  $DocumentCopyWith<$Res> get body;
}

/// @nodoc
class __$$ExampleDataModelImplCopyWithImpl<$Res>
    extends _$ExampleDataModelCopyWithImpl<$Res, _$ExampleDataModelImpl>
    implements _$$ExampleDataModelImplCopyWith<$Res> {
  __$$ExampleDataModelImplCopyWithImpl(_$ExampleDataModelImpl _value,
      $Res Function(_$ExampleDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$ExampleDataModelImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleDataModelImpl implements _ExampleDataModel {
  const _$ExampleDataModelImpl({required this.body});

  factory _$ExampleDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleDataModelImplFromJson(json);

  @override
  final Document body;

  @override
  String toString() {
    return 'ExampleDataModel(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleDataModelImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleDataModelImplCopyWith<_$ExampleDataModelImpl> get copyWith =>
      __$$ExampleDataModelImplCopyWithImpl<_$ExampleDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleDataModelImplToJson(
      this,
    );
  }
}

abstract class _ExampleDataModel implements ExampleDataModel {
  const factory _ExampleDataModel({required final Document body}) =
      _$ExampleDataModelImpl;

  factory _ExampleDataModel.fromJson(Map<String, dynamic> json) =
      _$ExampleDataModelImpl.fromJson;

  @override
  Document get body;
  @override
  @JsonKey(ignore: true)
  _$$ExampleDataModelImplCopyWith<_$ExampleDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
