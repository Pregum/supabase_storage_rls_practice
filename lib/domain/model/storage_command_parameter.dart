import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';

part 'storage_command_parameter.freezed.dart';

sealed class StorageCommandParameter {
  String get bucketName;
  String get methodName;
  Map<String, Object> get arguments;
}

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

  @override
  Map<String, Object> get arguments => {
        'sourceFilePath': sourceFilePath,
        'destFilePath': destFilePath,
        'isUpsertEnabled': isUpsertEnabled,
      };

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'uploadBinary';
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

  @override
  Map<String, Object> get arguments => {
        'sourceFilePath': sourceFilePath,
        'destFilePath': destFilePath,
        'isUpsertEnabled': isUpsertEnabled,
      };

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'updateBinary';
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

  @override
  Map<String, Object> get arguments {
    final args = {
      'oldFilePath': oldFilePath,
      'newFilePath': newFilePath,
    };
    if (newBucketKind != null) {
      args['newBucketKind'] = newBucketKind!.name;
    }
    return args;
  }

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'move';
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

  @override
  Map<String, Object> get arguments => {
        'filePath': filePath,
      };

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'download';
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

  @override
  Map<String, Object> get arguments {
    final args = {
      'directoryPath': directoryPath,
    };
    if (limit != null) {
      args['limit'] = limit.toString();
    }
    if (offset != null) {
      args['offset'] = offset.toString();
    }
    if (search != null) {
      args['search'] = search!;
    }
    return args;
  }

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'list';
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

  @override
  Map<String, Object> get arguments {
    final args = {
      'sourceFilePath': sourceFilePath,
      'destFilePath': destFilePath,
    };
    if (newBucketKind != null) {
      args['newBucketKind'] = newBucketKind!.name;
    }
    return args;
  }

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'copy';
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

  @override
  Map<String, Object> get arguments => {
        'filePath': filePath,
      };

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'remove';
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

  @override
  Map<String, Object> get arguments => {
        'filePath': filePath,
        'expiresIn': expiresIn,
      };

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'createSignedUrl';
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

  @override
  Map<String, Object> get arguments => {
        'filePaths': filePaths,
        'expiresIn': expiresIn,
      };

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'createSignedUrls';
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

  @override
  Map<String, Object> get arguments => {
        'filePath': filePath,
        'expiresIn': expiresIn,
      };

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'createSignedUploadUrl';
}

@freezed
class UploadToSignedUrlCommandParameter
    with _$UploadToSignedUrlCommandParameter
    implements StorageCommandParameter {
  const UploadToSignedUrlCommandParameter._();
  const factory UploadToSignedUrlCommandParameter({
    /// アップロード先のパス
    @Default('') String destinationPath,
    @Default(BucketKind.a) BucketKind bucketKind,
    @Default('') String token,

    /// アップロードに使用するバイナリデータのパス
    @Default('') String dataPathToUpload,
  }) = _UploadToSignedUrlCommandParameter;

  @override
  Map<String, Object> get arguments => {
        'destinationPath': destinationPath,
        'token': token,
        'dataPathToUpload': dataPathToUpload,
      };

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'uploadBinaryToSignedUrl';
}

@freezed
class GetPublicUrlCommandParameter
    with _$GetPublicUrlCommandParameter
    implements StorageCommandParameter {
  const GetPublicUrlCommandParameter._();
  const factory GetPublicUrlCommandParameter({
    @Default('') String filePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
  }) = _GetPublicUrlCommandParameter;

  @override
  Map<String, Object> get arguments => {
        'filePath': filePath,
      };

  @override
  String get bucketName => bucketKind.name;

  @override
  String get methodName => 'getPublicUrl';
}
