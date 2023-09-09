import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/utils/them.dart';
import 'package:news_app/view/widget/text_utils.dart';

class containerAuthor extends StatelessWidget {
  const containerAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/unnamed.png')),
                  shape: BoxShape.circle),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextUtils(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    text: 'CNA'),
                SizedBox(
                  height: 5,
                ),
                TextUtils(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                    text: 'September,21,2032'),
              ],
            )
          ],
        ),
        Container(
          width: 100,
          padding: const EdgeInsets.symmetric(vertical: 5,),
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(16)
          ),
          
          child: const Align(
            alignment: Alignment.center,
            child: Text('Follow',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
        )
      ]),
    );
  }
}
