import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gadwd_games/models/menu_item.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:get/get.dart';

import '../controllers/bottom_nav_bar_controller.dart';
import '../models/menu_code.dart';

class BottomNavBar extends StatelessWidget {
  final Function(MenuCode menuCode) onNewMenuSelected;
   BottomNavBar({ Key? key, required this.onNewMenuSelected }) : super(key: key);

   final navController = BottomNavController();
   final Key bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Color selectedItemColor = const Color(0xFFFBA618);
    Color unselectedItemColor = Colors.white;
    List<BottomNavItem> navItems = _getNavItems();

    return Obx(
      () => BottomNavigationBar(
        key: bottomNavKey,
        items: navItems
            .map(
              (BottomNavItem navItem) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "images/${navItem.iconSvgName}",
                    height: 24,
                    width: 24,
                    color:
                        navItems.indexOf(navItem) == navController.selectedIndex
                            ? selectedItemColor
                            : unselectedItemColor,
                  ),
                  label: navItem.navTitle,
                  tooltip: ""),
            )
            .toList(),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.lightGrey,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        currentIndex: navController.selectedIndex,
        onTap: (index) {
          navController.updateSelectedIndex(index);
          onNewMenuSelected(navItems[index].menuCode);
        },
      ),
    );
  }

  List<BottomNavItem> _getNavItems() {
    return [
      const BottomNavItem(
          navTitle: "Home",
          iconSvgName: "home.svg",
          menuCode: MenuCode.HOME),
      const BottomNavItem(
          navTitle: "All Sports",
          iconSvgName: "all_sports.svg",
          menuCode: MenuCode.SPORTS),
      const BottomNavItem(
          navTitle: "My Bets",
          iconSvgName: "bets.svg",
          menuCode: MenuCode.BETS),
      const BottomNavItem(
          navTitle: "Games",
          iconSvgName: "games.svg",
          menuCode: MenuCode.GAMES),
      const BottomNavItem(
          navTitle: "Account",
          iconSvgName: "account.svg",
          menuCode: MenuCode.ACCOUNT),
    ];
  }
}