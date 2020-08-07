

import 'package:asthma_management/views/bottombar/bottombar.dart';
import 'package:asthma_management/views/home/homeView.dart';
import 'package:asthma_management/views/profile2/profile2View.dart';
import 'package:asthma_management/views/home/homeView.dart';
import 'package:asthma_management/views/profile/profile1.dart';
import 'package:asthma_management/views/login/view/login.dart';
import 'package:asthma_management/views/signup/signupView.dart';
import 'package:asthma_management/views/medication_screen/medication_screen.dart';
import 'package:asthma_management/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteNames {
  ///Route names used through out the app will be specified as static constants here in this format
  static const String home = '/home';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String splashScreen = '/';
  static const String medicationScreen = '/medicationScreen';
  static const String profilepage1 = '/profilepage1';
  static const String profile2 = '/profile2';
  static const String bottomBar = '/bottomBar';

  static Map<String, Widget Function(BuildContext)> routes = {
    ///Named routes to be added here in this format
    RouteNames.home: (context) => Home(),
    RouteNames.login: (context) => LogIn(),
    RouteNames.signup: (context) => SignUp(),
    RouteNames.splashScreen: (context) => SplashScreen(),
    RouteNames.medicationScreen: (context) => MedicationScreen(),
    RouteNames.profile2: (context) => Profile2(),
    RouteNames.profilepage1: (context) => ProfilePage1(),
    RouteNames.bottomBar: (context) => MyHomePage()
  };
}
