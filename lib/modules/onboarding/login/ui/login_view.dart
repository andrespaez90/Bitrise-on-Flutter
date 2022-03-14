import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../main/res/icons/app_icons.dart';
import '../../../../main/res/styles/text_styles.dart';
import '../../../../main/widgets/buttons/widget_button.dart';
import '../../../../main/widgets/inputText/input_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                AppIcons.ic_profile,
                height: 120,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              InputTextField(
                labelText: 'Ingresa tu personal access token',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: WidgetButton.primary(
                  text: 'Ingresar',
                ),
              ),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'No tienes token? obtenlo',
                  style: TextStyles.smallGray,
                ),
                TextSpan(
                  text: ' Aqui!',
                  style: TextStyles.smallLink,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => openWebView(),
                )
              ])),
            ]),
      ),
    );
  }

  Future<void> openWebView() async {
    const String authUrl = 'https://devcenter.bitrise.io/api/authentication/';
    if (!await launch(authUrl)) {
      throw 'Could not launch $authUrl';
    }
  }
}
