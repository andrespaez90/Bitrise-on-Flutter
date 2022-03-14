import 'package:flutter/material.dart';

import '../modules/onboarding/login/ui/login_page.dart';
import 'res/styles/themes.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.mainTheme,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(
          builder: (_) => const LoginPage(),
        );
      },
    );
  }
}
