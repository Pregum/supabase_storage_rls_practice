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
            AutoRoute(page: PlayGroundRoute.page, path: PlayGroundRoute.name),
            AutoRoute(page: SettingRoute.page, path: SettingRoute.name),
            AutoRoute(
                page: LoginRoute.page, path: LoginRoute.name, initial: true),
          ],
        ),
        RedirectRoute(
          path: '*',
          redirectTo: '/',
        ),
      ];
}
