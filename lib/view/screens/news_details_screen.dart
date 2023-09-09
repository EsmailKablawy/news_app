import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/utils/them.dart';
import 'package:news_app/view/widget/text_utils.dart';
import 'package:readmore/readmore.dart';

import '../widget/explore/app_bar_details.dart';
import '../widget/explore/container_auther_widget.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({
    super.key,
    required this.image,
    required this.title, required this.description, required this.content,
  });
  final String image;
  final String title;
  final String description;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  // color: Colors.green,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              child: Stack(
                children: [
                  const Positioned(
                      height: 150,
                      left: 10,
                      right: 10,
                      child: AppBarDeatails()),
                  Positioned(
                      bottom: 10,
                      left: 12,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        // color: Colors.amber,
                        padding: const EdgeInsets.symmetric(vertical: 20),

                        child: Text(
                          title,
                          overflow: TextOverflow.clip,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const containerAuthor(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children:  [
                  TextUtils(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      text: description),
                  ReadMoreText(
                    content,
                    trimLength: 3,
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    textAlign: TextAlign.justify,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Show Less',
                    lessStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                    moreStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                    style: const TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
