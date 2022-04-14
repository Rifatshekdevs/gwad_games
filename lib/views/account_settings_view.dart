import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';

class AccountSettingsView extends StatefulWidget {
  const AccountSettingsView({ Key? key }) : super(key: key);

  @override
  _AccountSettingsViewState createState() => _AccountSettingsViewState();
}

class _AccountSettingsViewState extends State<AccountSettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: AppColors.basicWhite), onPressed: ()=>Get.back()),
        title: const Text("Account Settings", style: TextStyle(color: AppColors.basicWhite)),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: AppColors.appBackgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 50.0), child: Text("Choose Depsit method", style: TextStyle(color: AppColors.basicWhite, fontSize: 16))),
            ListTile(
              leading: Image.asset("images/r.png"),
              title: const Text("Venmo", style: TextStyle(color: AppColors.basicWhite, fontSize: 14.0)),
              trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.basicWhite),
            ),
            const Divider(color: AppColors.offWhite),
            ListTile(
              leading: Image.asset("images/logos_paypal.png"),
              title: const Text("PayPal", style: TextStyle(color: AppColors.basicWhite, fontSize: 14.0)),
              trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.basicWhite),
            ),
            const Divider(color: AppColors.offWhite),
            ListTile(
              leading: Image.asset("images/noto_bank.png"),
              title: const Text("Online Banking", style: TextStyle(color: AppColors.basicWhite, fontSize: 14.0)),
              trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.basicWhite),
            ),
            const Divider(color: AppColors.offWhite),
            ListTile(
              leading: Image.asset("images/logos_bitcoin.png"),
              title: const Text("BitCoin", style: TextStyle(color: AppColors.basicWhite, fontSize: 14.0)),
              trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.basicWhite),
            ),
            const Divider(color: AppColors.offWhite),
          ],
        ),
      ),
    );
  }
}