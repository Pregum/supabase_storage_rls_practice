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
  String get oldFilePath => throw _privateConstructorUsedError;
  String get newFilePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;
  BucketKind? get newBucketKind => throw _privateConstructorUsedError;

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
      {String oldFilePath,
      String newFilePath,
      BucketKind bucketKind,
      BucketKind? newBucketKind});
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
    Object? oldFilePath = null,
    Object? newFilePath = null,
    Object? bucketKind = null,
    Object? newBucketKind = freezed,
  }) {
    return _then(_value.copyWith(
      oldFilePath: null == oldFilePath
          ? _value.oldFilePath
          : oldFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      newFilePath: null == newFilePath
          ? _value.newFilePath
          : newFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      newBucketKind: freezed == newBucketKind
          ? _value.newBucketKind
          : newBucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind?,
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
      {String oldFilePath,
      String newFilePath,
      BucketKind bucketKind,
      BucketKind? newBucketKind});
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
    Object? oldFilePath = null,
    Object? newFilePath = null,
    Object? bucketKind = null,
    Object? newBucketKind = freezed,
  }) {
    return _then(_$MoveCommandParameterImpl(
      oldFilePath: null == oldFilePath
          ? _value.oldFilePath
          : oldFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      newFilePath: null == newFilePath
          ? _value.newFilePath
          : newFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      newBucketKind: freezed == newBucketKind
          ? _value.newBucketKind
          : newBucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind?,
    ));
  }
}

/// @nodoc

class _$MoveCommandParameterImpl extends _MoveCommandParameter {
  const _$MoveCommandParameterImpl(
      {this.oldFilePath = '',
      this.newFilePath = '',
      this.bucketKind = BucketKind.a,
      this.newBucketKind})
      : super._();

  @override
  @JsonKey()
  final String oldFilePath;
  @override
  @JsonKey()
  final String newFilePath;
  @override
  @JsonKey()
  final BucketKind bucketKind;
  @override
  final BucketKind? newBucketKind;

  @override
  String toString() {
    return 'MoveCommandParameter(oldFilePath: $oldFilePath, newFilePath: $newFilePath, bucketKind: $bucketKind, newBucketKind: $newBucketKind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveCommandParameterImpl &&
            (identical(other.oldFilePath, oldFilePath) ||
                other.oldFilePath == oldFilePath) &&
            (identical(other.newFilePath, newFilePath) ||
                other.newFilePath == newFilePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.newBucketKind, newBucketKind) ||
                other.newBucketKind == newBucketKind));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, oldFilePath, newFilePath, bucketKind, newBucketKind);

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
      {final String oldFilePath,
      final String newFilePath,
      final BucketKind bucketKind,
      final BucketKind? newBucketKind}) = _$MoveCommandParameterImpl;
  const _MoveCommandParameter._() : super._();

  @override
  String get oldFilePath;
  @override
  String get newFilePath;
  @override
  BucketKind get bucketKind;
  @override
  BucketKind? get newBucketKind;

  /// Create a copy of MoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveCommandParameterImplCopyWith<_$MoveCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadCommandParameter {
  String get filePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;

  /// Create a copy of DownloadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadCommandParameterCopyWith<DownloadCommandParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadCommandParameterCopyWith<$Res> {
  factory $DownloadCommandParameterCopyWith(DownloadCommandParameter value,
          $Res Function(DownloadCommandParameter) then) =
      _$DownloadCommandParameterCopyWithImpl<$Res, DownloadCommandParameter>;
  @useResult
  $Res call({String filePath, BucketKind bucketKind});
}

/// @nodoc
class _$DownloadCommandParameterCopyWithImpl<$Res,
        $Val extends DownloadCommandParameter>
    implements $DownloadCommandParameterCopyWith<$Res> {
  _$DownloadCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? bucketKind = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadCommandParameterImplCopyWith<$Res>
    implements $DownloadCommandParameterCopyWith<$Res> {
  factory _$$DownloadCommandParameterImplCopyWith(
          _$DownloadCommandParameterImpl value,
          $Res Function(_$DownloadCommandParameterImpl) then) =
      __$$DownloadCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filePath, BucketKind bucketKind});
}

