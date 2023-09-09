import 'package:get/get_navigation/src/routes/get_route.dart';
import '../logic/bindings/main_binding.dart';
import '../view/screens/main_screen.dart';

class AppRoutes {
  //initialRoute
  
  static const splash = Routes.MainScreen;

  static final routes = [
    GetPage(name: Routes.MainScreen, page: () => MainScreen(), bindings: [
      MainBinding(),
    ]),
    
  ];
}

class Routes {
  static const MainScreen = '/MainScreen';
 
}
