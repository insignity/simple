import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple/pages/auth/auth_page.dart';
import 'package:simple/pages/favorites/favorites_page.dart';
import 'package:simple/pages/restaurants/restaurants_page.dart';
import 'package:simple/pages/map/map_page.dart';
import 'package:simple/pages/profile/profile_page.dart';
import 'package:simple/pages/root/root_page.dart';

import 'guards/auth_guard.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
        path: '/',
        page: RootPage,
        children: [
          AutoRoute(
              path: 'main',
              name: 'MainRouter',
              page: RestaurantsPage,
              children: []),
          AutoRoute(
            path: 'map',
            name: 'MapRouter',
            page: MapPage,
          ),
          AutoRoute(
            path: 'favorites',
            name: 'FavoritesRouter',
            page: FavoritesPage,
          ),
          AutoRoute(
            path: 'profile',
            name: 'ProfileRouter',
            page: ProfilePage,
            guards: [AuthGuard]
          ),
        ],
        guards: [AuthGuard]
    ),
    CustomRoute(
      path: '/auth',
      page: AuthPage,
      fullMatch: true,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}
