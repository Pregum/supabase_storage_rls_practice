import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'move_use_case.g.dart';

@Riverpod(dependencies: [SupabaseStorageRepository])
class MoveUseCase extends _$MoveUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  MoveUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  Future<void> execute(MoveCommandParameter parameter) async {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    final oldFilePath = parameter.oldFilePath;
    final newFilePath = parameter.newFilePath;
    final newBucketName = parameter.newBucketKind?.name;
    logger.d('parameter: $parameter');
    await _repository.move(
      bucket: bucketName,
      oldPath: oldFilePath,
      newPath: newFilePath,
      destinationBucket: newBucketName,
    );
  }
}
