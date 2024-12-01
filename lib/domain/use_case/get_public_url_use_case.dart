import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'get_public_url_use_case.g.dart';

@Riverpod(dependencies: [SupabaseStorageRepository])
class GetPublicUrlUseCase extends _$GetPublicUrlUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  GetPublicUrlUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  String execute(GetPublicUrlCommandParameter parameter) {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    final filePath = parameter.filePath;
    logger.d('parameter: $parameter');
    final result = _repository.getPublicUrl(
      bucket: bucketName,
      path: filePath,
    );
    logger.d('result: $result');
    return result;
  }
}
