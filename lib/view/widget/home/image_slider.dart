import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/utils/them.dart';
import 'package:news_app/view/widget/home/photo_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Imagesliders extends StatefulWidget {
  const Imagesliders({super.key});

  @override
  State<Imagesliders> createState() => _ImageslidersState();
}

class _ImageslidersState extends State<Imagesliders> {
  CarouselController carouselController = CarouselController();
  final List<String> photo = [
    'https://images.pexels.com/photos/209841/pexels-photo-209841.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2280571/pexels-photo-2280571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/378268/pexels-photo-378268.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];
  final List<String> text = [
    'Sports',
    'science',
    'technology'
    
  ];

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: 3,
          carouselController: carouselController,
          options: CarouselOptions(
            height: 210,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlayInterval: const Duration(seconds: 2),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentPage = index;
              });
            },
          ),
          itemBuilder: (context, index, realIndex) {
            return PhotoDetails(
              text: text[index],
              image: photo[index]);
          },
        ),
        Positioned(
            bottom: 0,
            left: 180,
            child: AnimatedSmoothIndicator(
              activeIndex: currentPage,
              count: 3,
              effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Colors.grey.withOpacity(0.6),
                  dotColor: dotColor),
            )),
      ],
    );
  }
}
