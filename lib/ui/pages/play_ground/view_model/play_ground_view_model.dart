import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/domain/usecase/upload_use_case.dart';

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
    switch (state) {
      // ダブルディスパッチで汎用的に実装するか迷ったが
      // 拡張性はそこまで優先度が高くないと判断し、switchで愚直に実装する
      case UploadCommandParameter():
        final uploadParameter = state as UploadCommandParameter;
        try {
          await ref.read(uploadUseCaseProvider).execute(uploadParameter);
        } catch (e) {
          logger.e(e);
        }
        break;
      default:
        break;
    }
  }
}
