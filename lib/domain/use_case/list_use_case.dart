import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'list_use_case.g.dart';

@Riverpod(dependencies: [SupabaseStorageRepository])
class ListUseCase extends _$ListUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  ListUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  Future<List<FileObject>> execute(ListCommandParameter parameter) async {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    logger.d('parameter: $parameter');
    final result = await _repository.list(
      bucket: bucketName,
      directoryPath: parameter.directoryPath,
    );
    logger.d('result: $result');
    return result;
  }
}
