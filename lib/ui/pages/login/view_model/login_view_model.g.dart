// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginViewModelHash() => r'bc615d2a88652aebdf8cca97cf7138c4993bfa8b';

/// See also [LoginViewModel].
@ProviderFor(LoginViewModel)
final loginViewModelProvider =
    AutoDisposeNotifierProvider<LoginViewModel, LoginViewModel>.internal(
  LoginViewModel.new,
  name: r'loginViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginViewModelHash,
  dependencies: <ProviderOrFamily>[supabaseAuthRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    supabaseAuthRepositoryProvider,
    ...?supabaseAuthRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$LoginViewModel = AutoDisposeNotifier<LoginViewModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
