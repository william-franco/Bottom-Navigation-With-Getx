import 'package:get/get.dart';

// Routes
import 'package:bottom_nav_with_getx/screens/bottom_nav_screen.dart';
import 'package:bottom_nav_with_getx/screens/intro_screen.dart';
import 'package:bottom_nav_with_getx/screens/splash_screen.dart';

class Routes {
  Routes._(); //this is to prevent anyone from instantiate this object

  static final animation = Transition.cupertino;

  static const String splash = '/splash';
  static const String intro = '/intro';
  static const String bottom = '/bottom';
  static const String error = '/setting';

  static final routes = [
    GetPage(
      name: bottom,
      page: () => BottomNavigationScreen(),
      transition: animation,
    ),
    GetPage(name: splash, page: () => SplashScreen(), transition: animation),
    GetPage(name: intro, page: () => IntroScreen(), transition: animation),
    // GetPage(name: error, page: () => ErrorPage())
  ];
}
