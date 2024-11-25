import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';

part 'storage_command_parameter.freezed.dart';

sealed class StorageCommandParameter {
  void setup();
  void execute();
  void teardown();
}

// TODO: 後で別ファイルへ分ける
@freezed
class UploadCommandParameter
    with _$UploadCommandParameter
    implements StorageCommandParameter {
  const UploadCommandParameter._();

  const factory UploadCommandParameter({
    @Default('') String sourceFilePath,
    @Default('') String destFilePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
  }) = _UploadCommandParameter;

  @override
  void execute() {
    // TODO: implement execute
  }

  @override
  void setup() {
    // TODO: implement setup
  }

  @override
  void teardown() {
    // TODO: implement teardown
  }
}

// TODO: 後で別ファイルへ分ける
@freezed
class UpdateCommandParameter
    with _$UpdateCommandParameter
    implements StorageCommandParameter {
  const UpdateCommandParameter._();

  const factory UpdateCommandParameter({
    required String sourceFilePath,
    required String destFilePath,
  }) = _UpdateCommandParameter;

  @override
  void execute() {
    // TODO: implement execute
  }

  @override
  void setup() {
    // TODO: implement setup
  }

  @override
  void teardown() {
    // TODO: implement teardown
  }
}
