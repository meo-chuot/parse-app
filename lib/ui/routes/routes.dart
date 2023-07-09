import 'package:app/ui/screens/home/home.dart';
import 'package:app/ui/screens/login/login.dart';
import 'package:app/ui/screens/splash/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String productList = '/products/list';
  static const String productDetail = '/products/detail';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => const SplashScreen(),
    login: (BuildContext context) => const LoginScreen(),
    home: (BuildContext context) => const HomeScreen(),
  };
}
