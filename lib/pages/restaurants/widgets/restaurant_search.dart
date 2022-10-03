import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:simple/pages/restaurants/restaurants_store.dart';
import 'package:simple/theming/app_icons.dart';
import 'package:simple/theming/app_text_theme.dart';
import 'package:simple/theming/app_theme.dart';
import 'package:simple/utils/extensions/context_shortcuts.dart';

class RestaurantSearch extends StatelessWidget {
  final FocusNode? focusNode;

  const RestaurantSearch({Key? key, this.focusNode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = context.read<RestaurantsStore>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: TextFormField(
        onChanged: (value) => store.query = value,
        focusNode: focusNode ?? FocusNode(),
        decoration: InputDecoration(
          prefixIcon: SvgPicture.asset(
            AppIcons.search,
            fit: BoxFit.scaleDown,
            height: 12,
            width: 12,
          ),
          hintText: context.$.Search,
          hintStyle: AppTextStyles.txt13w400 + AppColors.grayDark,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE0E6ED)),
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.blueMagenta),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        style: AppTextStyles.txt13w400,
      ),
    );
  }
}
