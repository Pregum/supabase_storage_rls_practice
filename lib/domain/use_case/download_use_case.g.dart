// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$downloadUseCaseHash() => r'af0c53a5ab3bf26137532fe30f7ccce5a93079c3';

/// See also [DownloadUseCase].
@ProviderFor(DownloadUseCase)
final downloadUseCaseProvider =
    AutoDisposeNotifierProvider<DownloadUseCase, DownloadUseCase>.internal(
  DownloadUseCase.new,
  name: r'downloadUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$downloadUseCaseHash,
  dependencies: <ProviderOrFamily>[supabaseServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    supabaseServiceProvider,
    ...?supabaseServiceProvider.allTransitiveDependencies
  },
);

typedef _$DownloadUseCase = AutoDisposeNotifier<DownloadUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
