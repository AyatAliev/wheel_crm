// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:wheel_crm/features/auth/presentation/auth_screen.dart' as _i1;
import 'package:wheel_crm/features/bottom_menu/bottom_menu_screen.dart' as _i2;
import 'package:wheel_crm/features/storage/storage_screen.dart' as _i3;
import 'package:wheel_crm/features/weclome/welcome_screen.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    BottomMenuRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomMenuScreen(),
      );
    },
    StorageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.StorageScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i5.PageRouteInfo<void> {
  const AuthRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BottomMenuScreen]
class BottomMenuRoute extends _i5.PageRouteInfo<void> {
  const BottomMenuRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BottomMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomMenuRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.StorageScreen]
class StorageRoute extends _i5.PageRouteInfo<void> {
  const StorageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          StorageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StorageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.WelcomeScreen]
class WelcomeRoute extends _i5.PageRouteInfo<void> {
  const WelcomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
