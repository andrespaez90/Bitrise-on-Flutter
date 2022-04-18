import 'package:flutter/material.dart';

import '../../res/colors/main_colors.dart';

class WidgetButton extends StatelessWidget {
  WidgetButton.primary({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.enable = true,
  })  : _colors = <Color>[MainColors.primary, MainColors.primaryDark],
        super(key: key);

  final String? text;
  final bool enable;
  final VoidCallback onPressed;
  final List<Color> _colors;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: _colors,
      )),
      child: icon == null
          ? ElevatedButton(
              onPressed: enable ? onPressed : null,
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, shadowColor: Colors.transparent),
              child: Text(
                text ?? '',
              ),
            )
          : ElevatedButton.icon(
              onPressed: enable ? onPressed : null,
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, shadowColor: Colors.transparent),
              icon: icon!,
              label: Text(
                text ?? '',
              )),
    );
  }
}
