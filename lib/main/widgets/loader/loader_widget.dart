import 'dart:ui';

import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({
    Key? key,
    this.isLoader = false,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return body == null || !isLoader
        ? body
        : Stack(children: <Widget>[body, _LoaderWidget()]);
  }

  final Widget body;
  final bool isLoader;
}

class _LoaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2,
          sigmaY: 2,
        ),
        child: Container(
          color: Colors.white.withOpacity(0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircularProgressIndicator(),
            ],
          ),
        ));
  }
}
