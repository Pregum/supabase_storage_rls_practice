import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';

part 'supabase_auth_repository.g.dart';

/// 依存providerを指定しないと[_service] メンバが初期化されない
@Riverpod(dependencies: [supabaseService])
class SupabaseAuthRepository extends _$SupabaseAuthRepository {
  late final SupabaseClient _service;

  @override
  SupabaseAuthRepository build() {
    logger.d('SupabaseAuthRepository build');
    final service = ref.read(supabaseServiceProvider);
    _service = service;
    return this;
  }

  /// メールアドレスとパスワードでサインインする
  Future<AuthResponse> signInWithPassword({
    required String email,
    required String password,
  }) async {
    return await _service.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  /// 匿名でサインインする
  Future<AuthResponse> signInAnonymous() async {
    return await _service.auth.signInAnonymously();
  }

  /// ログアウトを行う
  Future<void> logout({SignOutScope scope = SignOutScope.local}) async {
    await _service.auth.signOut(scope: scope);
  }
}
