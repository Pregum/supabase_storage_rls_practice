// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supabase_storage_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseStorageRepositoryHash() =>
    r'7b94da6b3d7494f9357481243914ffe1271a9302';

/// See also [SupabaseStorageRepository].
@ProviderFor(SupabaseStorageRepository)
final supabaseStorageRepositoryProvider = AutoDisposeNotifierProvider<
    SupabaseStorageRepository, SupabaseStorageRepository>.internal(
  SupabaseStorageRepository.new,
  name: r'supabaseStorageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseStorageRepositoryHash,
  dependencies: <ProviderOrFamily>[supabaseServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    supabaseServiceProvider,
    ...?supabaseServiceProvider.allTransitiveDependencies
  },
);

typedef _$SupabaseStorageRepository
    = AutoDisposeNotifier<SupabaseStorageRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
