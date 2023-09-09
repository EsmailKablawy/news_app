import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/logic/controller/news_controller.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget({super.key});
  final controller = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.listResponse.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      controller.listResponse[index]['title'].toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            controller.listResponse[index]['urlToImage']
                                .toString(),
                          ),
                          fit: BoxFit.fill),
                      // color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.grey,
              ),
            ],
          ),
        );
      },
    );
  }
}
