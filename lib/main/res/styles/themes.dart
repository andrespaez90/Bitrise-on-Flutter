import 'package:flutter/material.dart';

import '../colors/main_colors.dart';

mixin Themes {
  static ThemeData mainTheme = ThemeData(
      primaryColor: MainColors.primary,
      primaryColorDark: MainColors.primaryDark,
      backgroundColor: MainColors.background,
      appBarTheme: AppBarTheme(
        backgroundColor: MainColors.accent,
        foregroundColor: MainColors.primaryDark,
      ));
}
