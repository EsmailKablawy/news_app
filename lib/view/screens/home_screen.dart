import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../logic/controller/news_controller.dart';
import '../../utils/them.dart';
import '../widget/home/app_bar_widget.dart';
import '../widget/home/image_slider.dart';
import '../widget/home/news_widget.dart';
import '../widget/text_utils.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppBarWidget(),
                Imagesliders(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextUtils(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                      text: 'Latest News'),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1,
              child: NewsWidget(),
            )
          ],
        );
      }
    }));
  }
}
