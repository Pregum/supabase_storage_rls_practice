// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommandResult {
  String get id => throw _privateConstructorUsedError;
  String get command => throw _privateConstructorUsedError;
  ResultType get resultType => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of CommandResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommandResultCopyWith<CommandResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandResultCopyWith<$Res> {
  factory $CommandResultCopyWith(
          CommandResult value, $Res Function(CommandResult) then) =
      _$CommandResultCopyWithImpl<$Res, CommandResult>;
  @useResult
  $Res call(
      {String id,
      String command,
      ResultType resultType,
      DateTime createdAt,
      String message});
}

/// @nodoc
class _$CommandResultCopyWithImpl<$Res, $Val extends CommandResult>
    implements $CommandResultCopyWith<$Res> {
  _$CommandResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommandResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? command = null,
    Object? resultType = null,
    Object? createdAt = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
      resultType: null == resultType
          ? _value.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as ResultType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommandResultImplCopyWith<$Res>
    implements $CommandResultCopyWith<$Res> {
  factory _$$CommandResultImplCopyWith(
          _$CommandResultImpl value, $Res Function(_$CommandResultImpl) then) =
      __$$CommandResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String command,
      ResultType resultType,
      DateTime createdAt,
      String message});
}

/// @nodoc
class __$$CommandResultImplCopyWithImpl<$Res>
    extends _$CommandResultCopyWithImpl<$Res, _$CommandResultImpl>
    implements _$$CommandResultImplCopyWith<$Res> {
  __$$CommandResultImplCopyWithImpl(
      _$CommandResultImpl _value, $Res Function(_$CommandResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommandResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? command = null,
    Object? resultType = null,
    Object? createdAt = null,
    Object? message = null,
  }) {
    return _then(_$CommandResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
      resultType: null == resultType
          ? _value.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as ResultType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommandResultImpl extends _CommandResult {
  const _$CommandResultImpl(
      {required this.id,
      required this.command,
      required this.resultType,
      required this.createdAt,
      this.message = ''})
      : super._();

  @override
  final String id;
  @override
  final String command;
  @override
  final ResultType resultType;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'CommandResult(id: $id, command: $command, resultType: $resultType, createdAt: $createdAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.resultType, resultType) ||
                other.resultType == resultType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, command, resultType, createdAt, message);

  /// Create a copy of CommandResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommandResultImplCopyWith<_$CommandResultImpl> get copyWith =>
      __$$CommandResultImplCopyWithImpl<_$CommandResultImpl>(this, _$identity);
}

abstract class _CommandResult extends CommandResult {
  const factory _CommandResult(
      {required final String id,
      required final String command,
      required final ResultType resultType,
      required final DateTime createdAt,
      final String message}) = _$CommandResultImpl;
  const _CommandResult._() : super._();

  @override
  String get id;
  @override
  String get command;
  @override
  ResultType get resultType;
  @override
  DateTime get createdAt;
  @override
  String get message;

  /// Create a copy of CommandResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommandResultImplCopyWith<_$CommandResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
