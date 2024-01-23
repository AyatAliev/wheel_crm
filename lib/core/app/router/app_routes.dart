import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_routes.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, initial: true),
        AutoRoute(
          page: BottomMenuRoute.page,
          children: [
            AutoRoute(page: StorageRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
