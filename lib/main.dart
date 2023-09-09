import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/utils/them.dart';

import 'Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
    @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: themsApp.light,
        darkTheme: themsApp.dark,
      initialRoute:AppRoutes.splash ,
      getPages: AppRoutes.routes,
      locale: Get.deviceLocale,
      
    );
  }
}