/// @nodoc
class __$$DownloadCommandParameterImplCopyWithImpl<$Res>
    extends _$DownloadCommandParameterCopyWithImpl<$Res,
        _$DownloadCommandParameterImpl>
    implements _$$DownloadCommandParameterImplCopyWith<$Res> {
  __$$DownloadCommandParameterImplCopyWithImpl(
      _$DownloadCommandParameterImpl _value,
      $Res Function(_$DownloadCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? bucketKind = null,
  }) {
    return _then(_$DownloadCommandParameterImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
    ));
  }
}

/// @nodoc

class _$DownloadCommandParameterImpl extends _DownloadCommandParameter {
  const _$DownloadCommandParameterImpl(
      {this.filePath = '', this.bucketKind = BucketKind.a})
      : super._();

  @override
  @JsonKey()
  final String filePath;
  @override
  @JsonKey()
  final BucketKind bucketKind;

  @override
  String toString() {
    return 'DownloadCommandParameter(filePath: $filePath, bucketKind: $bucketKind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadCommandParameterImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath, bucketKind);

  /// Create a copy of DownloadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadCommandParameterImplCopyWith<_$DownloadCommandParameterImpl>
      get copyWith => __$$DownloadCommandParameterImplCopyWithImpl<
          _$DownloadCommandParameterImpl>(this, _$identity);
}

abstract class _DownloadCommandParameter extends DownloadCommandParameter {
  const factory _DownloadCommandParameter(
      {final String filePath,
      final BucketKind bucketKind}) = _$DownloadCommandParameterImpl;
  const _DownloadCommandParameter._() : super._();

  @override
  String get filePath;
  @override
  BucketKind get bucketKind;

  /// Create a copy of DownloadCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadCommandParameterImplCopyWith<_$DownloadCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListCommandParameter {
  BucketKind get bucketKind => throw _privateConstructorUsedError;
  String get directoryPath => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;

  /// Create a copy of ListCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListCommandParameterCopyWith<ListCommandParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCommandParameterCopyWith<$Res> {
  factory $ListCommandParameterCopyWith(ListCommandParameter value,
          $Res Function(ListCommandParameter) then) =
      _$ListCommandParameterCopyWithImpl<$Res, ListCommandParameter>;
  @useResult
  $Res call(
      {BucketKind bucketKind,
      String directoryPath,
      int? limit,
      int? offset,
      String? search});
}

/// @nodoc
class _$ListCommandParameterCopyWithImpl<$Res,
        $Val extends ListCommandParameter>
    implements $ListCommandParameterCopyWith<$Res> {
  _$ListCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketKind = null,
    Object? directoryPath = null,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      directoryPath: null == directoryPath
          ? _value.directoryPath
          : directoryPath // ignore: cast_nullable_to_non_nullable
              as String,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListCommandParameterImplCopyWith<$Res>
    implements $ListCommandParameterCopyWith<$Res> {
  factory _$$ListCommandParameterImplCopyWith(_$ListCommandParameterImpl value,
          $Res Function(_$ListCommandParameterImpl) then) =
      __$$ListCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BucketKind bucketKind,
      String directoryPath,
      int? limit,
      int? offset,
      String? search});
}

