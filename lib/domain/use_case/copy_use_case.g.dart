// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$copyUseCaseHash() => r'0c6e69bc824717422978b83e37b7a67046432104';

/// See also [CopyUseCase].
@ProviderFor(CopyUseCase)
final copyUseCaseProvider =
    AutoDisposeNotifierProvider<CopyUseCase, CopyUseCase>.internal(
  CopyUseCase.new,
  name: r'copyUseCaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$copyUseCaseHash,
  dependencies: <ProviderOrFamily>[supabaseStorageRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    supabaseStorageRepositoryProvider,
    ...?supabaseStorageRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$CopyUseCase = AutoDisposeNotifier<CopyUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package