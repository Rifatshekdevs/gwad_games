import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';

class CustomContainer3 extends StatelessWidget {
  final String? text;
  final String? text1;
  final Icon? icon;
  const CustomContainer3({
    required this.icon,
    required this.text,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Icon(
              icon!.icon,
              color: Colors.amber,
            ),
            Text(
              text.toString(),
              style: TextStyle(
                  color: AppColors.basicWhite, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 100,
            ),
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColors.lightOrange, width: 2)),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: Text(
                    text1.toString(),
                    style: TextStyle(
                        color: AppColors.lightOrange,
                        fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),
          ]),
        ),
      ],
    ));
  }
}
