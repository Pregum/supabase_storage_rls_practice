import 'package:auto_route/auto_route.dart';
import 'package:supabase_storage_rls_practice/routing/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RootRoute.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(page: PlayGroundRoute.page, path: 'play_ground'),
            AutoRoute(page: SettingRoute.page, path: 'setting'),
            AutoRoute(page: LoginRoute.page, path: 'login'),
          ],
        ),
        RedirectRoute(
          path: '*',
          redirectTo: '/',
        ),
      ];
}
