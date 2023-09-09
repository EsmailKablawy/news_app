import 'package:get/get.dart';
import 'package:news_app/logic/controller/news_controller.dart';

import '../controller/main_controller.dart';



class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Maincontroller());
    Get.put(NewsController());
    
  }
}
