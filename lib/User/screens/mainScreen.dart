import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:assignment_task/User/Shortcuts/cashier_screen.dart';
import 'package:assignment_task/User/Shortcuts/home_screen.dart';
import 'package:assignment_task/User/Shortcuts/menu_screen.dart';
import 'package:assignment_task/User/Shortcuts/raceScreen.dart';
import 'package:assignment_task/User/Shortcuts/result_screen.dart';
import 'package:assignment_task/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int _bottomNavIndex = 0;
   List<Widget> _pages = [
    RaceScreen(),
    ResultScreen(),
    HomeScreen(),
    CashierScreen(),
    MenuScreen()
  ];

  List<IconData> iconList = [
    Icons.looks,
    Icons.leaderboard,
    Icons.home,
    Icons.currency_rupee_sharp,
    Icons.menu
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_bottomNavIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: blueColor,
          icons: iconList,
          activeColor: wColor,
          inactiveColor: gColor,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 0,
          rightCornerRadius: 0,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        )
    );
  }
}
