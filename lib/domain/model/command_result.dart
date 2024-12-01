import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'command_result.freezed.dart';

enum ResultType {
  success,
  failure,
}

@freezed
class CommandResult with _$CommandResult {
  const CommandResult._();
  const factory CommandResult({
    required String id,
    required String command,
    required ResultType resultType,
    required DateTime createdAt,
    @Default('') String message,
  }) = _CommandResult;

  factory CommandResult.success({
    required String command,
    @Default('') required String message,
  }) {
    return CommandResult(
      id: const Uuid().v4(),
      command: command,
      resultType: ResultType.success,
      createdAt: DateTime.now(),
      message: message,
    );
  }

  factory CommandResult.failure({
    required String command,
    @Default('') required String message,
  }) {
    return CommandResult(
      id: const Uuid().v4(),
      command: command,
      resultType: ResultType.failure,
      createdAt: DateTime.now(),
      message: message,
    );
  }
}
