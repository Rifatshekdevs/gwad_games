import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:gadwd_games/utils/custom_text_field_decoration2.dart';
import 'package:gadwd_games/views/bate_details.dart';
import 'package:gadwd_games/widgets/hexColor.dart';
import 'package:get/get.dart';

void displayBetWindow() {
  Get.bottomSheet(
    Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        color: hexToColor('#2F2F2F'),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Houston +4.5',
                  style: TextStyle(
                      color: AppColors.basicWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.local_atm_outlined,
                  color: AppColors.basicWhite,
                ),
                SizedBox(width: 180),
                Text(
                  '-102',
                  style: TextStyle(
                      color: AppColors.basicWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'SPREAD BETTING',
                  style: TextStyle(
                      color: AppColors.profileCircleColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      color: hexToColor('#2F2F2F'),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.basicWhite)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      style: TextStyle(color: AppColors.basicWhite),
                      decoration:
                          kInputDecoration(hintText: '\$', labelText: 'WAGER'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 100,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.lightOrange),
                      ),
                      onPressed: () {
                        Get.to(BetDetails());
                      },
                      child: Text(
                        'Bet',
                        style: TextStyle(
                            color: AppColors.basicWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    ),
    useRootNavigator: false,
  );
}
