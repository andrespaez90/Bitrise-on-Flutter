import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../main/res/icons/app_icons.dart';
import '../../../../main/res/styles/text_styles.dart';
import '../../../../main/widgets/buttons/widget_button.dart';
import '../../../../main/widgets/inputText/input_text_field.dart';
import '../../../home/ui/home_page.dart';
import '../cubit/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginCubit cubit = context.read<LoginCubit>();
    return BlocListener<LoginCubit, LoginState>(
      listener: (_, LoginState state) {
        if (state.userAuthorized) {
          _navigateToHome(context);
        }
      },
      child: Scaffold(
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
                  onChange: cubit.onChangeToken,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: BlocBuilder<LoginCubit, LoginState>(
                      builder: (BuildContext context, LoginState state) {
                    return WidgetButton.primary(
                      enable: !state.isLaoding,
                      text: 'Ingresar',
                      onPressed: () => cubit.doLogin(),
                    );
                  }),
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
      ),
    );
  }

  void _navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
        context,
        PageRouteBuilder<void>(
          pageBuilder: (_, __, ___) => const HomePage(),
        ));
  }

  Future<void> openWebView() async {
    const String authUrl = 'https://devcenter.bitrise.io/api/authentication/';
    if (!await launch(authUrl)) {
      throw 'Could not launch $authUrl';
    }
  }
}
