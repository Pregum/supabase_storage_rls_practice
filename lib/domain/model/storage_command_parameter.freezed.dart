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
mixin _$StorageCommandParameter {
  String get destFilePath => throw _privateConstructorUsedError;
  BucketKind get bucketKind => throw _privateConstructorUsedError;
  OperationType get operationType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)
        uploadParameter,
    required TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)
        update,
    required TResult Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        uploadParameter,
    TResult? Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        update,
    TResult? Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)?
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        uploadParameter,
    TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        update,
    TResult Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)?
        delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadParameter value) uploadParameter,
    required TResult Function(UpdateParameter value) update,
    required TResult Function(DeleteParameter value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadParameter value)? uploadParameter,
    TResult? Function(UpdateParameter value)? update,
    TResult? Function(DeleteParameter value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadParameter value)? uploadParameter,
    TResult Function(UpdateParameter value)? update,
    TResult Function(DeleteParameter value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StorageCommandParameterCopyWith<StorageCommandParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageCommandParameterCopyWith<$Res> {
  factory $StorageCommandParameterCopyWith(StorageCommandParameter value,
          $Res Function(StorageCommandParameter) then) =
      _$StorageCommandParameterCopyWithImpl<$Res, StorageCommandParameter>;
  @useResult
  $Res call(
      {String destFilePath,
      BucketKind bucketKind,
      OperationType operationType});
}

/// @nodoc
class _$StorageCommandParameterCopyWithImpl<$Res,
        $Val extends StorageCommandParameter>
    implements $StorageCommandParameterCopyWith<$Res> {
  _$StorageCommandParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? operationType = null,
  }) {
    return _then(_value.copyWith(
      destFilePath: null == destFilePath
          ? _value.destFilePath
          : destFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as OperationType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadParameterImplCopyWith<$Res>
    implements $StorageCommandParameterCopyWith<$Res> {
  factory _$$UploadParameterImplCopyWith(_$UploadParameterImpl value,
          $Res Function(_$UploadParameterImpl) then) =
      __$$UploadParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      OperationType operationType});
}

/// @nodoc
class __$$UploadParameterImplCopyWithImpl<$Res>
    extends _$StorageCommandParameterCopyWithImpl<$Res, _$UploadParameterImpl>
    implements _$$UploadParameterImplCopyWith<$Res> {
  __$$UploadParameterImplCopyWithImpl(
      _$UploadParameterImpl _value, $Res Function(_$UploadParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? operationType = null,
  }) {
    return _then(_$UploadParameterImpl(
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
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as OperationType,
    ));
  }
}

/// @nodoc

class _$UploadParameterImpl extends UploadParameter {
  const _$UploadParameterImpl(
      {required this.sourceFilePath,
      required this.destFilePath,
      required this.bucketKind,
      required this.operationType})
      : super._();

  @override
  final String sourceFilePath;
  @override
  final String destFilePath;
  @override
  final BucketKind bucketKind;
  @override
  final OperationType operationType;

  @override
  String toString() {
    return 'StorageCommandParameter.uploadParameter(sourceFilePath: $sourceFilePath, destFilePath: $destFilePath, bucketKind: $bucketKind, operationType: $operationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadParameterImpl &&
            (identical(other.sourceFilePath, sourceFilePath) ||
                other.sourceFilePath == sourceFilePath) &&
            (identical(other.destFilePath, destFilePath) ||
                other.destFilePath == destFilePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sourceFilePath, destFilePath, bucketKind, operationType);

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadParameterImplCopyWith<_$UploadParameterImpl> get copyWith =>
      __$$UploadParameterImplCopyWithImpl<_$UploadParameterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)
        uploadParameter,
    required TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)
        update,
    required TResult Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)
        delete,
  }) {
    return uploadParameter(
        sourceFilePath, destFilePath, bucketKind, operationType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        uploadParameter,
    TResult? Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        update,
    TResult? Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)?
        delete,
  }) {
    return uploadParameter?.call(
        sourceFilePath, destFilePath, bucketKind, operationType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        uploadParameter,
    TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        update,
    TResult Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)?
        delete,
    required TResult orElse(),
  }) {
    if (uploadParameter != null) {
      return uploadParameter(
          sourceFilePath, destFilePath, bucketKind, operationType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadParameter value) uploadParameter,
    required TResult Function(UpdateParameter value) update,
    required TResult Function(DeleteParameter value) delete,
  }) {
    return uploadParameter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadParameter value)? uploadParameter,
    TResult? Function(UpdateParameter value)? update,
    TResult? Function(DeleteParameter value)? delete,
  }) {
    return uploadParameter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadParameter value)? uploadParameter,
    TResult Function(UpdateParameter value)? update,
    TResult Function(DeleteParameter value)? delete,
    required TResult orElse(),
  }) {
    if (uploadParameter != null) {
      return uploadParameter(this);
    }
    return orElse();
  }
}

