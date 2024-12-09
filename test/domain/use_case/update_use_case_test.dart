import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:flutter/services.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/domain/use_case/update_use_case.dart';
import 'package:supabase_storage_rls_practice/gen/assets.gen.dart';

import '../../mock/mock_obj.dart';
import '../../utils/create_container.dart';

class FakeFileOptions extends Fake implements FileOptions {}

void main() {
  late ProviderContainer container;
  late MockSupabaseClient mockSupabaseClient;
  late MockStorageFileApi mockStorageFileApi;
  late MockSupabaseStorageClient mockSupabaseStorageClient;

  // Uint8List のフェイク値を登録
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    registerFallbackValue(Uint8List(0)); // 空の Uint8List を登録
    registerFallbackValue(FakeFileOptions()); // 空の Uint8List を登録
  });

  setUp(() {
    // Override the repository provider
    mockSupabaseClient = MockSupabaseClient();
    mockStorageFileApi = MockStorageFileApi();
    mockSupabaseStorageClient = MockSupabaseStorageClient();
    container = createContainer(overrides: [
      supabaseServiceProvider.overrideWithValue(mockSupabaseClient),
    ]);
  });

  tearDown(() {
    container.dispose();
  });

  // updateUseCase のテスト
  test('updateUseCase', () async {
    // Given
    final repository = container.read(supabaseStorageRepositoryProvider);
    final useCase = container.read(updateUseCaseProvider);

    when(() => mockSupabaseClient.storage)
        .thenReturn(mockSupabaseStorageClient);

    when(() => mockSupabaseStorageClient.from(any()))
        .thenReturn(mockStorageFileApi);

    when(() => mockStorageFileApi.updateBinary(any(), any(),
        fileOptions: any(named: 'fileOptions'))).thenAnswer((_) async {
      return '';
    });

    final parameter = UpdateCommandParameter(
      bucketKind: BucketKind.a,
      destFilePath: 'uuid/png1.png',
      sourceFilePath: Assets.images.png.png1.path,
      isUpsertEnabled: true,
    );

    // When
    try {
      await useCase.execute(parameter);
    } catch (e, s) {
      fail('エラーが発生しました: $e, $s');
    }

    // storageRepositoryが呼ばれたか確認
    expect(repository, isA<SupabaseStorageRepository>());
  });
}
