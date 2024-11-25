import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_auth_repository.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:supabase_storage_rls_practice/routing/router.gr.dart';

@RoutePage()
class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(
        supabaseServiceProvider.select((value) => value.auth.currentUser));

    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              children: [
                const Text('ユーザーid'),
                Text(user?.id.toString() ?? ''),
                const Text('ユーザーのメールアドレス'),
                Text(user?.email ?? ''),
                const Text('ユーザーのaud'),
                Text(user?.aud ?? ''),
                const Text('匿名ユーザー(is_anonymous)のフラグ'),
                Text(user?.isAnonymous.toString() ?? ''),
                const Text('プロバイダ情報'),
                Text(
                  user?.identities?.map((e) => e.provider).toString() ?? '',
                  maxLines: null,
                ),
                const Gap(24),
                FilledButton(
                  child: const Text('ログアウト'),
                  onPressed: () async {
                    final authRepository =
                        ref.read(supabaseAuthRepositoryProvider);
                    await authRepository.logout();
                    if (context.mounted) {
                      context.router.replaceAll([const LoginRoute()]);
                    }
                  },
                ),
                const Gap(24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