abstract class UploadParameter extends StorageCommandParameter {
  const factory UploadParameter(
      {required final String sourceFilePath,
      required final String destFilePath,
      required final BucketKind bucketKind,
      required final OperationType operationType}) = _$UploadParameterImpl;
  const UploadParameter._() : super._();

  String get sourceFilePath;
  @override
  String get destFilePath;
  @override
  BucketKind get bucketKind;
  @override
  OperationType get operationType;

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadParameterImplCopyWith<_$UploadParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateParameterImplCopyWith<$Res>
    implements $StorageCommandParameterCopyWith<$Res> {
  factory _$$UpdateParameterImplCopyWith(_$UpdateParameterImpl value,
          $Res Function(_$UpdateParameterImpl) then) =
      __$$UpdateParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sourceFilePath,
      String destFilePath,
      BucketKind bucketKind,
      OperationType operationType});
}

/// @nodoc
class __$$UpdateParameterImplCopyWithImpl<$Res>
    extends _$StorageCommandParameterCopyWithImpl<$Res, _$UpdateParameterImpl>
    implements _$$UpdateParameterImplCopyWith<$Res> {
  __$$UpdateParameterImplCopyWithImpl(
      _$UpdateParameterImpl _value, $Res Function(_$UpdateParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFilePath = null,
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? operationType = null,
  }) {
    return _then(_$UpdateParameterImpl(
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
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as OperationType,
    ));
  }
}

/// @nodoc

class _$UpdateParameterImpl extends UpdateParameter {
  const _$UpdateParameterImpl(
      {required this.sourceFilePath,
      required this.destFilePath,
      required this.bucketKind,
      required this.operationType})
      : super._();

  @override
  final String sourceFilePath;
  @override
  final String destFilePath;
  @override
  final BucketKind bucketKind;
  @override
  final OperationType operationType;

