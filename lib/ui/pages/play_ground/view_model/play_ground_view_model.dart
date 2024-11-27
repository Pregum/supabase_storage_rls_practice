import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

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
}