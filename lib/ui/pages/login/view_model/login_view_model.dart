import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_auth_repository.dart';
import 'package:supabase_storage_rls_practice/ui/pages/login/login_page.dart';

part 'login_view_model.g.dart';

@Riverpod(dependencies: [SupabaseAuthRepository])
class LoginViewModel extends _$LoginViewModel {
  late final SupabaseAuthRepository _authRepository;

  @override
  LoginViewModel build() {
    final service = ref.read(supabaseAuthRepositoryProvider);
    _authRepository = service;
    return this;
  }

  Future<AuthResponse> signIn({required UserRole userRole}) async {
    switch (userRole) {
      case UserRole.userA:
        return await _authRepository.signInWithPassword(
          email: userRole.email,
          password: userRole.password,
        );
      case UserRole.userB:
        return await _authRepository.signInWithPassword(
          email: userRole.email,
          password: userRole.password,
        );
      case UserRole.anonymous:
        return await _authRepository.signInAnonymous();
    }
  }
}
