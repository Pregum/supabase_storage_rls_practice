import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/copy_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/create_signed_url_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/download_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/list_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/move_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/remove_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/update_use_case.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/upload_use_case.dart';

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
    switch (state) {
      // ダブルディスパッチで汎用的に実装するか迷ったが
      // 拡張性はそこまで優先度が高くないと判断し、switchで愚直に実装する
      case UploadCommandParameter():
        final uploadParameter = state as UploadCommandParameter;
        await ref.read(uploadUseCaseProvider).execute(uploadParameter);
        break;
      case UpdateCommandParameter():
        final updateParameter = state as UpdateCommandParameter;
        await ref.read(updateUseCaseProvider).execute(updateParameter);
        break;
      case MoveCommandParameter():
        final moveParameter = state as MoveCommandParameter;
        await ref.read(moveUseCaseProvider).execute(moveParameter);
        break;
      case DownloadCommandParameter():
        final downloadParameter = state as DownloadCommandParameter;
        final _ =
            await ref.read(downloadUseCaseProvider).execute(downloadParameter);
        // TODO: ここでリザルト用のstreamへ結果を投げる
        break;
      case ListCommandParameter():
        final listParameter = state as ListCommandParameter;
        final _ = await ref.read(listUseCaseProvider).execute(listParameter);
        // TODO: ここでリザルト用のstreamへ結果を投げる
        break;
      case CopyCommandParameter():
        final copyParameter = state as CopyCommandParameter;
        final _ = await ref.read(copyUseCaseProvider).execute(copyParameter);
        // TODO: ここでリザルト用のstreamへ結果を投げる
        break;
      case RemoveCommandParameter():
        final removeParameter = state as RemoveCommandParameter;
        final _ =
            await ref.read(removeUseCaseProvider).execute(removeParameter);
        // TODO: ここでリザルト用のstreamへ結果を投げる
        break;
      case CreateSignedUrlCommandParameter():
        final createSignedUrlParameter =
            state as CreateSignedUrlCommandParameter;
        final _ = await ref
            .read(createSignedUrlUseCaseProvider)
            .execute(createSignedUrlParameter);
        // TODO: ここでリザルト用のstreamへ結果を投げる
        break;
    }
  }
}
