import 'package:flutter/material.dart';
import '/utils/app_colors.dart';
import 'package:get/get.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2(
      {Key? key,
      required this.color,
      required this.onpressed,
      required this.name,
      required this.icon,
      })
      : super(key: key);
  final Color color;
  final Function()? onpressed;
  final String name;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 25.0),
      child: Material(
        elevation: 0.0,
        color: color,
        borderRadius: BorderRadius.circular(4.0),
        child: MaterialButton(
          onPressed: () {
            onpressed!();
          },
          minWidth: Get.width,
          height: 46,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 10.0),
              Text(
                name,
                style: const TextStyle(color: AppColors.basicWhite, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}