/// @nodoc
class __$$ListCommandParameterImplCopyWithImpl<$Res>
    extends _$ListCommandParameterCopyWithImpl<$Res, _$ListCommandParameterImpl>
    implements _$$ListCommandParameterImplCopyWith<$Res> {
  __$$ListCommandParameterImplCopyWithImpl(_$ListCommandParameterImpl _value,
      $Res Function(_$ListCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketKind = null,
    Object? directoryPath = null,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? search = freezed,
  }) {
    return _then(_$ListCommandParameterImpl(
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      directoryPath: null == directoryPath
          ? _value.directoryPath
          : directoryPath // ignore: cast_nullable_to_non_nullable
              as String,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ListCommandParameterImpl extends _ListCommandParameter {
  const _$ListCommandParameterImpl(
      {this.bucketKind = BucketKind.a,
      this.directoryPath = '',
      this.limit,
      this.offset,
      this.search})
      : super._();

  @override
  @JsonKey()
  final BucketKind bucketKind;
  @override
  @JsonKey()
  final String directoryPath;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final String? search;

  @override
  String toString() {
    return 'ListCommandParameter(bucketKind: $bucketKind, directoryPath: $directoryPath, limit: $limit, offset: $offset, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCommandParameterImpl &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.directoryPath, directoryPath) ||
                other.directoryPath == directoryPath) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, bucketKind, directoryPath, limit, offset, search);

  /// Create a copy of ListCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListCommandParameterImplCopyWith<_$ListCommandParameterImpl>
      get copyWith =>
          __$$ListCommandParameterImplCopyWithImpl<_$ListCommandParameterImpl>(
              this, _$identity);
}

abstract class _ListCommandParameter extends ListCommandParameter {
  const factory _ListCommandParameter(
      {final BucketKind bucketKind,
      final String directoryPath,
      final int? limit,
      final int? offset,
      final String? search}) = _$ListCommandParameterImpl;
  const _ListCommandParameter._() : super._();

  @override
  BucketKind get bucketKind;
  @override
  String get directoryPath;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  String? get search;

  /// Create a copy of ListCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListCommandParameterImplCopyWith<_$ListCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CopyCommandParameter {
  String get sourceFilePath => throw _privateConstructorUsedError;
  String get destFilePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;
  BucketKind? get newBucketKind => throw _privateConstructorUsedError;

  /// Create a copy of CopyCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopyCommandParameterCopyWith<CopyCommandParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyCommandParameterCopyWith<$Res> {
  factory $CopyCommandParameterCopyWith(CopyCommandParameter value,
          $Res Function(CopyCommandParameter) then) =
      _$CopyCommandParameterCopyWithImpl<$Res, CopyCommandParameter>;
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      BucketKind? newBucketKind});
}

/// @nodoc
class _$CopyCommandParameterCopyWithImpl<$Res,
        $Val extends CopyCommandParameter>
    implements $CopyCommandParameterCopyWith<$Res> {
  _$CopyCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopyCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? newBucketKind = freezed,
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
      newBucketKind: freezed == newBucketKind
          ? _value.newBucketKind
          : newBucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CopyCommandParameterImplCopyWith<$Res>
    implements $CopyCommandParameterCopyWith<$Res> {
  factory _$$CopyCommandParameterImplCopyWith(_$CopyCommandParameterImpl value,
          $Res Function(_$CopyCommandParameterImpl) then) =
      __$$CopyCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      BucketKind? newBucketKind});
}

/// @nodoc
class __$$CopyCommandParameterImplCopyWithImpl<$Res>
    extends _$CopyCommandParameterCopyWithImpl<$Res, _$CopyCommandParameterImpl>
    implements _$$CopyCommandParameterImplCopyWith<$Res> {
  __$$CopyCommandParameterImplCopyWithImpl(_$CopyCommandParameterImpl _value,
      $Res Function(_$CopyCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CopyCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? newBucketKind = freezed,
  }) {
    return _then(_$CopyCommandParameterImpl(
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
      newBucketKind: freezed == newBucketKind
          ? _value.newBucketKind
          : newBucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind?,
    ));
  }
}

/// @nodoc

class _$CopyCommandParameterImpl extends _CopyCommandParameter {
  const _$CopyCommandParameterImpl(
      {this.sourceFilePath = '',
      this.destFilePath = '',
      this.bucketKind = BucketKind.a,
      this.newBucketKind})
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
  final BucketKind? newBucketKind;

  @override
  String toString() {
    return 'CopyCommandParameter(sourceFilePath: $sourceFilePath, destFilePath: $destFilePath, bucketKind: $bucketKind, newBucketKind: $newBucketKind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyCommandParameterImpl &&
            (identical(other.sourceFilePath, sourceFilePath) ||
                other.sourceFilePath == sourceFilePath) &&
            (identical(other.destFilePath, destFilePath) ||
                other.destFilePath == destFilePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.newBucketKind, newBucketKind) ||
                other.newBucketKind == newBucketKind));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sourceFilePath, destFilePath, bucketKind, newBucketKind);

  /// Create a copy of CopyCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyCommandParameterImplCopyWith<_$CopyCommandParameterImpl>
      get copyWith =>
          __$$CopyCommandParameterImplCopyWithImpl<_$CopyCommandParameterImpl>(
              this, _$identity);
}

