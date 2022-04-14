import 'package:flutter/material.dart';
import '/utils/app_colors.dart';
import 'package:get/get.dart';
import 'custom_text_field_decoration.dart';

class CustomTextFieldContainer extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool obscure;
  final Widget? suffixIcon;
  const CustomTextFieldContainer({
    @required this.hintText,
    @required this.controller,
    required this.obscure,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 74,
        width: Get.width,
        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.multiply,
            color: AppColors.appBackgroundColor,
            borderRadius: BorderRadius.circular(4.0)),
        child: TextFormField(
          obscureText: obscure,
          style: const TextStyle(color: AppColors.basicWhite),
          controller: controller,
          validator: (value) {
            if (controller!.text.isEmpty) {
              return "This field can't be empty";
            }

            return null;
          },
          cursorColor: AppColors.basicWhite,
          decoration: ktextFieldDecoration.copyWith(
            hintText: hintText!,
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
