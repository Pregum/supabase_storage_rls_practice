import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'remove_use_case.g.dart';

@Riverpod(dependencies: [supabaseService])
class RemoveUseCase extends _$RemoveUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  RemoveUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  Future<List<FileObject>> execute(RemoveCommandParameter parameter) async {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    final paths = [parameter.filePath];
    logger.d('parameter: $parameter');
    final results = await _repository.remove(
      bucket: bucketName,
      paths: paths,
    );
    return results;
  }
}
