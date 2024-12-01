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

  Future<String> uploadBinary({
    required String bucket,
    required String path,
    required Uint8List fileBinary,
    FileOptions? options,
  }) async {
    return await _service.storage.from(bucket).uploadBinary(
          path,
          fileBinary,
          fileOptions: options ?? const FileOptions(),
        );
  }

  Future<void> updateBinary({
    required String bucket,
    required String path,
    required Uint8List fileBinary,
    FileOptions? options,
  }) async {
    await _service.storage.from(bucket).updateBinary(
          path,
          fileBinary,
          fileOptions: options ?? const FileOptions(),
        );
  }

  Future<void> move({
    required String bucket,
    required String oldPath,
    required String newPath,
    String? destinationBucket,
  }) async {
    await _service.storage.from(bucket).move(
          oldPath,
          newPath,
          destinationBucket: destinationBucket,
        );
  }

  Future<Uint8List> download({
    required String bucket,
    required String filePath,
    TransformOptions? transformOptions,
  }) async {
    final binaryFile = await _service.storage
        .from(bucket)
        .download(filePath, transform: transformOptions);
    return binaryFile;
  }

  Future<void> remove({
    required String bucket,
    required List<String> paths,
  }) async {
    await _service.storage.from(bucket).remove(paths);
  }
}
