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
    ref.listen(
      supabaseServiceProvider.select((value) => value.auth.currentUser),
      (prev, next) {
        logger.d('prev: $prev, next: $next');
        if (next == null) {
          logger.i('ログインしていないのでログイン画面に遷移します');
          context.router.push(const LoginRoute());
        } else {
          logger.i('ログイン済みなのでホーム画面に遷移します');
          context.router.push(const PlayGroundRoute());
        }
      },
      onError: (error, stackTrace) {
        logger.e('error: $error, stackTrace: $stackTrace');
        context.router
            .pushAndPopUntil(const LoginRoute(), predicate: (route) => false);
      },
    );

    useEffect(() {
      logger.i('RootPage#useEffect');

      final next = ref.read(
          supabaseServiceProvider.select((value) => value.auth.currentUser));
      logger.d(' next: $next');
      if (next == null) {
        logger.i('ログインしていないのでログイン画面に遷移します');
        context.router.push(const LoginRoute());
      } else {
        logger.i('ログイン済みなのでホーム画面に遷移します');
        context.router.push(const PlayGroundRoute());
      }
      return () {};
    }, []);

    return const AutoRouter();
  }
}
