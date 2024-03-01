// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  ContentfulContentNodeType get nodeType => throw _privateConstructorUsedError;
  ContentfulContentNodeType? get parentNodeType =>
      throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  List<Content>? get subContent => throw _privateConstructorUsedError;
  List<ContentfulTextMark>? get marks => throw _privateConstructorUsedError;

  /// value will be not null if we have a text
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call(
      {ContentfulContentNodeType nodeType,
      ContentfulContentNodeType? parentNodeType,
      Data? data,
      @JsonKey(name: 'content') List<Content>? subContent,
      List<ContentfulTextMark>? marks,
      String? value});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeType = null,
    Object? parentNodeType = freezed,
    Object? data = freezed,
    Object? subContent = freezed,
    Object? marks = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      nodeType: null == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as ContentfulContentNodeType,
      parentNodeType: freezed == parentNodeType
          ? _value.parentNodeType
          : parentNodeType // ignore: cast_nullable_to_non_nullable
              as ContentfulContentNodeType?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      subContent: freezed == subContent
          ? _value.subContent
          : subContent // ignore: cast_nullable_to_non_nullable
              as List<Content>?,
      marks: freezed == marks
          ? _value.marks
          : marks // ignore: cast_nullable_to_non_nullable
              as List<ContentfulTextMark>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ContentfulContentNodeType nodeType,
      ContentfulContentNodeType? parentNodeType,
      Data? data,
      @JsonKey(name: 'content') List<Content>? subContent,
      List<ContentfulTextMark>? marks,
      String? value});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeType = null,
    Object? parentNodeType = freezed,
    Object? data = freezed,
    Object? subContent = freezed,
    Object? marks = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ContentImpl(
      nodeType: null == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as ContentfulContentNodeType,
      parentNodeType: freezed == parentNodeType
          ? _value.parentNodeType
          : parentNodeType // ignore: cast_nullable_to_non_nullable
              as ContentfulContentNodeType?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      subContent: freezed == subContent
          ? _value._subContent
          : subContent // ignore: cast_nullable_to_non_nullable
              as List<Content>?,
      marks: freezed == marks
          ? _value._marks
          : marks // ignore: cast_nullable_to_non_nullable
              as List<ContentfulTextMark>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentImpl implements _Content {
  const _$ContentImpl(
      {required this.nodeType,
      this.parentNodeType,
      this.data,
      @JsonKey(name: 'content') final List<Content>? subContent,
      final List<ContentfulTextMark>? marks,
      this.value})
      : _subContent = subContent,
        _marks = marks;

  factory _$ContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentImplFromJson(json);

  @override
  final ContentfulContentNodeType nodeType;
  @override
  final ContentfulContentNodeType? parentNodeType;
  @override
  final Data? data;
  final List<Content>? _subContent;
  @override
  @JsonKey(name: 'content')
  List<Content>? get subContent {
    final value = _subContent;
    if (value == null) return null;
    if (_subContent is EqualUnmodifiableListView) return _subContent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContentfulTextMark>? _marks;
  @override
  List<ContentfulTextMark>? get marks {
    final value = _marks;
    if (value == null) return null;
    if (_marks is EqualUnmodifiableListView) return _marks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// value will be not null if we have a text
  @override
  final String? value;

  @override
  String toString() {
    return 'Content(nodeType: $nodeType, parentNodeType: $parentNodeType, data: $data, subContent: $subContent, marks: $marks, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType) &&
            (identical(other.parentNodeType, parentNodeType) ||
                other.parentNodeType == parentNodeType) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._subContent, _subContent) &&
            const DeepCollectionEquality().equals(other._marks, _marks) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nodeType,
      parentNodeType,
      data,
      const DeepCollectionEquality().hash(_subContent),
      const DeepCollectionEquality().hash(_marks),
      value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentImplToJson(
      this,
    );
  }
}

abstract class _Content implements Content {
  const factory _Content(
      {required final ContentfulContentNodeType nodeType,
      final ContentfulContentNodeType? parentNodeType,
      final Data? data,
      @JsonKey(name: 'content') final List<Content>? subContent,
      final List<ContentfulTextMark>? marks,
      final String? value}) = _$ContentImpl;

  factory _Content.fromJson(Map<String, dynamic> json) = _$ContentImpl.fromJson;

  @override
  ContentfulContentNodeType get nodeType;
  @override
  ContentfulContentNodeType? get parentNodeType;
  @override
  Data? get data;
  @override
  @JsonKey(name: 'content')
  List<Content>? get subContent;
  @override
  List<ContentfulTextMark>? get marks;
  @override

  /// value will be not null if we have a text
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
