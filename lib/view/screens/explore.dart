import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/view/screens/news_details_screen.dart';
import 'package:news_app/view/widget/text_utils.dart';

import '../../logic/controller/news_controller.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});
  final controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return Container(
          height: MediaQuery.of(context).size.height / 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.only(top: 25, left: 10, bottom: 10),
                  child: TextUtils(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      text: 'Feed')),
                      const Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.listResponse.length,
                  itemBuilder: (context, index) {
                    return NewsPosts(
                      onTap: () {
                        Get.to(()=>NewsDetailsScreen(
                          content: controller.listResponse[index]['content'],
                          image: controller.listResponse[index]['urlToImage'].toString(),
                          title: controller.listResponse[index]['title'].toString(),
                          description:controller.listResponse[index]['description'],
                        ));
                      },
                      title: controller.listResponse[index]['title'].toString(),
                      image: controller.listResponse[index]['urlToImage'].toString()
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }
    }));
  }

  Widget NewsPosts(
    {
      required String title,
      required String image,
      required Function() onTap,
    }
  ) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap:onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.clip,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration:  BoxDecoration(
                image: DecorationImage(image: NetworkImage(image),
                fit: BoxFit.fill,
                ),
      
                  // color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
            const Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
