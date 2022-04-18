import 'package:flutter/material.dart';

import '../../../main/res/colors/main_colors.dart';
import 'home_dashboard_page.dart';
import 'home_profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _containerPager = const <Widget>[
    HomeDashboardPage(),
    HomeProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _containerPager[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: MainColors.primary,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'Dashboard'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
