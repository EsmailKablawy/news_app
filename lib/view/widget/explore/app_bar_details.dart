import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppBarDeatails extends StatelessWidget {
  const AppBarDeatails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap:(){
              Get.back();
            },
            child: Container(
                padding: const EdgeInsets.only(left: 8),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6), shape: BoxShape.circle),
                child: const Icon(Icons.arrow_back_ios,)),
          ),
          Row(
            children: [
              Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.6),
                      shape: BoxShape.circle),
                  child: Image.asset('assets/images/icons8-save-24.png')),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    shape: BoxShape.circle),
                child: Image.asset('assets/images/icons8-notifications-78.png',
                    width: 35, height: 35),
              ),
            ],
          )
        ],
      ),
    );
  }
}
