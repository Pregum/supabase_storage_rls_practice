import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'create_signed_upload_url_use_case.g.dart';

@Riverpod(dependencies: [SupabaseStorageRepository])
class CreateSignedUploadUrlUseCase extends _$CreateSignedUploadUrlUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  CreateSignedUploadUrlUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  Future<SignedUploadURLResponse> execute(
      CreateSignedUploadUrlCommandParameter parameter) async {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    final path = parameter.filePath;
    logger.d('parameter: $parameter');
    final result =
        await _repository.createSignedUploadUrl(bucket: bucketName, path: path);
    logger.d('result: $result');
    return result;
  }
}
