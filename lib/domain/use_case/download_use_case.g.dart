// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$downloadUseCaseHash() => r'f093cf98377bed5a1a4c90c94a25908e7359036c';

/// See also [DownloadUseCase].
@ProviderFor(DownloadUseCase)
final downloadUseCaseProvider =
    AutoDisposeNotifierProvider<DownloadUseCase, DownloadUseCase>.internal(
  DownloadUseCase.new,
  name: r'downloadUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$downloadUseCaseHash,
  dependencies: <ProviderOrFamily>[supabaseStorageRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    supabaseStorageRepositoryProvider,
    ...?supabaseStorageRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$DownloadUseCase = AutoDisposeNotifier<DownloadUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
