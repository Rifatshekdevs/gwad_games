import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:gadwd_games/widgets/hexColor.dart';

class CustomRow extends StatelessWidget {
  final Color color;
  final Color color1;
  final Color color2;
  CustomRow({
    required this.color,
    required this.color1,
    required this.color2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220,
        width: 250,
        decoration: BoxDecoration(
          color: AppColors.appBarColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color,
                    color,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 2,
                    left: 5,
                    child: Container(
                      height: 15,
                      width: 150,
                      decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(2)),
                      child: Row(children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.alarm,
                          size: 10,
                          color: Colors.white24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'End in:00:02:42:35',
                          style: TextStyle(color: Colors.white24, fontSize: 10),
                        ),
                      ]),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 25,
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          color: color2,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        '\$300',
                        style: TextStyle(
                            color: AppColors.basicWhite, fontSize: 18),
                      )),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Winner Take All ',
                  style: TextStyle(
                      color: AppColors.basicWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Player:*',
                        style: TextStyle(
                            color: AppColors.profileCircleColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Entry:\$5',
                        style: TextStyle(
                            color: AppColors.profileCircleColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 40,
                  width: 180,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.lightOrange)),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                clipBehavior: Clip.none,
                                backgroundColor: AppColors.red,
                                elevation: 0,
                                child: Container(
                                  height: 500,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        AppColors.red,
                                        hexToColor('#631E1E'),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Container(
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
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Blitzingv for Bucks',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: AppColors.basicWhite,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Enter this event',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white24,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum suscipit felis, leo imperdiet volutpat in faucibus enim. Felis enim.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum suscipit felis, leo imperdiet volutpat in faucibus enim. Felis enim.',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: AppColors.basicWhite,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 215),
                                        child: Text(
                                          'Lear more',
                                          style: TextStyle(
                                              color: AppColors.basicWhite,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 215),
                                        child: SizedBox(
                                          width: 80,
                                          child: Divider(
                                            color: AppColors.basicWhite,
                                            thickness: 1.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                        height: 110,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          color: AppColors.appBackgroundColor
                                              .withOpacity(.5),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 20),
                                                  child: Container(
                                                    height: 50,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            AppColors
                                                                .lightOrange,
                                                            AppColors.red,
                                                          ],
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter,
                                                        )),
                                                    child: Icon(
                                                      Icons.person_outline,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Winner Take All',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: AppColors
                                                              .basicWhite,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'To enter,use the match code below',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: AppColors.grey,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      '65b5b8d',
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .basicWhite,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 200,
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        AppColors.lightOrange)),
                                            onPressed: () {},
                                            child: Text('Download Now')),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Text('Play Now')),
                )
              ],
            )
          ],
        ));
  }
}
