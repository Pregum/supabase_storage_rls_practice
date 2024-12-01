import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/service/command_log_stream_service.dart';
import 'package:supabase_storage_rls_practice/domain/model/command_result.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/copy_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/create_signed_upload_url_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/create_signed_url_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/create_signed_urls_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/download_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/get_public_url_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/list_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/move_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/remove_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/update_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/upload_to_signed_url_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/upload_use_case.dart';
import 'package:uuid/uuid.dart';

part 'play_ground_view_model.g.dart';

@riverpod
class PlayGroundViewModel extends _$PlayGroundViewModel {
  @override
  StorageCommandParameter build() {
    return const UploadCommandParameter();
  }

  void update(StorageCommandParameter parameter) {
    state = parameter;
  }

  Future<void> executeCommand() async {
    try {
      await _executeCommand();
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> _executeCommand() async {
    final logStreamServiceNotifier =
        ref.read(commandLogStreamServiceProvider.notifier);
    var failedCommand = '';
    try {
      switch (state) {
        // ダブルディスパッチで汎用的に実装するか迷ったが
        // 拡張性はそこまで優先度が高くないと判断し、switchで愚直に実装する
        case UploadCommandParameter():
          final uploadParameter = state as UploadCommandParameter;
          failedCommand = buildCommandText(state);
          await ref.read(uploadUseCaseProvider).execute(uploadParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: 'no message',
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case UpdateCommandParameter():
          final updateParameter = state as UpdateCommandParameter;
          failedCommand = buildCommandText(state);
          await ref.read(updateUseCaseProvider).execute(updateParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: 'no message',
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case MoveCommandParameter():
          final moveParameter = state as MoveCommandParameter;
          failedCommand = buildCommandText(state);
          await ref.read(moveUseCaseProvider).execute(moveParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: 'no message',
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case DownloadCommandParameter():
          final downloadParameter = state as DownloadCommandParameter;
          failedCommand = buildCommandText(state);
          final result = await ref
              .read(downloadUseCaseProvider)
              .execute(downloadParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: '$result',
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case ListCommandParameter():
          final listParameter = state as ListCommandParameter;
          failedCommand = buildCommandText(state);
          final result =
              await ref.read(listUseCaseProvider).execute(listParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: '$result',
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case CopyCommandParameter():
          final copyParameter = state as CopyCommandParameter;
          failedCommand = buildCommandText(state);
          final result =
              await ref.read(copyUseCaseProvider).execute(copyParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: result,
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case RemoveCommandParameter():
          final removeParameter = state as RemoveCommandParameter;
          failedCommand = buildCommandText(state);
          final result =
              await ref.read(removeUseCaseProvider).execute(removeParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: '$result',
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case CreateSignedUrlCommandParameter():
          final createSignedUrlParameter =
              state as CreateSignedUrlCommandParameter;
          failedCommand = buildCommandText(state);
          final result = await ref
              .read(createSignedUrlUseCaseProvider)
              .execute(createSignedUrlParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: result,
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case CreateSignedUrlsCommandParameter():
          final createSignedUrlsParameter =
              state as CreateSignedUrlsCommandParameter;
          failedCommand = buildCommandText(state);
          final result = await ref
              .read(createSignedUrlsUseCaseProvider)
              .execute(createSignedUrlsParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: '$result',
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case CreateSignedUploadUrlCommandParameter():
          final createSignedUploadUrlParameter =
              state as CreateSignedUploadUrlCommandParameter;
          failedCommand = buildCommandText(state);
          final result = await ref
              .read(createSignedUploadUrlUseCaseProvider)
              .execute(createSignedUploadUrlParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: '$result',
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case UploadToSignedUrlCommandParameter():
          final uploadToSignedUrlParameter =
              state as UploadToSignedUrlCommandParameter;
          failedCommand = buildCommandText(state);
          final result = await ref
              .read(uploadToSignedUrlUseCaseProvider)
              .execute(uploadToSignedUrlParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: result,
          );
          logStreamServiceNotifier.add(commandResult);
          break;
        case GetPublicUrlCommandParameter():
          final getPublicUrlParameter = state as GetPublicUrlCommandParameter;
          failedCommand = buildCommandText(state);
          final result = ref
              .read(getPublicUrlUseCaseProvider)
              .execute(getPublicUrlParameter);
          final commandResult = CommandResult.success(
            command: buildCommandText(state),
            message: result,
          );
          logStreamServiceNotifier.add(commandResult);
          break;
      }
    } catch (e) {
      logger.e('failed command: $failedCommand, error: $e');
      final commandResult = CommandResult.failure(
        command: failedCommand,
        message: e.toString(),
      );
      logStreamServiceNotifier.add(commandResult);
    }
  }

  String buildCommandText(StorageCommandParameter parameter) {
    final code = '''
await _service.storage.from('${parameter.bucketName}').${parameter.methodName}(
  ${parameter.arguments.entries.map(_decoratePrettyPrint).join(',\n  ')},
);
''';
    return code;
  }

  String _decoratePrettyPrint(MapEntry<String, Object> entry) {
    final key = entry.key;
    final value = entry.value;
    if (value is String) {
      return '$key: \'$value\'';
    }
    return '$key: $value';
  }
  
  void clearLog() {

  }
}
