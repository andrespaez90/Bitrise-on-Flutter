import 'package:flutter/material.dart';

import 'di/injector.dart';
import 'main/application.dart';

void main() {
  injectDependencies();
  runApp(const Application());
}
