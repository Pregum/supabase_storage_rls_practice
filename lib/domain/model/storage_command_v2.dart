import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';

part 'storage_command_v2.freezed.dart';

sealed class StorageCommandParameterV2 {
  void setup();
  void execute();
  void teardown();
}

@freezed
class UploadCommandParameterV2
    with _$UploadCommandParameterV2
    implements StorageCommandParameterV2 {
  const UploadCommandParameterV2._();

  const factory UploadCommandParameterV2({
    @Default('') String sourceFilePath,
    @Default('') String destFilePath,
    @Default(BucketKind.a) final BucketKind bucketKind,
  }) = _UploadCommandParameterV2;

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

@freezed
class UpdateCommandParameterV2
    with _$UpdateCommandParameterV2
    implements StorageCommandParameterV2 {
  const UpdateCommandParameterV2._();

  const factory UpdateCommandParameterV2({
    required String sourceFilePath,
    required String destFilePath,
  }) = _UpdateCommandParameterV2;

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

// void test() {
//   const foo =
//       UploadCommandParameterV2(sourceFilePath: 'hoge', destFilePath: 'hoge');
//   switch (foo) {
//     case UploadCommandParameterV2():
//       break;
//     case UpdateCommandParameterV2():
//       break;
//   }
// }
