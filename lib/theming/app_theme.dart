import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_text_theme.dart';

part 'app_input_decoraion.dart';

part 'app_colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.white,
      titleTextStyle: AppTextStyles.txt15w500,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      ),
      toolbarHeight: 46,
      titleSpacing: 16,
      elevation: 0,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(AppColors.blueMagenta),
      ),
    ),
    backgroundColor: const Color(0xFFE5E5E5),
    fontFamily: AppFonts.manrope,
    inputDecorationTheme: AppInputDecorationTheme.mobile,
  );
}
