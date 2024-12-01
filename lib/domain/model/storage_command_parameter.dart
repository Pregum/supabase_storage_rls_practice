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
class ListCommandParameter
    with _$ListCommandParameter
    implements StorageCommandParameter {
  const ListCommandParameter._();
  const factory ListCommandParameter({
    @Default(BucketKind.a) BucketKind bucketKind,
    @Default('') String directoryPath,
    int? limit,
    int? offset,
    String? search,
  }) = _ListCommandParameter;
}

@freezed
class CopyCommandParameter
    with _$CopyCommandParameter
    implements StorageCommandParameter {
  const CopyCommandParameter._();
  const factory CopyCommandParameter({
    @Default('') String sourceFilePath,
    @Default('') String destFilePath,
    @Default(BucketKind.a) BucketKind bucketKind,
    BucketKind? newBucketKind,
  }) = _CopyCommandParameter;
}

@freezed
class RemoveCommandParameter
    with _$RemoveCommandParameter
    implements StorageCommandParameter {
  const RemoveCommandParameter._();

  const factory RemoveCommandParameter({
    @Default('') String filePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
  }) = _DeleteCommandParameter;
}

@freezed
class CreateSignedUrlCommandParameter
    with _$CreateSignedUrlCommandParameter
    implements StorageCommandParameter {
  const CreateSignedUrlCommandParameter._();
  const factory CreateSignedUrlCommandParameter({
    @Default('') String filePath,
    @Default(BucketKind.a) final BucketKind bucketKind,

    /// 期限切れになる秒数 e.g.) 60 = 1分
    @Default(60) int expiresIn,
  }) = _CreateSignedUrlCommandParameter;
}

@freezed
class CreateSignedUrlsCommandParameter
    with _$CreateSignedUrlsCommandParameter
    implements StorageCommandParameter {
  const CreateSignedUrlsCommandParameter._();
  const factory CreateSignedUrlsCommandParameter({
    @Default([]) List<String> filePaths,
    @Default(BucketKind.a) final BucketKind bucketKind,

    /// 期限切れになる秒数 e.g.) 60 = 1分
    @Default(60) int expiresIn,
  }) = _CreateSignedUrlsCommandParameter;
}

@freezed
class CreateSignedUploadUrlCommandParameter
    with _$CreateSignedUploadUrlCommandParameter
    implements StorageCommandParameter {
  const CreateSignedUploadUrlCommandParameter._();

  const factory CreateSignedUploadUrlCommandParameter({
    @Default('') String filePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
    @Default(60) int expiresIn,
  }) = _CreateSignedUploadUrlCommandParameter;
}