abstract class _CopyCommandParameter extends CopyCommandParameter {
  const factory _CopyCommandParameter(
      {final String sourceFilePath,
      final String destFilePath,
      final BucketKind bucketKind,
      final BucketKind? newBucketKind}) = _$CopyCommandParameterImpl;
  const _CopyCommandParameter._() : super._();

  @override
  String get sourceFilePath;
  @override
  String get destFilePath;
  @override
  BucketKind get bucketKind;
  @override
  BucketKind? get newBucketKind;

  /// Create a copy of CopyCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyCommandParameterImplCopyWith<_$CopyCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoveCommandParameter {
  String get filePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;

  /// Create a copy of RemoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveCommandParameterCopyWith<RemoveCommandParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveCommandParameterCopyWith<$Res> {
  factory $RemoveCommandParameterCopyWith(RemoveCommandParameter value,
          $Res Function(RemoveCommandParameter) then) =
      _$RemoveCommandParameterCopyWithImpl<$Res, RemoveCommandParameter>;
  @useResult
  $Res call({String filePath, BucketKind bucketKind});
}

/// @nodoc
class _$RemoveCommandParameterCopyWithImpl<$Res,
        $Val extends RemoveCommandParameter>
    implements $RemoveCommandParameterCopyWith<$Res> {
  _$RemoveCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? bucketKind = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteCommandParameterImplCopyWith<$Res>
    implements $RemoveCommandParameterCopyWith<$Res> {
  factory _$$DeleteCommandParameterImplCopyWith(
          _$DeleteCommandParameterImpl value,
          $Res Function(_$DeleteCommandParameterImpl) then) =
      __$$DeleteCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filePath, BucketKind bucketKind});
}

/// @nodoc
class __$$DeleteCommandParameterImplCopyWithImpl<$Res>
    extends _$RemoveCommandParameterCopyWithImpl<$Res,
        _$DeleteCommandParameterImpl>
    implements _$$DeleteCommandParameterImplCopyWith<$Res> {
  __$$DeleteCommandParameterImplCopyWithImpl(
      _$DeleteCommandParameterImpl _value,
      $Res Function(_$DeleteCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? bucketKind = null,
  }) {
    return _then(_$DeleteCommandParameterImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
    ));
  }
}

/// @nodoc

class _$DeleteCommandParameterImpl extends _DeleteCommandParameter {
  const _$DeleteCommandParameterImpl(
      {this.filePath = '', this.bucketKind = BucketKind.a})
      : super._();

  @override
  @JsonKey()
  final String filePath;
  @override
  @JsonKey()
  final BucketKind bucketKind;

  @override
  String toString() {
    return 'RemoveCommandParameter(filePath: $filePath, bucketKind: $bucketKind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommandParameterImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath, bucketKind);

  /// Create a copy of RemoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommandParameterImplCopyWith<_$DeleteCommandParameterImpl>
      get copyWith => __$$DeleteCommandParameterImplCopyWithImpl<
          _$DeleteCommandParameterImpl>(this, _$identity);
}

abstract class _DeleteCommandParameter extends RemoveCommandParameter {
  const factory _DeleteCommandParameter(
      {final String filePath,
      final BucketKind bucketKind}) = _$DeleteCommandParameterImpl;
  const _DeleteCommandParameter._() : super._();

  @override
  String get filePath;
  @override
  BucketKind get bucketKind;

  /// Create a copy of RemoveCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCommandParameterImplCopyWith<_$DeleteCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateSignedUrlCommandParameter {
  String get filePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;

  /// 期限切れになる秒数 e.g.) 60 = 1分
  int get expiresIn => throw _privateConstructorUsedError;

