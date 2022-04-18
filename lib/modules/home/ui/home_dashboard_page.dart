import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/injector.dart';
import '../cubit/home_dashboard_cubit.dart';
import 'home_dashboard_view.dart';

class HomeDashboardPage extends StatelessWidget {
  const HomeDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeDashboardCubit>(
      create: (_) => HomeDashboardCubit(injector.get()),
      child: const HomeDashboardView(),
    );
  }
}
