import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple/routing/app_router.dart';
import 'package:simple/theming/app_icons.dart';
import 'package:simple/utils/extensions/context_shortcuts.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        RestaurantsRouter(),
        MapRouter(),
        FavoritesRouter(),
        ProfileRouter(),
      ],
      homeIndex: 0,
      builder: (context, child, __) {
        final tabsRouter = context.tabsRouter;
        final $ = context.$;

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.line),
                label: $.Line,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.map),
                label: $.Map,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.favorites),
                label: $.Favorites,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.person),
                label: $.Profile,
              ),
            ],
          ),
        );
      },
    );
  }
}
