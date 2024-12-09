import 'package:mocktail/mocktail.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_storage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MockSupabaseClient extends Mock implements SupabaseClient {}

class MockStorageFileApi extends Mock implements StorageFileApi {}

class MockSupabaseStorageClient extends Mock implements SupabaseStorageClient {}

/// [SupabaseStorageRepository] のモッククラス
/// 継承するクラスは[_$SupabaseStorageRepository] と同じ型である必要がある
///
// mocktailでのモックを生成する時には、生成されたファイル内のサブクラスを指定する
// ref: https://github.com/felangel/mocktail/issues/181#issuecomment-1407478530
class SupabaseStorageRepositoryMock
    extends AutoDisposeNotifier<SupabaseStorageRepository>
    with Mock
    implements SupabaseStorageRepository {}
