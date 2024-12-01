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

  Future<List<FileObject>> remove({
    required String bucket,
    required List<String> paths,
  }) async {
    final result = await _service.storage.from(bucket).remove(paths);
    return result;
  }

  Future<List<FileObject>> list({
    required String bucket,
    required String directoryPath,
    SearchOptions? searchOptions,
  }) async {
    final result = await _service.storage.from(bucket).list(
          path: directoryPath,
          searchOptions: searchOptions ?? const SearchOptions(),
        );
    return result;
  }

  Future<String> copy({
    required String bucket,
    required String fromPath,
    required String toPath,
    String? destinationBucket,
  }) async {
    final result = await _service.storage.from(bucket).copy(
          fromPath,
          toPath,
          destinationBucket: destinationBucket,
        );
    return result;
  }

  Future<String> createSignedUrl({
    required String bucket,
    required String path,
    required int expiresInSeconds,
    TransformOptions? options,
  }) async {
    final result = await _service.storage.from(bucket).createSignedUrl(
          path,
          expiresInSeconds,
          transform: options,
        );
    return result;
  }

  Future<List<SignedUrl>> createSignedUrls({
    required String bucket,
    required List<String> paths,
    required int expiresInSeconds,
  }) async {
    final results = await _service.storage.from(bucket).createSignedUrls(
          paths,
          expiresInSeconds,
        );
    return results;
  }
}
