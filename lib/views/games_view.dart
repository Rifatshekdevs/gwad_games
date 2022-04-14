import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:gadwd_games/widgets/custom_row.dart';
import 'package:gadwd_games/widgets/hexColor.dart';

class GamesView extends StatefulWidget {
  const GamesView({Key? key}) : super(key: key);

  @override
  _GamesViewState createState() => _GamesViewState();
}

class _GamesViewState extends State<GamesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.appBarColor,
        title: Text('Games'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 200),
                    child: Text(
                      'Exclusive Events',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.basicWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      height: 380,
                      width: 370,
                      decoration: BoxDecoration(
                        color: AppColors.profileCircleColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              child: Image.asset(
                                'images/bet.jpg',
                                fit: BoxFit.fitWidth,
                                height: 120,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 12),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                            colors: [
                                              AppColors.lightOrange,
                                              AppColors.red,
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          )),
                                      child: Icon(
                                        Icons.person_outline,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Blitzingv for Bucks',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.basicWhite,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '69 Games',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Win big in this exclusive event',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: AppColors.basicWhite,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Match code: ECW-58D',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '\$100',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: AppColors.green,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'PRIZE POOL',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: AppColors.appBackgroundColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'Players: ',
                                    style: TextStyle(
                                        color: AppColors.profileCircleColor),
                                  ),
                                  Text(
                                    '*',
                                    style:
                                        TextStyle(color: AppColors.basicWhite),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'End in: ',
                                    style: TextStyle(
                                        color: AppColors.profileCircleColor),
                                  ),
                                  Text(
                                    '10:10',
                                    style:
                                        TextStyle(color: AppColors.basicWhite),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Entry: ',
                                    style: TextStyle(
                                        color: AppColors.profileCircleColor),
                                  ),
                                  Text(
                                    'Free',
                                    style:
                                        TextStyle(color: AppColors.basicWhite),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          SizedBox(
                            height: 50,
                            width: 300,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.lightOrange),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Play Now',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Live Events',
                              style: TextStyle(
                                  color: AppColors.basicWhite,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Dont's miss out on the fun happening now",
                              style: TextStyle(
                                  color: AppColors.profileCircleColor)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('See All',
                              style: TextStyle(
                                  color: AppColors.basicWhite,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          Text('',
                              style: TextStyle(
                                  color: AppColors.basicWhite,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomRow(
                            color: hexToColor('#431A52'),
                            color1: hexToColor('#431A52'),
                            color2: hexToColor('#6E0593')),
                        SizedBox(
                          width: 10,
                        ),
                        CustomRow(
                            color: hexToColor('#431A52'),
                            color1: hexToColor('#431A52'),
                            color2: hexToColor('#6E0593')),
                        SizedBox(
                          width: 10,
                        ),
                        CustomRow(
                            color: hexToColor('#431A52'),
                            color1: hexToColor('#431A52'),
                            color2: hexToColor('#6E0593')),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
