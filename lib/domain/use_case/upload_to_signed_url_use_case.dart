import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'upload_to_signed_url_use_case.g.dart';

@Riverpod(dependencies: [SupabaseStorageRepository])
class UploadToSignedUrlUseCase extends _$UploadToSignedUrlUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  UploadToSignedUrlUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  Future<String> execute(UploadToSignedUrlCommandParameter parameter) async {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    final destinationFilePath = parameter.destinationPath;
    final token = parameter.token;
    logger.d('parameter: $parameter');
    final sourceFileBinary = await rootBundle.load(parameter.dataPathToUpload);
    final result = await _repository.uploadBinaryToSignedUrl(
      bucket: bucketName,
      path: destinationFilePath,
      token: token,
      data: sourceFileBinary.buffer.asUint8List(),
    );
    logger.d('result: $result');
    return result;
  }
}
