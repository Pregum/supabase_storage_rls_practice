import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'create_signed_urls_use_case.g.dart';

@Riverpod(dependencies: [SupabaseStorageRepository])
class CreateSignedUrlsUseCase extends _$CreateSignedUrlsUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  CreateSignedUrlsUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  Future<List<SignedUrl>> execute(
      CreateSignedUrlsCommandParameter parameter) async {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    logger.d('parameter: $parameter');
    final result = await _repository.createSignedUrls(
      bucket: bucketName,
      paths: parameter.filePaths,
      expiresInSeconds: parameter.expiresIn,
    );
    logger.d('result: $result');
    return result;
  }
}
