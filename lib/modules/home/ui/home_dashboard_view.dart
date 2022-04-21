import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main/res/colors/main_colors.dart';
import '../../../main/res/styles/text_styles.dart';
import '../../../main/widgets/buttons/widget_button.dart';
import '../cubit/home_dashboard_cubit.dart';
import 'items/item_user_app.dart';

class HomeDashboardView extends StatelessWidget {
  const HomeDashboardView({Key? key}) : super(key: key);

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
              Text('APPS', style: TextStyles.subTitleBold),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MainColors.primary)),
                border: const OutlineInputBorder(),
                hintText: 'Find an app',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                suffixIcon: const Icon(Icons.search)),
          ),
        ),
        Expanded(
          child: BlocBuilder<HomeDashboardCubit, HomeDashboardState>(
              buildWhen:
                  (HomeDashboardState previous, HomeDashboardState current) =>
                      previous.userApps != current.userApps,
              builder: (BuildContext context, HomeDashboardState state) {
                return ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: state.userApps.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (BuildContext context, int index) {
                      return ItemUserApp(app: state.userApps[index]);
                    });
              }),
        )
      ],
    );
  }
}
