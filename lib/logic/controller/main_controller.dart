
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:news_app/view/screens/catogery_screen.dart';
import 'package:news_app/view/screens/explore.dart';

import '../../view/screens/home_screen.dart';

class Maincontroller extends GetxController {
  RxInt currentIndex = 0.obs;
  final tabs =
      [HomeScreen(), ExploreScreen(),CatogeryScreen()].obs;
  
}
