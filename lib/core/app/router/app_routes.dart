import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/app/router/auth_route_guard.dart';
import 'package:wheel_crm/core/service/auth_service.dart';

import 'app_routes.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  final AuthService authService;

  AppRouter(this.authService);

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(
          page: BottomMenuRoute.page,
          initial: true,
          guards: [
            AuthGuard(authService: authService),
          ],
          children: [
            AutoRoute(page: HomeRoute.page),
          ],
        ),
      ];
}
