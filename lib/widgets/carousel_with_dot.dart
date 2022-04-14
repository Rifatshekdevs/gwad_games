import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWitDot extends StatefulWidget {
  @override
  State<CarouselWitDot> createState() => _CarouselWitDotState();
}

class _CarouselWitDotState extends State<CarouselWitDot> {
  int activeIndex = 0;
  final imageList = [
    'images/bet.jpg',
    'images/bet.jpg',
    'images/bet.jpg',
    'images/bet.jpg',
    'images/bet.jpg',
    'images/bet.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: imageList.length,
            options: CarouselOptions(
                height: 200,
                onPageChanged: (index, realIndex) {
                  setState(() {
                    activeIndex = index;
                  });
                }),
            itemBuilder: (context, index, realIndex) {
              final item = imageList[index];
              return buildImage(item, index);
            },
          ),
          SizedBox(
            height: 10,
          ),
          buildIndicator()
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageList.length,
        effect: JumpingDotEffect(
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: AppColors.basicWhite,
        ),
      );

  Widget buildImage(String imageList, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: 200,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    imageList,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 150,
              bottom: 0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.lightOrange,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  minimumSize: Size(double.infinity, 40), //////// HERE
                ),
                onPressed: () {},
                child: Text('Bet Now'),
              ),
            ),
          ],
        ),
      );
}
