import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final String? text;
  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;
  final String? text5;
  final String? extraText1;
  final String? extraText2;
  final Icon? icon;
  const CustomContainer({
    required this.icon,
    required this.text,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.extraText1,
    required this.extraText2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(
            icon!.icon,
            color: Colors.amber,
          ),
          Text(
            text.toString(),
            style: TextStyle(
                color: AppColors.basicWhite, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(5),
                border:
                    Border.all(color: AppColors.profileCircleColor, width: 2)),
            child: Center(
                child: Text(
              text1.toString(),
              style: TextStyle(
                  color: AppColors.basicWhite, fontWeight: FontWeight.bold),
            )),
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.lightOrange, width: 2)),
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Center(
                    child: Text(
                  text2.toString(),
                  style: TextStyle(
                      color: AppColors.basicWhite, fontWeight: FontWeight.bold),
                )),
                Center(
                    child: Text(
                  extraText1.toString(),
                  style: TextStyle(
                      color: AppColors.lightOrange,
                      fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.green, width: 2)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Icon(
                    Icons.arrow_drop_up,
                    size: 25,
                    color: AppColors.green,
                  ),
                ),
                Text(
                  text3.toString(),
                  style: TextStyle(
                      color: AppColors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.red, width: 2)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                    color: AppColors.red,
                  ),
                ),
                Text(
                  extraText2.toString(),
                  style: TextStyle(
                      color: AppColors.basicWhite, fontWeight: FontWeight.bold),
                ),
                Text(
                  text3.toString(),
                  style: TextStyle(
                      color: AppColors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ]),
      ],
    ));
  }
}
