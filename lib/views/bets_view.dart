import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:gadwd_games/views/tabbarview_two.dart';
import 'package:gadwd_games/views/tabbatview_one.dart';
import 'package:get/get.dart';

class BetsView extends StatefulWidget {
  const BetsView({Key? key}) : super(key: key);

  @override
  _BetsViewState createState() => _BetsViewState();
}

class _BetsViewState extends State<BetsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.appBarColor,
          title: Text(
            'My Bets',
            style: TextStyle(color: AppColors.basicWhite, fontSize: 16),
          ),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: Get.height,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.appBackgroundColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child:
                          TabBar(indicatorColor: AppColors.lightOrange, tabs: [
                        Tab(
                          text: 'Active',
                        ),
                        Tab(
                          text: 'Setlled',
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 750,
                      child: TabBarView(children: [
                        Tabbarview(),
                        TabbarviewTwo(),
                      ]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
