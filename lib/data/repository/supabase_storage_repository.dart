import 'dart:io';
import 'dart:typed_data';

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

  Future<String> uploadBinary(
      {required String bucket,
      required String path,
      required Uint8List fileBinary,
      FileOptions? options}) async {
    return await _service.storage.from(bucket).uploadBinary(
          path,
          fileBinary,
          fileOptions: options ?? const FileOptions(),
        );
  }
}
