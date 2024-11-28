// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_command_parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadCommandParameter {
  String get sourceFilePath => throw _privateConstructorUsedError;
  String get destFilePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;
  bool get isUpsertEnabled => throw _privateConstructorUsedError;

  /// Create a copy of UploadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadCommandParameterCopyWith<UploadCommandParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadCommandParameterCopyWith<$Res> {
  factory $UploadCommandParameterCopyWith(UploadCommandParameter value,
          $Res Function(UploadCommandParameter) then) =
      _$UploadCommandParameterCopyWithImpl<$Res, UploadCommandParameter>;
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      bool isUpsertEnabled});
}

/// @nodoc
class _$UploadCommandParameterCopyWithImpl<$Res,
        $Val extends UploadCommandParameter>
    implements $UploadCommandParameterCopyWith<$Res> {
  _$UploadCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? isUpsertEnabled = null,
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
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      isUpsertEnabled: null == isUpsertEnabled
          ? _value.isUpsertEnabled
          : isUpsertEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadCommandParameterImplCopyWith<$Res>
    implements $UploadCommandParameterCopyWith<$Res> {
  factory _$$UploadCommandParameterImplCopyWith(
          _$UploadCommandParameterImpl value,
          $Res Function(_$UploadCommandParameterImpl) then) =
      __$$UploadCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      bool isUpsertEnabled});
}

