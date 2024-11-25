import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'supabase_service.g.dart';

/// [SupabaseClient] の初期化を行う FutureProvider
@riverpod
class SupabaseServiceFuture extends _$SupabaseServiceFuture {
  @override
  Future<SupabaseClient> build() async {
    final supabase = await _init();
    final client = supabase.client;
    return client;
  }

  Future<Supabase> _init() async {
    const supabaseURL = String.fromEnvironment('supabaseUrl');
    const anonKey = String.fromEnvironment('supabaseAnonKey');
    return await Supabase.initialize(
      url: supabaseURL,
      anonKey: anonKey,
    );
  }
}

/// [SupabaseClient] の提供を行う Provider
/// 実際の初期化は [SupabaseServiceFuture] で行う
@riverpod
SupabaseClient supabaseService(Ref ref) {
  throw UnimplementedError();
}
