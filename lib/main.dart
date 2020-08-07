import 'package:asthma_management/core/providers/providers.dart';
import 'package:asthma_management/core/routes/route_generator.dart';
import 'package:asthma_management/core/routes/route_names.dart';
import 'package:asthma_management/views/home/homeView.dart';
import 'package:asthma_management/views/home/homeViewModel.dart';
import 'package:asthma_management/views/medication_screen/medication_screen.dart';
import 'package:asthma_management/views/signup/signupView.dart';
import 'package:asthma_management/views/signup/signupViewModel.dart';
import 'package:asthma_management/views/splash_screen/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());

  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (BuildContext context) => MyApp(),
  // ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AmProviders.providers,
      child: GetMaterialApp(
        // locale: DevicePreview.of(context).locale,
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Asthma Management',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        routes: RouteNames.routes,
        initialRoute: RouteNames.splashScreen,
        
      ),
    );
  }
}