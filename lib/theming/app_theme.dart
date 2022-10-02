import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'text_theme.dart';

class AppTheme {
  static final appTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.white,
      titleTextStyle: AppTextTheme.txt15w500,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      ),
      toolbarHeight: 46,
      titleSpacing: 16,
      elevation: 0,
      centerTitle: true,
    ),
  );
}
