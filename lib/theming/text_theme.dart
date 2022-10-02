import 'package:flutter/material.dart';

abstract class AppFonts {
  static const String manrope = 'Manrope';
}

class AppTextTheme {
  static const txt15w500 = TextStyle(
    fontFamily: AppFonts.manrope,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Colors.black,
  );

  static const txt14w400 = TextStyle(
    fontFamily: AppFonts.manrope,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.black,
  );

  static const txt16w700 = TextStyle(
    fontFamily: AppFonts.manrope,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.black,
  );
}

extension AppTextStyleExtension on TextStyle {
  TextStyle operator +(Color? color) {
    return copyWith(color: color);
  }
}
