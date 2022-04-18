import 'package:flutter/material.dart';

import '../../../main/res/colors/main_colors.dart';
import '../../../main/res/styles/text_styles.dart';
import '../../../main/widgets/buttons/widget_button.dart';

class HomeProfileView extends StatelessWidget {
  const HomeProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          elevation: 0,
          title: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.storage_rounded,
                  color: MainColors.seconday,
                ),
              ),
              Text('User name', style: TextStyles.subTitleBold),
              const Spacer(),
              Expanded(
                  child: WidgetButton.primary(
                      text: 'Add App',
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                      onPressed: () {})),
            ],
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}
