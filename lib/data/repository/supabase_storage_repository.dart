import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';

part 'supabase_storage_repository.g.dart';

@Riverpod(dependencies: [supabaseService])
class SupabaseStorageRepository extends _$SupabaseStorageRepository {
  late final SupabaseClient _service;

  @override
  SupabaseStorageRepository build() {
    final service = ref.read(supabaseServiceProvider);
    _service = service;
    return this;
  }

  Future<String> upload(
      {required String bucket,
      required String path,
      required File file,
      FileOptions? options}) async {
    return await _service.storage.from(bucket).upload(
          path,
          file,
          fileOptions: options ?? const FileOptions(),
        );
  }
}
