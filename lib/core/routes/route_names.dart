import 'package:asthma_management/views/home/homeView.dart';
import 'package:flutter/material.dart';


class RouteNames {
  ///Route names used through out the app will be specified as static constants here in this format
  static const String home = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    ///Named routes to be added here in this format
    RouteNames.home: (context) => Home()
  };
}