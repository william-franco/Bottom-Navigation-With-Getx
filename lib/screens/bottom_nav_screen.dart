import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bottom_nav_with_getx/controllers/bottom_nav_controller.dart';
import 'package:bottom_nav_with_getx/screens/home_screen.dart';
import 'package:bottom_nav_with_getx/screens/setting_screen.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  static final currentTab = [
    HomeScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      builder: (controller) {
        return Scaffold(
          body: currentTab[controller.currentIndex.value],
          bottomNavigationBar: SafeArea(
            child: CupertinoTabBar(
              onTap: controller.changeTabIndex,
              currentIndex: controller.currentIndex.value,
              items: [
                _bottomNavigationBarItem(
                  icon: Icons.list,
                  label: 'List',
                ),
                _bottomNavigationBarItem(
                  icon: Icons.settings,
                  label: 'Settings',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
