import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:get/get.dart';

class Tabbarview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.23,
          ),
          Image.asset(
            'images/Alert.svg',
            color: AppColors.profileCircleColor,
            width: 100,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Something went wrong',
            style: TextStyle(
                fontSize: 18,
                color: AppColors.basicWhite,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "We're looking into it. Try again later",
            style: TextStyle(
                fontSize: 16,
                color: AppColors.profileCircleColor,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
