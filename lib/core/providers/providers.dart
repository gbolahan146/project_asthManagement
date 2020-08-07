import 'package:asthma_management/views/home/homeViewModel.dart';
import 'package:asthma_management/views/profile2/profile2ViewModel.dart';
import 'package:asthma_management/views/login/loginViewModel.dart';
import 'package:asthma_management/views/signup/signupViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AmProviders {
  //The providers for dependency injection and state management are to added here
  //as the app will use MultiProvider
  static final providers = <SingleChildWidget>[
    //format for registering providers:
    //ChangeNotifierProvider(create: (_) => SplashScreen()),
    ChangeNotifierProvider(create: (_) => HomeViewModel()),
    ChangeNotifierProvider(create: (_) => SignupViewModel()),
    ChangeNotifierProvider(create: (_) => Profile2ViewModel()),
    ChangeNotifierProvider(create: (_) => LoginViewModel())
  ];
}
