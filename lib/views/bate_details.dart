import 'package:flutter/material.dart';
import 'package:gadwd_games/controllers/login_controller.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:gadwd_games/utils/custom_text_field_decoration2.dart';
import 'package:gadwd_games/widgets/custom_switchex.dart';
import 'package:gadwd_games/widgets/hexColor.dart';
import 'package:get/get.dart';

class BetDetails extends StatefulWidget {
  @override
  State<BetDetails> createState() => _BetDetailsState();
}

class _BetDetailsState extends State<BetDetails> {
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Container(
              height: 330,
              color: AppColors.profileCircleColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Houston +4.5',
                                  style: TextStyle(color: AppColors.basicWhite),
                                ),
                                Icon(
                                  Icons.local_atm,
                                  color: AppColors.basicWhite,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'SPREAD BETTING',
                              style: TextStyle(color: AppColors.grey),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '-102',
                                  style: TextStyle(color: AppColors.basicWhite),
                                ),
                              ],
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  color: AppColors.profileCircleColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
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
                              decoration: kInputDecoration(
                                  hintText: '\$', labelText: 'WAGER'),
                            ),
                          ),
                        ),
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
                              decoration: kInputDecoration(
                                  hintText: '\$', labelText: 'To Win'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: AppColors.grey,
                    thickness: 3.0,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
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
                              decoration: kInputDecoration(
                                  hintText: '\$', labelText: 'WAGER'),
                            ),
                          ),
                        ),
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
                              decoration: kInputDecoration(
                                  hintText: '\$', labelText: 'To Win'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: AppColors.grey,
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.delete_outline,
                        color: AppColors.red,
                      ),
                      Text(
                        'Delete All',
                        style: TextStyle(color: AppColors.red),
                      )
                    ],
                  )
                ],
              ),
            ),
            CustomSwitchex(
                text: 'Always accept odds movement',
                val: loginController.val,
                onChangedMethod: (bool newval) {
                  setState(() {
                    loginController.val = newval;
                  });
                }),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.lightOrange)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            backgroundColor: AppColors.appBackgroundColor,
                            child: Container(
                              height: 400,
                              decoration: BoxDecoration(
                                color: AppColors.appBackgroundColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 16,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'When odds move, your Potential winnings change',
                                      style: TextStyle(
                                          color: AppColors.basicWhite,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum suscipit felis, leo imperdiet volutpat in faucibus enim. Felis enim.',
                                      style: TextStyle(
                                          color: Colors.white24,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum suscipit felis, leo imperdiet volutpat in faucibus enim. Felis enim.',
                                      style: TextStyle(
                                          color: Colors.white24,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 150,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      AppColors.lightOrange)),
                                          onPressed: () {},
                                          child: Text('Got it')),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'View full betting guide\n_______________________',
                                      style: TextStyle(
                                          color: Colors.white24,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Text('Bet Now')),
            )
          ],
        ),
      ),
    );
  }
}
