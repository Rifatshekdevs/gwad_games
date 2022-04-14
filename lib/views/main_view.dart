// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '/utils/app_colors.dart';
import '/utils/bottom_nav_bar.dart';
import '/views/account_view.dart';
import '/views/bets_view.dart';
import '/views/games_view.dart';
import '/views/home_view.dart';
import '/views/sports_view.dart';
import '/controllers/main_controller.dart';
import 'package:get/get.dart';

import '../models/menu_code.dart';

class MainView extends StatelessWidget {
  MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());

    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
        key: UniqueKey(),
        child: Obx(() => getPageOnSelectedMenu(controller.selectedMenuCode)),
      ),
      bottomNavigationBar:
          BottomNavBar(onNewMenuSelected: controller.onMenuSelected),
    );
  }

  HomeView? homeView;
  SportsView? sportsView;
  BetsView? betsView;
  GamesView? gamesView;
  AccountView? accountView;

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.HOME:
        homeView ??= const HomeView();
        return homeView!;
      case MenuCode.SPORTS:
        sportsView ??= const SportsView();
        return sportsView!;
      case MenuCode.BETS:
        betsView ??= const BetsView();
        return betsView!;
      case MenuCode.GAMES:
        gamesView ??= const GamesView();
        return gamesView!;
      case MenuCode.ACCOUNT:
        accountView ??= const AccountView();
        return accountView!;
      default:
        return const HomeView();
    }
  }
}
