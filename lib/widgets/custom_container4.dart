import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';

class CustomContainer4 extends StatelessWidget {
  final String? text;
  final Icon? icon;
  const CustomContainer4({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text.toString(),
            style: TextStyle(
                color: AppColors.basicWhite, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    icon!.icon,
                    color: Colors.amber,
                  ),
                ]),
          ),
        ],
      ),
    ));
  }
}
