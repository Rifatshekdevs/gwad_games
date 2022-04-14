import 'package:flutter/material.dart';
import '/utils/app_colors.dart';
import '/widgets/custom_button2.dart';
import 'package:get/get.dart';

import '../widgets/custom_switch_widget.dart';
import 'account_settings_view.dart';
import 'add_fund_view.dart';
import 'transaction_history_view.dart';

class AccountView extends StatefulWidget {
  const AccountView({ Key? key }) : super(key: key);

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Text("All Sports", style: TextStyle(color: AppColors.basicWhite)),
        actions: const [
          InkWell(child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Done", style: TextStyle(color: AppColors.basicWhite, fontWeight: FontWeight.bold)),
          )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          const Padding(padding: EdgeInsets.symmetric(vertical: 30.0),child: Text("My account", style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0))),
          Container(
            height: 90,
            width: Get.width,
            color: AppColors.lighterGrey,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.profileCircleColor,
                      radius: 30,
                      child: Image.asset("images/pro_logo.png", height: 30),
                    ),
                    const SizedBox(width: 20.0),
                    const Text("Naveen69", style: TextStyle(color: AppColors.basicWhite)),
                  ],
                ),
                const Icon(Icons.settings_outlined, color: AppColors.basicWhite),
              ],
            ),
          ),
          const SizedBox(width: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("Overview", style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
              ),
              CustomSwitchWidget(text: "",val: val, onChangedMethod: (bool newVal){
                setState(() {
                  val = newVal;
                });
              },),
            ],
          ),
          const SizedBox(height: 30.0),
          Container(
            height: 80,
            width: Get.width,
            color: AppColors.lighterGrey,
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Playable Balance", style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.0),
                      Text("FANDUEL SPORTSBOOK", style: TextStyle(color: AppColors.basicWhite, fontSize: 14.0)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("\$256", style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.0),
                      Text("BALANCE", style: TextStyle(color: AppColors.basicWhite, fontSize: 14.0)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Container(
            height: 80,
            width: Get.width,
            color: AppColors.lighterGrey,
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Bonus", style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.0),
                      Text("FANDUEL SPORTSBOOK", style: TextStyle(color: AppColors.basicWhite, fontSize: 14.0)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("\$256", style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.0),
                      Text("BALANCE", style: TextStyle(color: AppColors.basicWhite, fontSize: 14.0)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("If you have any question about your account balance ", style: TextStyle(color: AppColors.offWhite, fontSize: 12)),
              SizedBox(height: 5.0),
              Text("Contact our support Team", style: TextStyle(color: AppColors.lightOrange, fontSize: 12)),
            ],
          ),
          const SizedBox(height: 30.0),
          CustomButton2(color: AppColors.green, onpressed: ()=>Get.to(()=>const AddFundView()), name: "Add Fund", icon: Image.asset("images/icon.png")),
          const SizedBox(height: 20.0),
          CustomButton2(color: AppColors.skyBlue, onpressed: (){}, name: "Withdraw Fund", icon: Image.asset("images/icon.png")),
          const SizedBox(height: 30.0),
          Container(
            height: 58,
            width: Get.width,
            color: AppColors.grey,
            padding: const EdgeInsets.only(left: 15.0),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Account Overview", style: TextStyle(color: AppColors.basicWhite)),
                Text(""),
              ],
            ),
          ),
          Container(
            height: 45.0,
            width: Get.width,
            decoration: const BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(color: AppColors.offWhite)),
              color: AppColors.grey,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Account balance", style: TextStyle(color: AppColors.basicWhite)),
                  Icon(Icons.arrow_forward_ios, color: AppColors.offWhite),
                ],
              ),
            ),
          ),
          InkWell(
            child: Container(
              height: 45.0,
              width: Get.width,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: AppColors.offWhite)),
                color: AppColors.grey,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Transaction history", style: TextStyle(color: AppColors.basicWhite)),
                  Icon(Icons.arrow_forward_ios, color: AppColors.offWhite),
                ],
              ),
            ),
            onTap: ()=>Get.to(()=>const TransactionHistoryView()),
          ),
          InkWell(
            child: Container(
              height: 45.0,
              width: Get.width,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: AppColors.offWhite)),
                color: AppColors.grey,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Tax Information", style: TextStyle(color: AppColors.basicWhite)),
                  Icon(Icons.arrow_forward_ios, color: AppColors.offWhite),
                ],
              ),
            ),
          ),
          InkWell(
            child: Container(
              height: 45.0,
              width: Get.width,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: AppColors.offWhite)),
                color: AppColors.grey,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Activty Statemnt", style: TextStyle(color: AppColors.basicWhite)),
                  Icon(Icons.arrow_forward_ios, color: AppColors.offWhite),
                ],
              ),
            ),
          ),
          InkWell(
            child: Container(
              height: 45.0,
              width: Get.width,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: AppColors.offWhite)),
                color: AppColors.grey,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Account Settings", style: TextStyle(color: AppColors.basicWhite)),
                  Icon(Icons.arrow_forward_ios, color: AppColors.offWhite),
                ],
              ),
            ),
            onTap: ()=>Get.to(()=>const AccountSettingsView()),
          ),
          const SizedBox(height: 50.0),
          CustomButton2(color: AppColors.red, onpressed: (){}, name: "Log out", icon: Image.asset("images/ic_logout.png")),
          const SizedBox(height: 30.0),
        ],
      )),
    );
  }
}