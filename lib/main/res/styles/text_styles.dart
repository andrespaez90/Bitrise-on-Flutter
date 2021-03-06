import 'package:flutter/material.dart';

import '../colors/font_colors.dart';

mixin TextStyles {
  static TextStyle body = const TextStyle(fontSize: 14);
  static TextStyle bodyGray = body.copyWith(color: FontColors.grayDrak);
  static TextStyle bodyPurple = body.copyWith(color: FontColors.purple);

  static TextStyle small = const TextStyle(fontSize: 10);
  static TextStyle smallGray = small.copyWith(color: FontColors.grayDrak);
  static TextStyle smallPurple = small.copyWith(color: FontColors.purple);

  static TextStyle smallLink = TextStyle(
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.underline,
    fontSize: 10,
    color: FontColors.purple,
  );

  static TextStyle caption1 = const TextStyle(fontSize: 12);
  static TextStyle caption1Gray = small.copyWith(color: FontColors.grayDrak);

  static TextStyle subTitle = const TextStyle(fontSize: 16);
  static TextStyle subTitleBold =
      subTitle.copyWith(fontWeight: FontWeight.bold);
}
