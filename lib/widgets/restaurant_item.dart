import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple/models/models.dart';
import 'package:simple/theming/app_icons.dart';
import 'package:simple/theming/app_text_theme.dart';

class RestaurantItem extends StatelessWidget {
  final RestaurantModel restaurant;
  final VoidCallback onTapIcon;

  const RestaurantItem({
    Key? key,
    required this.restaurant,
    required this.onTapIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool hasImage = false;
    bool hasAddress = false;
    if (restaurant.images != null && restaurant.images!.isNotEmpty) {
      hasImage = restaurant.images!.first.url.isNotEmpty;
    }
    if (restaurant.coords?.addressName != null) {
      hasAddress = restaurant.coords!.addressName!.isNotEmpty;
    }
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 234,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: SizedBox(
              height: 150,
              child: hasImage
                  ? Image.network(restaurant.images!.first.url)
                  : const ColoredBox(color: Colors.red),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 11, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        restaurant.title,
                        style: AppTextStyles.txt16w700,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        restaurant.description,
                        style: AppTextStyles.txt13w400,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (hasAddress)
                        Text(
                          restaurant.coords!.addressName!,
                          style: AppTextStyles.txt13w400,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                    ],
                  ),
                ),
              ),
              IconButton(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                onPressed: onTapIcon,
                icon: restaurant.isFavorite
                    ? SvgPicture.asset(AppIcons.favoritesFilled)
                    : SvgPicture.asset(AppIcons.favorites),
              ),
            ],
          )
        ],
      ),
    );
  }
}
