// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_command_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadCommandParameterV2 {
  String get sourceFilePath => throw _privateConstructorUsedError;
  String get destFilePath => throw _privateConstructorUsedError;

  /// Create a copy of UploadCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadCommandParameterV2CopyWith<UploadCommandParameterV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadCommandParameterV2CopyWith<$Res> {
  factory $UploadCommandParameterV2CopyWith(UploadCommandParameterV2 value,
          $Res Function(UploadCommandParameterV2) then) =
      _$UploadCommandParameterV2CopyWithImpl<$Res, UploadCommandParameterV2>;
  @useResult
  $Res call({String sourceFilePath, String destFilePath});
}

/// @nodoc
class _$UploadCommandParameterV2CopyWithImpl<$Res,
        $Val extends UploadCommandParameterV2>
    implements $UploadCommandParameterV2CopyWith<$Res> {
  _$UploadCommandParameterV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
  }) {
    return _then(_value.copyWith(
      sourceFilePath: null == sourceFilePath
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      destFilePath: null == destFilePath
          ? _value.destFilePath
          : destFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadCommandParameterV2ImplCopyWith<$Res>
    implements $UploadCommandParameterV2CopyWith<$Res> {
  factory _$$UploadCommandParameterV2ImplCopyWith(
          _$UploadCommandParameterV2Impl value,
          $Res Function(_$UploadCommandParameterV2Impl) then) =
      __$$UploadCommandParameterV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sourceFilePath, String destFilePath});
}

/// @nodoc
class __$$UploadCommandParameterV2ImplCopyWithImpl<$Res>
    extends _$UploadCommandParameterV2CopyWithImpl<$Res,
        _$UploadCommandParameterV2Impl>
    implements _$$UploadCommandParameterV2ImplCopyWith<$Res> {
  __$$UploadCommandParameterV2ImplCopyWithImpl(
      _$UploadCommandParameterV2Impl _value,
      $Res Function(_$UploadCommandParameterV2Impl) _then)
      : super(_value, _then);

  /// Create a copy of UploadCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
  }) {
    return _then(_$UploadCommandParameterV2Impl(
      sourceFilePath: null == sourceFilePath
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      destFilePath: null == destFilePath
          ? _value.destFilePath
          : destFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadCommandParameterV2Impl extends _UploadCommandParameterV2 {
  const _$UploadCommandParameterV2Impl(
      {required this.sourceFilePath, required this.destFilePath})
      : super._();

  @override
  final String sourceFilePath;
  @override
  final String destFilePath;

  @override
  String toString() {
    return 'UploadCommandParameterV2(sourceFilePath: $sourceFilePath, destFilePath: $destFilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadCommandParameterV2Impl &&
            (identical(other.sourceFilePath, sourceFilePath) ||
                other.sourceFilePath == sourceFilePath) &&
            (identical(other.destFilePath, destFilePath) ||
                other.destFilePath == destFilePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sourceFilePath, destFilePath);

  /// Create a copy of UploadCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadCommandParameterV2ImplCopyWith<_$UploadCommandParameterV2Impl>
      get copyWith => __$$UploadCommandParameterV2ImplCopyWithImpl<
          _$UploadCommandParameterV2Impl>(this, _$identity);
}

abstract class _UploadCommandParameterV2 extends UploadCommandParameterV2 {
  const factory _UploadCommandParameterV2(
      {required final String sourceFilePath,
      required final String destFilePath}) = _$UploadCommandParameterV2Impl;
  const _UploadCommandParameterV2._() : super._();

  @override
  String get sourceFilePath;
  @override
  String get destFilePath;

  /// Create a copy of UploadCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadCommandParameterV2ImplCopyWith<_$UploadCommandParameterV2Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateCommandParameterV2 {
  String get sourceFilePath => throw _privateConstructorUsedError;
  String get destFilePath => throw _privateConstructorUsedError;

  /// Create a copy of UpdateCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateCommandParameterV2CopyWith<UpdateCommandParameterV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCommandParameterV2CopyWith<$Res> {
  factory $UpdateCommandParameterV2CopyWith(UpdateCommandParameterV2 value,
          $Res Function(UpdateCommandParameterV2) then) =
      _$UpdateCommandParameterV2CopyWithImpl<$Res, UpdateCommandParameterV2>;
  @useResult
  $Res call({String sourceFilePath, String destFilePath});
}

/// @nodoc
class _$UpdateCommandParameterV2CopyWithImpl<$Res,
        $Val extends UpdateCommandParameterV2>
    implements $UpdateCommandParameterV2CopyWith<$Res> {
  _$UpdateCommandParameterV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
  }) {
    return _then(_value.copyWith(
      sourceFilePath: null == sourceFilePath
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      destFilePath: null == destFilePath
          ? _value.destFilePath
          : destFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCommandParameterV2ImplCopyWith<$Res>
    implements $UpdateCommandParameterV2CopyWith<$Res> {
  factory _$$UpdateCommandParameterV2ImplCopyWith(
          _$UpdateCommandParameterV2Impl value,
          $Res Function(_$UpdateCommandParameterV2Impl) then) =
      __$$UpdateCommandParameterV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sourceFilePath, String destFilePath});
}

/// @nodoc
class __$$UpdateCommandParameterV2ImplCopyWithImpl<$Res>
    extends _$UpdateCommandParameterV2CopyWithImpl<$Res,
        _$UpdateCommandParameterV2Impl>
    implements _$$UpdateCommandParameterV2ImplCopyWith<$Res> {
  __$$UpdateCommandParameterV2ImplCopyWithImpl(
      _$UpdateCommandParameterV2Impl _value,
      $Res Function(_$UpdateCommandParameterV2Impl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
  }) {
    return _then(_$UpdateCommandParameterV2Impl(
      sourceFilePath: null == sourceFilePath
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      destFilePath: null == destFilePath
          ? _value.destFilePath
          : destFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCommandParameterV2Impl extends _UpdateCommandParameterV2 {
  const _$UpdateCommandParameterV2Impl(
      {required this.sourceFilePath, required this.destFilePath})
      : super._();

  @override
  final String sourceFilePath;
  @override
  final String destFilePath;

  @override
  String toString() {
    return 'UpdateCommandParameterV2(sourceFilePath: $sourceFilePath, destFilePath: $destFilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCommandParameterV2Impl &&
            (identical(other.sourceFilePath, sourceFilePath) ||
                other.sourceFilePath == sourceFilePath) &&
            (identical(other.destFilePath, destFilePath) ||
                other.destFilePath == destFilePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sourceFilePath, destFilePath);

  /// Create a copy of UpdateCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCommandParameterV2ImplCopyWith<_$UpdateCommandParameterV2Impl>
      get copyWith => __$$UpdateCommandParameterV2ImplCopyWithImpl<
          _$UpdateCommandParameterV2Impl>(this, _$identity);
}

abstract class _UpdateCommandParameterV2 extends UpdateCommandParameterV2 {
  const factory _UpdateCommandParameterV2(
      {required final String sourceFilePath,
      required final String destFilePath}) = _$UpdateCommandParameterV2Impl;
  const _UpdateCommandParameterV2._() : super._();

  @override
  String get sourceFilePath;
  @override
  String get destFilePath;

  /// Create a copy of UpdateCommandParameterV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCommandParameterV2ImplCopyWith<_$UpdateCommandParameterV2Impl>
      get copyWith => throw _privateConstructorUsedError;
}
