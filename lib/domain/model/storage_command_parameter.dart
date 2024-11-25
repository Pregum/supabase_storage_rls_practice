import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';
import 'package:supabase_storage_rls_practice/domain/model/operation_type.dart';

part 'storage_command_parameter.freezed.dart';
// part 'storage_command_parameter.g.dart';

abstract class Executable {
  Future<void> execute();
}

@freezed
sealed class StorageCommandParameter
    with _$StorageCommandParameter
    implements Executable {
  const StorageCommandParameter._();
  const factory StorageCommandParameter.uploadParameter({
    required String sourceFilePath,
    required String destFilePath,
    required BucketKind bucketKind,
    required OperationType operationType,
  }) = UploadParameter;
  const factory StorageCommandParameter.update({
    required String sourceFilePath,
    required String destFilePath,
    required BucketKind bucketKind,
    required OperationType operationType,
  }) = UpdateParameter;
  const factory StorageCommandParameter.delete({
    required String destFilePath,
    required BucketKind bucketKind,
    required OperationType operationType,
  }) = DeleteParameter;

  @override
  Future<void> execute() {
    throw UnimplementedError();
  }
}
