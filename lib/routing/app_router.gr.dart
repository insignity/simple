// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.authGuard})
      : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    RootRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const RootPage());
    },
    AuthRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AuthPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MainRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const RestaurantsPage());
    },
    MapRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const MapPage());
    },
    FavoritesRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const FavoritesPage());
    },
    ProfileRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const ProfilePage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(RootRoute.name, path: '/', guards: [
          authGuard
        ], children: [
          RouteConfig(MainRouter.name, path: 'main', parent: RootRoute.name),
          RouteConfig(MapRouter.name, path: 'map', parent: RootRoute.name),
          RouteConfig(FavoritesRouter.name,
              path: 'favorites', parent: RootRoute.name),
          RouteConfig(ProfileRouter.name,
              path: 'profile', parent: RootRoute.name, guards: [authGuard])
        ]),
        RouteConfig(AuthRoute.name, path: '/auth', fullMatch: true)
      ];
}

/// generated route for
/// [RootPage]
class RootRoute extends PageRouteInfo<void> {
  const RootRoute({List<PageRouteInfo>? children})
      : super(RootRoute.name, path: '/', initialChildren: children);

  static const String name = 'RootRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: '/auth');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [RestaurantsPage]
class MainRouter extends PageRouteInfo<void> {
  const MainRouter() : super(MainRouter.name, path: 'main');

  static const String name = 'MainRouter';
}

/// generated route for
/// [MapPage]
class MapRouter extends PageRouteInfo<void> {
  const MapRouter() : super(MapRouter.name, path: 'map');

  static const String name = 'MapRouter';
}

/// generated route for
/// [FavoritesPage]
class FavoritesRouter extends PageRouteInfo<void> {
  const FavoritesRouter() : super(FavoritesRouter.name, path: 'favorites');

  static const String name = 'FavoritesRouter';
}

/// generated route for
/// [ProfilePage]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