  /// Create a copy of CreateSignedUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSignedUrlCommandParameterCopyWith<CreateSignedUrlCommandParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSignedUrlCommandParameterCopyWith<$Res> {
  factory $CreateSignedUrlCommandParameterCopyWith(
          CreateSignedUrlCommandParameter value,
          $Res Function(CreateSignedUrlCommandParameter) then) =
      _$CreateSignedUrlCommandParameterCopyWithImpl<$Res,
          CreateSignedUrlCommandParameter>;
  @useResult
  $Res call({String filePath, BucketKind bucketKind, int expiresIn});
}

/// @nodoc
class _$CreateSignedUrlCommandParameterCopyWithImpl<$Res,
        $Val extends CreateSignedUrlCommandParameter>
    implements $CreateSignedUrlCommandParameterCopyWith<$Res> {
  _$CreateSignedUrlCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSignedUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? bucketKind = null,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSignedUrlCommandParameterImplCopyWith<$Res>
    implements $CreateSignedUrlCommandParameterCopyWith<$Res> {
  factory _$$CreateSignedUrlCommandParameterImplCopyWith(
          _$CreateSignedUrlCommandParameterImpl value,
          $Res Function(_$CreateSignedUrlCommandParameterImpl) then) =
      __$$CreateSignedUrlCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filePath, BucketKind bucketKind, int expiresIn});
}

