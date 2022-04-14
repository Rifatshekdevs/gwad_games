import 'package:flutter/material.dart';
import '/utils/app_colors.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.color,
      required this.onpressed,
      required this.name})
      : super(key: key);
  final Color color;
  final Function()? onpressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
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
          child: Text(
            name,
            style: const TextStyle(color: AppColors.basicWhite, fontSize: 16),
          ),
        ),
      ),
    );
  }
}