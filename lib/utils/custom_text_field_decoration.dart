
import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';

Widget? suffixIcon;

final ktextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: const TextStyle(
    color: AppColors.hintTextColor,
  ),
  suffixIcon: suffixIcon,
  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.basicWhite),
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.basicWhite),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);
