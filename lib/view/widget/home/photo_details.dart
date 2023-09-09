import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/utils/them.dart';
import 'package:news_app/view/widget/text_utils.dart';

class PhotoDetails extends StatelessWidget {
  final String image;
  final String text;
  const PhotoDetails({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          Positioned(
              left: 15,
              bottom: 15,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: mainColor,
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Text(text,style: const TextStyle(fontSize: 16,color: Colors.white),),
                ),

              )
          )
        ],
      ),
    );
  }
}
