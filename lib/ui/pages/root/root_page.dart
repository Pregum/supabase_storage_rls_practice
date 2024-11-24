import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:supabase_storage_rls_practice/routing/router.gr.dart';

@RoutePage()
class RootPage extends HookConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      logger.i('RootPage#useEffect');
      final onChangedStream = ref.read(supabaseServiceProvider
          .select((value) => value.auth.onAuthStateChange));
      final subscription = onChangedStream.listen(
        (authState) {
          if (authState.event == AuthChangeEvent.signedIn) {
            final session = authState.session;
            if (session == null) {
              throw Exception('session is null');
            }
            logger.i('user.email: ${session.user.email} のユーザーでログインしました');
            if (context.mounted) {
              logger.i('routes: ${context.router.routeData.path}');
              context.router.replaceAll([
                const PlayGroundNavigationRoute(children: [
                  PlayGroundRoute(),
                ]),
              ]);
            }
          } else if (authState.event == AuthChangeEvent.signedOut) {
            logger.i('ログアウトしました, event: ${authState.event}');
          }
        },
      );

      final currentUser = ref.read(
          supabaseServiceProvider.select((value) => value.auth.currentUser));
      if (currentUser == null) {
        logger.i('ログインしていないのでログイン画面に遷移します');
        context.router.push(const LoginRoute());
      } else {
        logger.i('ログイン済みなのでホーム画面に遷移します');
        context.router.replaceAll([
          const PlayGroundNavigationRoute(children: [
            PlayGroundRoute(),
          ]),
        ]);
      }
      return () {
        subscription.cancel();
      };
    }, []);

    return const AutoRouter();
  }
}
