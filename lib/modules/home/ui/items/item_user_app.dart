import 'package:flutter/material.dart';

import '../../../../main/res/colors/main_colors.dart';
import '../../../../main/res/styles/text_styles.dart';
import '../../../../repositories/models/user_app_model.dart';

class ItemUserApp extends StatelessWidget {
  const ItemUserApp(
    this._app, {
    Key? key,
    GestureTapCallback? onTapListener,
  })  : _onTapListener = onTapListener,
        super(key: key);

  final UserAppModel _app;
  final GestureTapCallback? _onTapListener;

  @override
  Widget build(BuildContext context) {
    final String image = _app.image;
    return GestureDetector(
      onTap: _onTapListener,
      child: PhysicalModel(
        color: Colors.white,
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(6),
        elevation: 4,
        child: IntrinsicHeight(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: _app.isEnable
                      ? MainColors.green_success
                      : MainColors.red_error,
                  width: 6,
                ),
                Flexible(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Row(children: <Widget>[
                        if (image.isEmpty)
                          const Icon(
                            Icons.image_not_supported_outlined,
                            size: 50,
                          )
                        else
                          Image.network(
                            _app.image,
                            height: 50,
                          ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  _app.name,
                                  style: TextStyles.subTitleBold,
                                ),
                                Text(
                                  _app.owner,
                                  style: TextStyles.caption1,
                                )
                              ],
                            )),
                        const Spacer(),
                        if (_app.isEnable)
                          Icon(
                            Icons.check_circle_outline_outlined,
                            color: MainColors.green_success,
                          )
                        else
                          Icon(
                            Icons.cancel_outlined,
                            color: MainColors.red_error,
                          )
                      ])),
                ),
              ]),
        ),
      ),
    );
  }
}
