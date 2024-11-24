import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';

part 'supabase_auth_repository.g.dart';

@riverpod
class SupabaseAuthRepository extends _$SupabaseAuthRepository {
  late final SupabaseClient _service;
  @override
  SupabaseAuthRepository build() {
    final supabase = ref.read(supabaseService);
    _service = supabase;
    return this;
  }

  /// メールアドレスとパスワードでサインインする
  Future<void> signInWithPassword({
    required String email,
    required String password,
  }) async {
    await _service.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }
}
