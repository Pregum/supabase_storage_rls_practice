import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:supabase_storage_rls_practice/routing/router.gr.dart';

@RoutePage()
class RootPage extends HookConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(
        supabaseServiceProvider.select((value) => value.auth.currentUser));

    useEffect(() {
      Future.microtask(() {
        if (currentUser == null) {
          logger.i('ログインしていないのでログイン画面に遷移します');
          if (context.mounted) {
            context.router.replace(const LoginRoute());
          }
        } else {
          logger.i('ログイン済みなのでホーム画面に遷移します');
          if (context.mounted) {
            context.router.navigate(const PlayGroundRoute());
          }
        }
      });
      return null;
    }, [currentUser]);

    return const AutoRouter();
  }
}
