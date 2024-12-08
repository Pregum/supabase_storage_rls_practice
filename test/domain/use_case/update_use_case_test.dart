import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/config/my_provider_observer.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:flutter/services.dart';

import '../../mock/mock_obj.dart';
import '../../utils/create_container.dart';

class MockSupabaseStorageRepository extends Mock
    implements SupabaseStorageRepository {}

void main() {
  late SupabaseStorageRepositoryMock mockRepository;
  late ProviderContainer container;

  // Uint8List のフェイク値を登録
  setUpAll(() {
    registerFallbackValue(Uint8List(0)); // 空の Uint8List を登録
  });

  setUp(() {
    // Initialize the mock repository
    mockRepository = SupabaseStorageRepositoryMock();

    // Override the repository provider
    container = createContainer(overrides: [
      supabaseServiceProvider.overrideWithValue(MockSupabaseClient()),
      supabaseStorageRepositoryProvider.overrideWith(() => mockRepository),
    ]);
  });

  tearDown(() {
    container.dispose();
  });

  // diしていない場合は例外が発生することを確認する
  test('riverpod throw unimplemented test(service)', () {
    final cont = createContainer();
    try {
      cont.read(supabaseServiceProvider);
      fail('エラーが発生しない');
    } catch (e) {
      logger.e('error: $e');
      expect(e, isA<UnimplementedError>());
    }
  });

  /// サービスクラスがmockしたオブジェクトを参照していることを確認する
  test('riverpod test(service)', () {
    final service = container.read(supabaseServiceProvider);
    expect(service, isNotNull);
    expect(service, isA<MockSupabaseClient>());
  });

  // mockしている場合はbuildを実装すると例外が投げられないことを確認するテスト
  test('riverpod test(repository)', () {
    // ↓ がないとエラーになる
    // ignore: invalid_use_of_visible_for_overriding_member
    when(() => mockRepository.build()).thenAnswer((_) => mockRepository);

    final repository = container.read(supabaseStorageRepositoryProvider);
    expect(repository, isNotNull);
  });

  // mockしている場合はbuildを実装していないと例外が投げられることを確認するテスト
  test('riverpod with mock test(repository)', () {
    // // ↓ がないとエラーになる
    // when(() => mockRepository.build()).thenAnswer((_) => mockRepository);

    // 例外発生を確認する
    expect(
      () => container.read(supabaseStorageRepositoryProvider),
      throwsA((e) => e is TypeError),
    );
  });

  // モックでない場合はbuildメソッドが実装されているのでエラーにならないことを確認する
  test('riverpod without mock test(repository)', () {
    final cont = createContainer(observers: [
      MyProviderObserver()
    ], overrides: [
      supabaseServiceProvider.overrideWithValue(MockSupabaseClient()),
    ]);
    final repository = cont.read(supabaseStorageRepositoryProvider);
    expect(repository, isNotNull);
  });
}
