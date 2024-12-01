import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'copy_use_case.g.dart';

@Riverpod(dependencies: [SupabaseStorageRepository])
class CopyUseCase extends _$CopyUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  CopyUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  Future<String> execute(CopyCommandParameter parameter) async {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    final sourceFilePath = parameter.sourceFilePath;
    final destFilePath = parameter.destFilePath;
    final newBucketName = parameter.newBucketKind?.name;
    logger.d('parameter: $parameter');
    return await _repository.copy(
      bucket: bucketName,
      fromPath: sourceFilePath,
      toPath: destFilePath,
      destinationBucket: newBucketName,
    );
  }
}
