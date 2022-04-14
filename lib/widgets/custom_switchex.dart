import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';

class CustomSwitchex extends StatelessWidget {
  final String? text;
  final bool? val;
  final Function onChangedMethod;
  const CustomSwitchex(
      {Key? key, this.text, required this.val, required this.onChangedMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text.toString(),
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.basicWhite)),
          CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Colors.blue,
              value: val!,
              onChanged: (newValue) {
                onChangedMethod(newValue);
              })
        ],
      ),
    );
  }
}
