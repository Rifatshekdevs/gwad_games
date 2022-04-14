import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';

InputDecoration kInputDecoration(
    {required String hintText, required String labelText}) {
  return InputDecoration(
    labelText: labelText,
    labelStyle: TextStyle(color: AppColors.profileCircleColor),
    hintText: hintText,
    hintStyle: TextStyle(color: AppColors.basicWhite),
    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
  );
}
