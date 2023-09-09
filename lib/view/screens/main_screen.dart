import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../logic/controller/main_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final controller = Get.find<Maincontroller>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            onTap: (index) {
              controller.currentIndex.value = index;
            },
            height: 50.0,
            animationCurve: Curves.easeInOut,
            backgroundColor: Colors.white,
            buttonBackgroundColor: Colors.white,
            index: controller.currentIndex.value,
            letIndexChange: (index) => true,
            color: Colors.black,
            animationDuration: const Duration(milliseconds: 300),
            items: [
              Icon(Icons.home_filled,
                  size: 30,
                  color: controller.currentIndex.value == 0
                      ? Colors.black
                      : Colors.grey),
              Icon(Icons.local_fire_department_outlined,
                  size: 30,
                  color: controller.currentIndex.value == 1
                      ? Colors.black
                      : Colors.grey),
              Icon(Icons.apps_rounded,
                  size: 30,
                  color: controller.currentIndex.value == 2
                      ? Colors.blue
                      : Colors.grey),
            ],
          ),
          body: IndexedStack(
              index: controller.currentIndex.value,
              children: controller.tabs.value),
        );
      }),
    );
  }
}
