import 'package:flutter/material.dart';

import '../../res/colors/main_colors.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton.primary({
    Key? key,
    this.text,
    this.enable = false,
    required this.onPressed,
  }) : super(key: key);

  final String? text;
  final bool enable;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[MainColors.primary, MainColors.primaryDark])),
      child: ElevatedButton(
        onPressed: enable ? onPressed : null,
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent, shadowColor: Colors.transparent),
        child: Text(text ?? ''),
      ),
    );
  }
}
