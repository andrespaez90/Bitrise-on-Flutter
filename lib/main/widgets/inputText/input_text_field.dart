import 'package:flutter/material.dart';

import '../../res/colors/main_colors.dart';
import '../../res/styles/text_styles.dart';

class InputTextField extends TextFormField {
  InputTextField({
    Key? key,
    String? labelText,
  }) : super(
          key: key,
          decoration: InputDecoration(
            labelStyle: TextStyles.bodyPurple,
            border: const UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MainColors.primary),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MainColors.primary),
            ),
            labelText: labelText,
          ),
        );
}
