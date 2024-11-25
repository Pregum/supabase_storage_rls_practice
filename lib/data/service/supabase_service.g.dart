// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supabase_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseServiceHash() => r'70c87189c5e7603b89f6bc5fdf50f2b13105b857';

/// [SupabaseClient] の提供を行う Provider
/// 実際の初期化は [SupabaseServiceFuture] で行う
///
/// Copied from [supabaseService].
@ProviderFor(supabaseService)
final supabaseServiceProvider = AutoDisposeProvider<SupabaseClient>.internal(
  supabaseService,
  name: r'supabaseServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SupabaseServiceRef = AutoDisposeProviderRef<SupabaseClient>;
String _$supabaseServiceFutureHash() =>
    r'0165213c89c7e388e748193f3cbaa04a681b4ec5';

/// [SupabaseClient] の初期化を行う FutureProvider
///
/// Copied from [SupabaseServiceFuture].
@ProviderFor(SupabaseServiceFuture)
final supabaseServiceFutureProvider = AutoDisposeAsyncNotifierProvider<
    SupabaseServiceFuture, SupabaseClient>.internal(
  SupabaseServiceFuture.new,
  name: r'supabaseServiceFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseServiceFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SupabaseServiceFuture = AutoDisposeAsyncNotifier<SupabaseClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