  @override
  String toString() {
    return 'StorageCommandParameter.update(sourceFilePath: $sourceFilePath, destFilePath: $destFilePath, bucketKind: $bucketKind, operationType: $operationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateParameterImpl &&
            (identical(other.sourceFilePath, sourceFilePath) ||
                other.sourceFilePath == sourceFilePath) &&
            (identical(other.destFilePath, destFilePath) ||
                other.destFilePath == destFilePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sourceFilePath, destFilePath, bucketKind, operationType);

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateParameterImplCopyWith<_$UpdateParameterImpl> get copyWith =>
      __$$UpdateParameterImplCopyWithImpl<_$UpdateParameterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)
        uploadParameter,
    required TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)
        update,
    required TResult Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)
        delete,
  }) {
    return update(sourceFilePath, destFilePath, bucketKind, operationType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        uploadParameter,
    TResult? Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        update,
    TResult? Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)?
        delete,
  }) {
    return update?.call(
        sourceFilePath, destFilePath, bucketKind, operationType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        uploadParameter,
    TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        update,
    TResult Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)?
        delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(sourceFilePath, destFilePath, bucketKind, operationType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadParameter value) uploadParameter,
    required TResult Function(UpdateParameter value) update,
    required TResult Function(DeleteParameter value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadParameter value)? uploadParameter,
    TResult? Function(UpdateParameter value)? update,
    TResult? Function(DeleteParameter value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadParameter value)? uploadParameter,
    TResult Function(UpdateParameter value)? update,
    TResult Function(DeleteParameter value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateParameter extends StorageCommandParameter {
  const factory UpdateParameter(
      {required final String sourceFilePath,
      required final String destFilePath,
      required final BucketKind bucketKind,
      required final OperationType operationType}) = _$UpdateParameterImpl;
  const UpdateParameter._() : super._();

  String get sourceFilePath;
  @override
  String get destFilePath;
  @override
  BucketKind get bucketKind;
  @override
  OperationType get operationType;

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateParameterImplCopyWith<_$UpdateParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteParameterImplCopyWith<$Res>
    implements $StorageCommandParameterCopyWith<$Res> {
  factory _$$DeleteParameterImplCopyWith(_$DeleteParameterImpl value,
          $Res Function(_$DeleteParameterImpl) then) =
      __$$DeleteParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String destFilePath,
      BucketKind bucketKind,
      OperationType operationType});
}

/// @nodoc
class __$$DeleteParameterImplCopyWithImpl<$Res>
    extends _$StorageCommandParameterCopyWithImpl<$Res, _$DeleteParameterImpl>
    implements _$$DeleteParameterImplCopyWith<$Res> {
  __$$DeleteParameterImplCopyWithImpl(
      _$DeleteParameterImpl _value, $Res Function(_$DeleteParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destFilePath = null,
    Object? bucketKind = null,
    Object? operationType = null,
  }) {
    return _then(_$DeleteParameterImpl(
      destFilePath: null == destFilePath
          ? _value.destFilePath
          : destFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      bucketKind: null == bucketKind
          ? _value.bucketKind
          : bucketKind // ignore: cast_nullable_to_non_nullable
              as BucketKind,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as OperationType,
    ));
  }
}

/// @nodoc

class _$DeleteParameterImpl extends DeleteParameter {
  const _$DeleteParameterImpl(
      {required this.destFilePath,
      required this.bucketKind,
      required this.operationType})
      : super._();

  @override
  final String destFilePath;
  @override
  final BucketKind bucketKind;
  @override
  final OperationType operationType;

  @override
  String toString() {
    return 'StorageCommandParameter.delete(destFilePath: $destFilePath, bucketKind: $bucketKind, operationType: $operationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteParameterImpl &&
            (identical(other.destFilePath, destFilePath) ||
                other.destFilePath == destFilePath) &&
            (identical(other.bucketKind, bucketKind) ||
                other.bucketKind == bucketKind) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, destFilePath, bucketKind, operationType);

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteParameterImplCopyWith<_$DeleteParameterImpl> get copyWith =>
      __$$DeleteParameterImplCopyWithImpl<_$DeleteParameterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)
        uploadParameter,
    required TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)
        update,
    required TResult Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)
        delete,
  }) {
    return delete(destFilePath, bucketKind, operationType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        uploadParameter,
    TResult? Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        update,
    TResult? Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)?
        delete,
  }) {
    return delete?.call(destFilePath, bucketKind, operationType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        uploadParameter,
    TResult Function(String sourceFilePath, String destFilePath,
            BucketKind bucketKind, OperationType operationType)?
        update,
    TResult Function(String destFilePath, BucketKind bucketKind,
            OperationType operationType)?
        delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(destFilePath, bucketKind, operationType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadParameter value) uploadParameter,
    required TResult Function(UpdateParameter value) update,
    required TResult Function(DeleteParameter value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadParameter value)? uploadParameter,
    TResult? Function(UpdateParameter value)? update,
    TResult? Function(DeleteParameter value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadParameter value)? uploadParameter,
    TResult Function(UpdateParameter value)? update,
    TResult Function(DeleteParameter value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteParameter extends StorageCommandParameter {
  const factory DeleteParameter(
      {required final String destFilePath,
      required final BucketKind bucketKind,
      required final OperationType operationType}) = _$DeleteParameterImpl;
  const DeleteParameter._() : super._();

  @override
  String get destFilePath;
  @override
  BucketKind get bucketKind;
  @override
  OperationType get operationType;

  /// Create a copy of StorageCommandParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteParameterImplCopyWith<_$DeleteParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
