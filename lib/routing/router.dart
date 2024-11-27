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
          initial: true,
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: PlayGroundNavigationRoute.page, children: [
          AutoRoute(page: PlayGroundRoute.page),
          AutoRoute(page: SettingRoute.page),
        ]),
      ];
}
