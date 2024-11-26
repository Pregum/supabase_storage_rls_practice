// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$uploadUseCaseHash() => r'f9109bb1e6fbbaab401aad53ae30782197c28bbb';

/// See also [UploadUseCase].
@ProviderFor(UploadUseCase)
final uploadUseCaseProvider =
    AutoDisposeNotifierProvider<UploadUseCase, UploadUseCase>.internal(
  UploadUseCase.new,
  name: r'uploadUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$uploadUseCaseHash,
  dependencies: <ProviderOrFamily>[supabaseStorageRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    supabaseStorageRepositoryProvider,
    ...?supabaseStorageRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$UploadUseCase = AutoDisposeNotifier<UploadUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
