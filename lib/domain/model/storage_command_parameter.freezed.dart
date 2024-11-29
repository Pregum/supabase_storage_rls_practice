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
mixin _$DeleteCommandParameter {
  String get filePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;

  /// Create a copy of DeleteCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteCommandParameterCopyWith<DeleteCommandParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommandParameterCopyWith<$Res> {
  factory $DeleteCommandParameterCopyWith(DeleteCommandParameter value,
          $Res Function(DeleteCommandParameter) then) =
      _$DeleteCommandParameterCopyWithImpl<$Res, DeleteCommandParameter>;
  @useResult
  $Res call({String filePath, BucketKind bucketKind});
}

/// @nodoc
class _$DeleteCommandParameterCopyWithImpl<$Res,
        $Val extends DeleteCommandParameter>
    implements $DeleteCommandParameterCopyWith<$Res> {
  _$DeleteCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteCommandParameter
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
    implements $DeleteCommandParameterCopyWith<$Res> {
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
    extends _$DeleteCommandParameterCopyWithImpl<$Res,
        _$DeleteCommandParameterImpl>
    implements _$$DeleteCommandParameterImplCopyWith<$Res> {
  __$$DeleteCommandParameterImplCopyWithImpl(
      _$DeleteCommandParameterImpl _value,
      $Res Function(_$DeleteCommandParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteCommandParameter
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
    return 'DeleteCommandParameter(filePath: $filePath, bucketKind: $bucketKind)';
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

  /// Create a copy of DeleteCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommandParameterImplCopyWith<_$DeleteCommandParameterImpl>
      get copyWith => __$$DeleteCommandParameterImplCopyWithImpl<
          _$DeleteCommandParameterImpl>(this, _$identity);
}

abstract class _DeleteCommandParameter extends DeleteCommandParameter {
  const factory _DeleteCommandParameter(
      {final String filePath,
      final BucketKind bucketKind}) = _$DeleteCommandParameterImpl;
  const _DeleteCommandParameter._() : super._();

  @override
  String get filePath;
  @override
  BucketKind get bucketKind;

  /// Create a copy of DeleteCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCommandParameterImplCopyWith<_$DeleteCommandParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
