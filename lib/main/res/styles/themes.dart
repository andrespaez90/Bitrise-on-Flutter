import 'package:flutter/material.dart';

import '../colors/main_colors.dart';

mixin Themes {
  static ThemeData mainTheme = ThemeData(
      primaryColor: MainColors.primary,
      primaryColorLight: MainColors.primary,
      primaryColorDark: MainColors.primaryDark,
      focusColor: MainColors.accent,
      inputDecorationTheme: const InputDecorationTheme().copyWith(
        suffixIconColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) {
            return MainColors.primary;
          }
          if (states.contains(MaterialState.error)) {
            return Colors.red;
          }
          return Colors.grey;
        }),
      ),
      backgroundColor: MainColors.background,
      appBarTheme: AppBarTheme(
        backgroundColor: MainColors.accent,
        foregroundColor: MainColors.primaryDark,
      ));
}
