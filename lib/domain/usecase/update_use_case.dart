import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

part 'update_use_case.g.dart';

@Riverpod(dependencies: [SupabaseStorageRepository])
class UpdateUseCase extends _$UpdateUseCase {
  late final SupabaseStorageRepository _repository;

  @override
  UpdateUseCase build() {
    final repository = ref.read(supabaseStorageRepositoryProvider);
    _repository = repository;
    return this;
  }

  Future<void> execute(UpdateCommandParameter parameter) async {
    // クエリを生成する
    final bucketName = parameter.bucketKind.name;
    final destinationFilePath = parameter.destFilePath;
    logger.d('parameter: $parameter');
    final sourceFileBinary = await rootBundle.load(parameter.sourceFilePath);
    final fileOptions = FileOptions(
      upsert: parameter.isUpsertEnabled,
    );
    await _repository.updateBinary(
      bucket: bucketName,
      path: destinationFilePath,
      fileBinary: sourceFileBinary.buffer.asUint8List(),
      options: fileOptions,
    );
  }
}