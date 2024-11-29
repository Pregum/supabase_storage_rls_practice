import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';

part 'storage_command_parameter.freezed.dart';

sealed class StorageCommandParameter {}

@freezed
class UploadCommandParameter
    with _$UploadCommandParameter
    implements StorageCommandParameter {
  const UploadCommandParameter._();

  const factory UploadCommandParameter({
    @Default('') String sourceFilePath,
    @Default('') String destFilePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
    @Default(false) bool isUpsertEnabled,
  }) = _UploadCommandParameter;
}

@freezed
class UpdateCommandParameter
    with _$UpdateCommandParameter
    implements StorageCommandParameter {
  const UpdateCommandParameter._();

  const factory UpdateCommandParameter({
    @Default('') String sourceFilePath,
    @Default('') String destFilePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
    @Default(false) bool isUpsertEnabled,
  }) = _UpdateCommandParameter;
}

@freezed
class MoveCommandParameter
    with _$MoveCommandParameter
    implements StorageCommandParameter {
  const MoveCommandParameter._();

  const factory MoveCommandParameter({
    @Default('') String oldFilePath,
    @Default('') String newFilePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
    BucketKind? newBucketKind,
  }) = _MoveCommandParameter;
}

@freezed
class DownloadCommandParameter
    with _$DownloadCommandParameter
    implements StorageCommandParameter {
  const DownloadCommandParameter._();

  const factory DownloadCommandParameter({
    @Default('') String filePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
  }) = _DownloadCommandParameter;
}

@freezed
class DeleteCommandParameter
    with _$DeleteCommandParameter
    implements StorageCommandParameter {
  const DeleteCommandParameter._();

  const factory DeleteCommandParameter({
    @Default('') String filePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
  }) = _DeleteCommandParameter;
}
