import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'create_signed_url_use_case.g.dart';

@Riverpod(dependencies: [SupabaseStorageRepository])
class CreateSignedUrlUseCase extends _$CreateSignedUrlUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  CreateSignedUrlUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  Future<Uint8List> execute(CreateSignedUrlCommandParameter parameter) async {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    logger.d('parameter: $parameter');
    final result = await _repository.download(
      bucket: bucketName,
      filePath: parameter.filePath,
    );
    logger.d('result: $result');
    return result;
  }
}
