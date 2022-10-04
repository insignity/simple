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
    RestaurantsRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
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
    },
    RestaurantsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const RestaurantsPage());
    },
    RestaurantDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RestaurantDetailsRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: RestaurantDetailsPage(
              key: args.key, restaurant: args.restaurant, id: args.id));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(RootRoute.name, path: '/', guards: [
          authGuard
        ], children: [
          RouteConfig(RestaurantsRouter.name,
              path: 'restaurants',
              parent: RootRoute.name,
              children: [
                RouteConfig(RestaurantsRoute.name,
                    path: '', parent: RestaurantsRouter.name),
                RouteConfig(RestaurantDetailsRoute.name,
                    path: ':id',
                    parent: RestaurantsRouter.name,
                    usesPathAsKey: true)
              ]),
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
/// [EmptyRouterPage]
class RestaurantsRouter extends PageRouteInfo<void> {
  const RestaurantsRouter({List<PageRouteInfo>? children})
      : super(RestaurantsRouter.name,
            path: 'restaurants', initialChildren: children);

  static const String name = 'RestaurantsRouter';
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

/// generated route for
/// [RestaurantsPage]
class RestaurantsRoute extends PageRouteInfo<void> {
  const RestaurantsRoute() : super(RestaurantsRoute.name, path: '');

  static const String name = 'RestaurantsRoute';
}

/// generated route for
/// [RestaurantDetailsPage]
class RestaurantDetailsRoute extends PageRouteInfo<RestaurantDetailsRouteArgs> {
  RestaurantDetailsRoute(
      {Key? key, required RestaurantModel restaurant, required String id})
      : super(RestaurantDetailsRoute.name,
            path: ':id',
            args: RestaurantDetailsRouteArgs(
                key: key, restaurant: restaurant, id: id),
            rawPathParams: {'id': id});

  static const String name = 'RestaurantDetailsRoute';
}

class RestaurantDetailsRouteArgs {
  const RestaurantDetailsRouteArgs(
      {this.key, required this.restaurant, required this.id});

  final Key? key;

  final RestaurantModel restaurant;

  final String id;

  @override
  String toString() {
    return 'RestaurantDetailsRouteArgs{key: $key, restaurant: $restaurant, id: $id}';
  }
}
