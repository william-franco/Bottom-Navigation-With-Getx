import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bottom_nav_with_getx/controllers/bottom_nav_controller.dart';
import 'package:bottom_nav_with_getx/controllers/theme_controller.dart';
import 'package:bottom_nav_with_getx/routes/routes.dart';
import 'package:bottom_nav_with_getx/themes/custom_theme.dart';

void main() {
  Get.lazyPut<ThemeController>(() => ThemeController());
  Get.lazyPut<BottomNavController>(() => BottomNavController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeController.to.getThemeModeFromPreferences();
    return GetMaterialApp(
      title: 'Bottom Nav With Getx',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      getPages: Routes.routes,
      initialRoute: Routes.splash,
    );
  }
}
