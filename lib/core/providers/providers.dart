
import 'package:provider/single_child_widget.dart';


class AmProviders {
  //The providers for dependency injection and state management are to added here
  //as the app will use MultiProvider
  static final providers = <SingleChildWidget>[
    //format for registering providers:
    //ChangeNotifierProvider(create: (_) => SplashScreen()),
  ];
}