/// @nodoc
class __$$UploadCommandParameterImplCopyWithImpl<$Res>
    extends _$UploadCommandParameterCopyWithImpl<$Res,
        _$UploadCommandParameterImpl>
    implements _$$UploadCommandParameterImplCopyWith<$Res> {
  __$$UploadCommandParameterImplCopyWithImpl(
      _$UploadCommandParameterImpl _value,
      $Res Function(_$UploadCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? isUpsertEnabled = null,
  }) {
    return _then(_$UploadCommandParameterImpl(
      sourceFilePath: null == sourceFilePath
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      destFilePath: null == destFilePath
          ? _value.destFilePath
          : destFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      isUpsertEnabled: null == isUpsertEnabled
          ? _value.isUpsertEnabled
          : isUpsertEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UploadCommandParameterImpl extends _UploadCommandParameter {
  const _$UploadCommandParameterImpl(
      {this.sourceFilePath = '',
      this.destFilePath = '',
      this.bucketKind = BucketKind.a,
      this.isUpsertEnabled = false})
      : super._();

  @override
  @JsonKey()
  final String sourceFilePath;
  @override
  @JsonKey()
  final String destFilePath;
  @override
  @JsonKey()
  final BucketKind bucketKind;
  @override
  @JsonKey()
  final bool isUpsertEnabled;

  @override
  String toString() {
    return 'UploadCommandParameter(sourceFilePath: $sourceFilePath, destFilePath: $destFilePath, bucketKind: $bucketKind, isUpsertEnabled: $isUpsertEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadCommandParameterImpl &&
            (identical(other.sourceFilePath, sourceFilePath) ||
                other.sourceFilePath == sourceFilePath) &&
            (identical(other.destFilePath, destFilePath) ||
                other.destFilePath == destFilePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.isUpsertEnabled, isUpsertEnabled) ||
                other.isUpsertEnabled == isUpsertEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sourceFilePath, destFilePath, bucketKind, isUpsertEnabled);

  /// Create a copy of UploadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadCommandParameterImplCopyWith<_$UploadCommandParameterImpl>
      get copyWith => __$$UploadCommandParameterImplCopyWithImpl<
          _$UploadCommandParameterImpl>(this, _$identity);
}

abstract class _UploadCommandParameter extends UploadCommandParameter {
  const factory _UploadCommandParameter(
      {final String sourceFilePath,
      final String destFilePath,
      final BucketKind bucketKind,
      final bool isUpsertEnabled}) = _$UploadCommandParameterImpl;
  const _UploadCommandParameter._() : super._();

  @override
  String get sourceFilePath;
  @override
  String get destFilePath;
  @override
  BucketKind get bucketKind;
  @override
  bool get isUpsertEnabled;

  /// Create a copy of UploadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadCommandParameterImplCopyWith<_$UploadCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateCommandParameter {
  String get sourceFilePath => throw _privateConstructorUsedError;
  String get destFilePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;
  bool get isUpsertEnabled => throw _privateConstructorUsedError;

  /// Create a copy of UpdateCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateCommandParameterCopyWith<UpdateCommandParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCommandParameterCopyWith<$Res> {
  factory $UpdateCommandParameterCopyWith(UpdateCommandParameter value,
          $Res Function(UpdateCommandParameter) then) =
      _$UpdateCommandParameterCopyWithImpl<$Res, UpdateCommandParameter>;
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      bool isUpsertEnabled});
}

/// @nodoc
class _$UpdateCommandParameterCopyWithImpl<$Res,
        $Val extends UpdateCommandParameter>
    implements $UpdateCommandParameterCopyWith<$Res> {
  _$UpdateCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? isUpsertEnabled = null,
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
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      isUpsertEnabled: null == isUpsertEnabled
          ? _value.isUpsertEnabled
          : isUpsertEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCommandParameterImplCopyWith<$Res>
    implements $UpdateCommandParameterCopyWith<$Res> {
  factory _$$UpdateCommandParameterImplCopyWith(
          _$UpdateCommandParameterImpl value,
          $Res Function(_$UpdateCommandParameterImpl) then) =
      __$$UpdateCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      bool isUpsertEnabled});
}

/// @nodoc
class __$$UpdateCommandParameterImplCopyWithImpl<$Res>
    extends _$UpdateCommandParameterCopyWithImpl<$Res,
        _$UpdateCommandParameterImpl>
    implements _$$UpdateCommandParameterImplCopyWith<$Res> {
  __$$UpdateCommandParameterImplCopyWithImpl(
      _$UpdateCommandParameterImpl _value,
      $Res Function(_$UpdateCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? isUpsertEnabled = null,
  }) {
    return _then(_$UpdateCommandParameterImpl(
      sourceFilePath: null == sourceFilePath
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      destFilePath: null == destFilePath
          ? _value.destFilePath
          : destFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      isUpsertEnabled: null == isUpsertEnabled
          ? _value.isUpsertEnabled
          : isUpsertEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateCommandParameterImpl extends _UpdateCommandParameter {
  const _$UpdateCommandParameterImpl(
      {this.sourceFilePath = '',
      this.destFilePath = '',
      this.bucketKind = BucketKind.a,
      this.isUpsertEnabled = false})
      : super._();

  @override
  @JsonKey()
  final String sourceFilePath;
  @override
  @JsonKey()
  final String destFilePath;
  @override
  @JsonKey()
  final BucketKind bucketKind;
  @override
  @JsonKey()
  final bool isUpsertEnabled;

  @override
  String toString() {
    return 'UpdateCommandParameter(sourceFilePath: $sourceFilePath, destFilePath: $destFilePath, bucketKind: $bucketKind, isUpsertEnabled: $isUpsertEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCommandParameterImpl &&
            (identical(other.sourceFilePath, sourceFilePath) ||
                other.sourceFilePath == sourceFilePath) &&
            (identical(other.destFilePath, destFilePath) ||
                other.destFilePath == destFilePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.isUpsertEnabled, isUpsertEnabled) ||
                other.isUpsertEnabled == isUpsertEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sourceFilePath, destFilePath, bucketKind, isUpsertEnabled);

  /// Create a copy of UpdateCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCommandParameterImplCopyWith<_$UpdateCommandParameterImpl>
      get copyWith => __$$UpdateCommandParameterImplCopyWithImpl<
          _$UpdateCommandParameterImpl>(this, _$identity);
}

abstract class _UpdateCommandParameter extends UpdateCommandParameter {
  const factory _UpdateCommandParameter(
      {final String sourceFilePath,
      final String destFilePath,
      final BucketKind bucketKind,
      final bool isUpsertEnabled}) = _$UpdateCommandParameterImpl;
  const _UpdateCommandParameter._() : super._();

  @override
  String get sourceFilePath;
  @override
  String get destFilePath;
  @override
  BucketKind get bucketKind;
  @override
  bool get isUpsertEnabled;

  /// Create a copy of UpdateCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCommandParameterImplCopyWith<_$UpdateCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoveCommandParameter {
  String get sourceFilePath => throw _privateConstructorUsedError;
  String get destFilePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;
  bool get isUpsertEnabled => throw _privateConstructorUsedError;

  /// Create a copy of MoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoveCommandParameterCopyWith<MoveCommandParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveCommandParameterCopyWith<$Res> {
  factory $MoveCommandParameterCopyWith(MoveCommandParameter value,
          $Res Function(MoveCommandParameter) then) =
      _$MoveCommandParameterCopyWithImpl<$Res, MoveCommandParameter>;
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      bool isUpsertEnabled});
}

/// @nodoc
class _$MoveCommandParameterCopyWithImpl<$Res,
        $Val extends MoveCommandParameter>
    implements $MoveCommandParameterCopyWith<$Res> {
  _$MoveCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? isUpsertEnabled = null,
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
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      isUpsertEnabled: null == isUpsertEnabled
          ? _value.isUpsertEnabled
          : isUpsertEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoveCommandParameterImplCopyWith<$Res>
    implements $MoveCommandParameterCopyWith<$Res> {
  factory _$$MoveCommandParameterImplCopyWith(_$MoveCommandParameterImpl value,
          $Res Function(_$MoveCommandParameterImpl) then) =
      __$$MoveCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      bool isUpsertEnabled});
}

/// @nodoc
class __$$MoveCommandParameterImplCopyWithImpl<$Res>
    extends _$MoveCommandParameterCopyWithImpl<$Res, _$MoveCommandParameterImpl>
    implements _$$MoveCommandParameterImplCopyWith<$Res> {
  __$$MoveCommandParameterImplCopyWithImpl(_$MoveCommandParameterImpl _value,
      $Res Function(_$MoveCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? isUpsertEnabled = null,
  }) {
    return _then(_$MoveCommandParameterImpl(
      sourceFilePath: null == sourceFilePath
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      destFilePath: null == destFilePath
          ? _value.destFilePath
          : destFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      isUpsertEnabled: null == isUpsertEnabled
          ? _value.isUpsertEnabled
          : isUpsertEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MoveCommandParameterImpl extends _MoveCommandParameter {
  const _$MoveCommandParameterImpl(
      {this.sourceFilePath = '',
      this.destFilePath = '',
      this.bucketKind = BucketKind.a,
      this.isUpsertEnabled = false})
      : super._();

  @override
  @JsonKey()
  final String sourceFilePath;
  @override
  @JsonKey()
  final String destFilePath;
  @override
  @JsonKey()
  final BucketKind bucketKind;
  @override
  @JsonKey()
  final bool isUpsertEnabled;

  @override
  String toString() {
    return 'MoveCommandParameter(sourceFilePath: $sourceFilePath, destFilePath: $destFilePath, bucketKind: $bucketKind, isUpsertEnabled: $isUpsertEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveCommandParameterImpl &&
            (identical(other.sourceFilePath, sourceFilePath) ||
                other.sourceFilePath == sourceFilePath) &&
            (identical(other.destFilePath, destFilePath) ||
                other.destFilePath == destFilePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.isUpsertEnabled, isUpsertEnabled) ||
                other.isUpsertEnabled == isUpsertEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sourceFilePath, destFilePath, bucketKind, isUpsertEnabled);

  /// Create a copy of MoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveCommandParameterImplCopyWith<_$MoveCommandParameterImpl>
      get copyWith =>
          __$$MoveCommandParameterImplCopyWithImpl<_$MoveCommandParameterImpl>(
              this, _$identity);
}

abstract class _MoveCommandParameter extends MoveCommandParameter {
  const factory _MoveCommandParameter(
      {final String sourceFilePath,
      final String destFilePath,
      final BucketKind bucketKind,
      final bool isUpsertEnabled}) = _$MoveCommandParameterImpl;
  const _MoveCommandParameter._() : super._();

  @override
  String get sourceFilePath;
  @override
  String get destFilePath;
  @override
  BucketKind get bucketKind;
  @override
  bool get isUpsertEnabled;

  /// Create a copy of MoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveCommandParameterImplCopyWith<_$MoveCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
