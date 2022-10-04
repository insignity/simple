import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple/models/models.dart';
import 'package:simple/theming/app_icons.dart';
import 'package:simple/theming/app_text_theme.dart';
import 'package:simple/theming/app_theme.dart';
import 'package:simple/utils/extensions/context_shortcuts.dart';

class RestaurantDetailsPage extends StatelessWidget {
  final RestaurantModel restaurant;

  const RestaurantDetailsPage({
    Key? key,
    required this.restaurant,
    @pathParam required String id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool hasImage = false;
    if (restaurant.images != null && restaurant.images!.isNotEmpty) {
      hasImage = restaurant.images!.first.url.isNotEmpty;
    }
    return ListView(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 200,
              child: hasImage
                  ? Image.network(restaurant.images!.first.url)
                  : const SizedBox(),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                ),
              ),
              height: 100,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.back,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      restaurant.title,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.txt15w500 + Colors.white,
                    ),
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      AppIcons.favorites,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16),
          child: Text(
            context.$.Description,
            style: AppTextStyles.txt13w400 + AppColors.grayDark,
          ),
        ),
        if (restaurant.description.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 3),
            child: Text(
              restaurant.description,
              style: AppTextStyles.txt16w400,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 16),
          child: Text(
            context.$.More,
            style: AppTextStyles.txt13w400.copyWith(
                  decoration: TextDecoration.underline,
                ) +
                AppColors.blueMagenta,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 16),
          child: Divider(),
        ),
        if (restaurant.schedule?.opening != null &&
            restaurant.schedule?.closing != null)
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  child: SvgPicture.asset(
                    AppIcons.clock,
                    height: 16,
                    width: 16,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  context.$.WorkFrom +
                      restaurant.schedule!.opening! +
                      context.$.till +
                      restaurant.schedule!.closing!,
                  style: AppTextStyles.txt16w400,
                ),
              ],
            ),
          ),
        if (restaurant.coords?.addressName != null) ...[
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  child: SvgPicture.asset(
                    AppIcons.point,
                    height: 16,
                    width: 16,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  restaurant.coords!.addressName!,
                  style: AppTextStyles.txt16w400,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: Divider(),
          ),
        ],
      ],
    );
  }
}
