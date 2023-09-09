import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/view/screens/news_details_screen.dart';
import 'package:news_app/view/widget/text_utils.dart';

import '../../logic/controller/news_controller.dart';

class CatogeryDetails extends StatelessWidget {
  CatogeryDetails({
    super.key,
    required this.label,
  });
  final controller = Get.put(NewsController());
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            label,
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Container(
              height: MediaQuery.of(context).size.height / 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const SizedBox(height: 20,),
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.listResponse.length,
                      itemBuilder: (context, index) {
                        return NewsPosts(
                            onTap: () {
                              Get.to(() => NewsDetailsScreen(
                                    content: controller.listResponse[index]
                                        ['content'],
                                    image: controller.listResponse[index]
                                            ['urlToImage']
                                        .toString(),
                                    title: controller.listResponse[index]
                                            ['title']
                                        .toString(),
                                    description: controller.listResponse[index]
                                        ['description'],
                                  ));
                            },
                            title: controller.listResponse[index]['title']
                                .toString(),
                            image: controller.listResponse[index]['urlToImage']
                                .toString());
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        }));
  }

  Widget NewsPosts({
    required String title,
    required String image,
    required Function() onTap,
  }) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap,
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
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
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
