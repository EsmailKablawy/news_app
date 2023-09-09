import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../widget/catogery/catogery_container_widget.dart';
import 'catogery_details.dart';

class CatogeryScreen extends StatelessWidget {
  CatogeryScreen({super.key});
  final List<String> photo = [
    'https://images.pexels.com/photos/209841/pexels-photo-209841.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2280571/pexels-photo-2280571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/378268/pexels-photo-378268.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];
  final List<String> text = ['Sports', 'science', 'technology'];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Text(
                'category',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline),
              ),
            ),
            InkWell(
                onTap: () {
                  Get.to(() => CatogeryDetails(
                    label: text[0],
                  ));
                },
                child: categoryContainer(image: photo[0], text: text[0])),
            const SizedBox(
              height: 10,
              child: Divider(
                color: Colors.black,
                height: 1.5,
              ),
            ),
            InkWell(
                onTap: () {
                  Get.to(() => CatogeryDetails(
                    label: text[1],
                  ));
                },
                child: categoryContainer(image: photo[1], text: text[1])),
            const SizedBox(
              height: 10,
              child: Divider(
                color: Colors.black,
                height: 1.5,
              ),
            ),
            InkWell(
                onTap: () {
                  Get.to(() => CatogeryDetails(
                    label: text[2],
                  ));
                },
                child: categoryContainer(image: photo[2], text: text[2])),
          ],
        ));
  }
}