/// @nodoc
class __$$CreateSignedUrlCommandParameterImplCopyWithImpl<$Res>
    extends _$CreateSignedUrlCommandParameterCopyWithImpl<$Res,
        _$CreateSignedUrlCommandParameterImpl>
    implements _$$CreateSignedUrlCommandParameterImplCopyWith<$Res> {
  __$$CreateSignedUrlCommandParameterImplCopyWithImpl(
      _$CreateSignedUrlCommandParameterImpl _value,
      $Res Function(_$CreateSignedUrlCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSignedUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? bucketKind = null,
    Object? expiresIn = null,
  }) {
    return _then(_$CreateSignedUrlCommandParameterImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateSignedUrlCommandParameterImpl
    extends _CreateSignedUrlCommandParameter {
  const _$CreateSignedUrlCommandParameterImpl(
      {this.filePath = '', this.bucketKind = BucketKind.a, this.expiresIn = 60})
      : super._();

  @override
  @JsonKey()
  final String filePath;
  @override
  @JsonKey()
  final BucketKind bucketKind;

  /// 期限切れになる秒数 e.g.) 60 = 1分
  @override
  @JsonKey()
  final int expiresIn;

  @override
  String toString() {
    return 'CreateSignedUrlCommandParameter(filePath: $filePath, bucketKind: $bucketKind, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSignedUrlCommandParameterImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath, bucketKind, expiresIn);

  /// Create a copy of CreateSignedUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSignedUrlCommandParameterImplCopyWith<
          _$CreateSignedUrlCommandParameterImpl>
      get copyWith => __$$CreateSignedUrlCommandParameterImplCopyWithImpl<
          _$CreateSignedUrlCommandParameterImpl>(this, _$identity);
}

abstract class _CreateSignedUrlCommandParameter
    extends CreateSignedUrlCommandParameter {
  const factory _CreateSignedUrlCommandParameter(
      {final String filePath,
      final BucketKind bucketKind,
      final int expiresIn}) = _$CreateSignedUrlCommandParameterImpl;
  const _CreateSignedUrlCommandParameter._() : super._();

  @override
  String get filePath;
  @override
  BucketKind get bucketKind;

  /// 期限切れになる秒数 e.g.) 60 = 1分
  @override
  int get expiresIn;

  /// Create a copy of CreateSignedUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSignedUrlCommandParameterImplCopyWith<
          _$CreateSignedUrlCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateSignedUrlsCommandParameter {
  List<String> get filePaths => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;

  /// 期限切れになる秒数 e.g.) 60 = 1分
  int get expiresIn => throw _privateConstructorUsedError;

  /// Create a copy of CreateSignedUrlsCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSignedUrlsCommandParameterCopyWith<CreateSignedUrlsCommandParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSignedUrlsCommandParameterCopyWith<$Res> {
  factory $CreateSignedUrlsCommandParameterCopyWith(
          CreateSignedUrlsCommandParameter value,
          $Res Function(CreateSignedUrlsCommandParameter) then) =
      _$CreateSignedUrlsCommandParameterCopyWithImpl<$Res,
          CreateSignedUrlsCommandParameter>;
  @useResult
  $Res call({List<String> filePaths, BucketKind bucketKind, int expiresIn});
}

/// @nodoc
class _$CreateSignedUrlsCommandParameterCopyWithImpl<$Res,
        $Val extends CreateSignedUrlsCommandParameter>
    implements $CreateSignedUrlsCommandParameterCopyWith<$Res> {
  _$CreateSignedUrlsCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSignedUrlsCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePaths = null,
    Object? bucketKind = null,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      filePaths: null == filePaths
          ? _value.filePaths
          : filePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSignedUrlsCommandParameterImplCopyWith<$Res>
    implements $CreateSignedUrlsCommandParameterCopyWith<$Res> {
  factory _$$CreateSignedUrlsCommandParameterImplCopyWith(
          _$CreateSignedUrlsCommandParameterImpl value,
          $Res Function(_$CreateSignedUrlsCommandParameterImpl) then) =
      __$$CreateSignedUrlsCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> filePaths, BucketKind bucketKind, int expiresIn});
}

/// @nodoc
class __$$CreateSignedUrlsCommandParameterImplCopyWithImpl<$Res>
    extends _$CreateSignedUrlsCommandParameterCopyWithImpl<$Res,
        _$CreateSignedUrlsCommandParameterImpl>
    implements _$$CreateSignedUrlsCommandParameterImplCopyWith<$Res> {
  __$$CreateSignedUrlsCommandParameterImplCopyWithImpl(
      _$CreateSignedUrlsCommandParameterImpl _value,
      $Res Function(_$CreateSignedUrlsCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSignedUrlsCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePaths = null,
    Object? bucketKind = null,
    Object? expiresIn = null,
  }) {
    return _then(_$CreateSignedUrlsCommandParameterImpl(
      filePaths: null == filePaths
          ? _value._filePaths
          : filePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateSignedUrlsCommandParameterImpl
    extends _CreateSignedUrlsCommandParameter {
  const _$CreateSignedUrlsCommandParameterImpl(
      {final List<String> filePaths = const [],
      this.bucketKind = BucketKind.a,
      this.expiresIn = 60})
      : _filePaths = filePaths,
        super._();

  final List<String> _filePaths;
  @override
  @JsonKey()
  List<String> get filePaths {
    if (_filePaths is EqualUnmodifiableListView) return _filePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filePaths);
  }

  @override
  @JsonKey()
  final BucketKind bucketKind;

  /// 期限切れになる秒数 e.g.) 60 = 1分
  @override
  @JsonKey()
  final int expiresIn;

  @override
  String toString() {
    return 'CreateSignedUrlsCommandParameter(filePaths: $filePaths, bucketKind: $bucketKind, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSignedUrlsCommandParameterImpl &&
            const DeepCollectionEquality()
                .equals(other._filePaths, _filePaths) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_filePaths), bucketKind, expiresIn);

  /// Create a copy of CreateSignedUrlsCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSignedUrlsCommandParameterImplCopyWith<
          _$CreateSignedUrlsCommandParameterImpl>
      get copyWith => __$$CreateSignedUrlsCommandParameterImplCopyWithImpl<
          _$CreateSignedUrlsCommandParameterImpl>(this, _$identity);
}

abstract class _CreateSignedUrlsCommandParameter
    extends CreateSignedUrlsCommandParameter {
  const factory _CreateSignedUrlsCommandParameter(
      {final List<String> filePaths,
      final BucketKind bucketKind,
      final int expiresIn}) = _$CreateSignedUrlsCommandParameterImpl;
  const _CreateSignedUrlsCommandParameter._() : super._();

  @override
  List<String> get filePaths;
  @override
  BucketKind get bucketKind;

  /// 期限切れになる秒数 e.g.) 60 = 1分
  @override
  int get expiresIn;

  /// Create a copy of CreateSignedUrlsCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSignedUrlsCommandParameterImplCopyWith<
          _$CreateSignedUrlsCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateSignedUploadUrlCommandParameter {
  String get filePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;
  int get expiresIn => throw _privateConstructorUsedError;

  /// Create a copy of CreateSignedUploadUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSignedUploadUrlCommandParameterCopyWith<
          CreateSignedUploadUrlCommandParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSignedUploadUrlCommandParameterCopyWith<$Res> {
  factory $CreateSignedUploadUrlCommandParameterCopyWith(
          CreateSignedUploadUrlCommandParameter value,
          $Res Function(CreateSignedUploadUrlCommandParameter) then) =
      _$CreateSignedUploadUrlCommandParameterCopyWithImpl<$Res,
          CreateSignedUploadUrlCommandParameter>;
  @useResult
  $Res call({String filePath, BucketKind bucketKind, int expiresIn});
}

/// @nodoc
class _$CreateSignedUploadUrlCommandParameterCopyWithImpl<$Res,
        $Val extends CreateSignedUploadUrlCommandParameter>
    implements $CreateSignedUploadUrlCommandParameterCopyWith<$Res> {
  _$CreateSignedUploadUrlCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSignedUploadUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? bucketKind = null,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSignedUploadUrlCommandParameterImplCopyWith<$Res>
    implements $CreateSignedUploadUrlCommandParameterCopyWith<$Res> {
  factory _$$CreateSignedUploadUrlCommandParameterImplCopyWith(
          _$CreateSignedUploadUrlCommandParameterImpl value,
          $Res Function(_$CreateSignedUploadUrlCommandParameterImpl) then) =
      __$$CreateSignedUploadUrlCommandParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filePath, BucketKind bucketKind, int expiresIn});
}

/// @nodoc
class __$$CreateSignedUploadUrlCommandParameterImplCopyWithImpl<$Res>
    extends _$CreateSignedUploadUrlCommandParameterCopyWithImpl<$Res,
        _$CreateSignedUploadUrlCommandParameterImpl>
    implements _$$CreateSignedUploadUrlCommandParameterImplCopyWith<$Res> {
  __$$CreateSignedUploadUrlCommandParameterImplCopyWithImpl(
      _$CreateSignedUploadUrlCommandParameterImpl _value,
      $Res Function(_$CreateSignedUploadUrlCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSignedUploadUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? bucketKind = null,
    Object? expiresIn = null,
  }) {
    return _then(_$CreateSignedUploadUrlCommandParameterImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateSignedUploadUrlCommandParameterImpl
    extends _CreateSignedUploadUrlCommandParameter {
  const _$CreateSignedUploadUrlCommandParameterImpl(
      {this.filePath = '', this.bucketKind = BucketKind.a, this.expiresIn = 60})
      : super._();

  @override
  @JsonKey()
  final String filePath;
  @override
  @JsonKey()
  final BucketKind bucketKind;
  @override
  @JsonKey()
  final int expiresIn;

  @override
  String toString() {
    return 'CreateSignedUploadUrlCommandParameter(filePath: $filePath, bucketKind: $bucketKind, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSignedUploadUrlCommandParameterImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath, bucketKind, expiresIn);

  /// Create a copy of CreateSignedUploadUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSignedUploadUrlCommandParameterImplCopyWith<
          _$CreateSignedUploadUrlCommandParameterImpl>
      get copyWith => __$$CreateSignedUploadUrlCommandParameterImplCopyWithImpl<
          _$CreateSignedUploadUrlCommandParameterImpl>(this, _$identity);
}

abstract class _CreateSignedUploadUrlCommandParameter
    extends CreateSignedUploadUrlCommandParameter {
  const factory _CreateSignedUploadUrlCommandParameter(
      {final String filePath,
      final BucketKind bucketKind,
      final int expiresIn}) = _$CreateSignedUploadUrlCommandParameterImpl;
  const _CreateSignedUploadUrlCommandParameter._() : super._();

  @override
  String get filePath;
  @override
  BucketKind get bucketKind;
  @override
  int get expiresIn;

  /// Create a copy of CreateSignedUploadUrlCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSignedUploadUrlCommandParameterImplCopyWith<
          _$CreateSignedUploadUrlCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
