// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supabase_auth_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseAuthRepositoryHash() =>
    r'd7ebf607aca6f3130bb856bb9b5fc9574e52f051';

/// 依存providerを指定しないと[_service] メンバが初期化されない
///
/// Copied from [SupabaseAuthRepository].
@ProviderFor(SupabaseAuthRepository)
final supabaseAuthRepositoryProvider = AutoDisposeNotifierProvider<
    SupabaseAuthRepository, SupabaseAuthRepository>.internal(
  SupabaseAuthRepository.new,
  name: r'supabaseAuthRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseAuthRepositoryHash,
  dependencies: <ProviderOrFamily>[supabaseServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    supabaseServiceProvider,
    ...?supabaseServiceProvider.allTransitiveDependencies
  },
);

typedef _$SupabaseAuthRepository = AutoDisposeNotifier<SupabaseAuthRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
