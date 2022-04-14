import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';

class TabbarviewTwo extends StatefulWidget {
  @override
  State<TabbarviewTwo> createState() => _TabbarviewTwoState();
}

class _TabbarviewTwoState extends State<TabbarviewTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: AppColors.profileCircleColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4 Leg Paylay',
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.basicWhite,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '+12575',
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.basicWhite,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                '2 same Game Parlay Bets',
                style: TextStyle(
                    color: AppColors.basicWhite, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: ListTile(
                leading: Icon(
                  Icons.person_outline,
                  color: AppColors.green,
                  size: 30,
                ),
                title: Text(
                  'VILLANOVA',
                  style: TextStyle(
                      color: AppColors.basicWhite, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: ListTile(
                title: Text(
                  'Denver Brocos +7.5',
                  style: TextStyle(
                    color: AppColors.lightOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'SPREAD',
                  style: TextStyle(
                    color: AppColors.profileCircleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: ListTile(
                title: Text(
                  'Over 50.5',
                  style: TextStyle(
                    color: AppColors.lightOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'TOTAL MATCH POINTS',
                  style: TextStyle(
                    color: AppColors.profileCircleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Divider(
                color: AppColors.profileCircleColor,
                thickness: 1.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: ListTile(
                leading: Icon(
                  Icons.person_outline,
                  color: AppColors.green,
                  size: 30,
                ),
                title: Text(
                  'SAME GAME PARLAY',
                  style: TextStyle(
                      color: AppColors.basicWhite, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: ListTile(
                title: Text(
                  'Buffalo Bills +3.5',
                  style: TextStyle(
                    color: AppColors.lightOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'SPREAD',
                  style: TextStyle(
                    color: AppColors.profileCircleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: ListTile(
                title: Text(
                  'Over 42.5',
                  style: TextStyle(
                    color: AppColors.lightOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'TOTAL MATCH POINTS',
                  style: TextStyle(
                    color: AppColors.profileCircleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: AppColors.profileCircleColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$256',
                          style: TextStyle(color: AppColors.basicWhite),
                        ),
                        Text(
                          'TOTAL WAGER',
                          style: TextStyle(color: AppColors.basicWhite),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '+1231',
                          style: TextStyle(color: AppColors.basicWhite),
                        ),
                        Text(
                          'ODDS',
                          style: TextStyle(color: AppColors.basicWhite),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '\$266',
                              style: TextStyle(
                                  color: AppColors.basicWhite, fontSize: 22),
                            ),
                          ),
                        ),
                        Text(
                          'WIN',
                          style: TextStyle(color: AppColors.basicWhite),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
