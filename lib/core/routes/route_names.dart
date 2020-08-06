

import 'package:asthma_management/views/home/homeView.dart';
import 'package:asthma_management/views/signup/signupView.dart';
import 'package:asthma_management/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteNames {
  ///Route names used through out the app will be specified as static constants here in this format
  static const String home = '/home';
  static const String signup = '/signup';
  static const String splashScreen = '/';

  static Map<String, Widget Function(BuildContext)> routes = {
    ///Named routes to be added here in this format
    RouteNames.home: (context) => Home(),
    RouteNames.signup: (context) => SignUp(),
    RouteNames.splashScreen: (context) => SplashScreen(),
  };
}
