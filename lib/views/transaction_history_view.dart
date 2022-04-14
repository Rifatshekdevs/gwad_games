import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:get/get.dart';

class TransactionHistoryView extends StatelessWidget {
  const TransactionHistoryView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: AppColors.basicWhite), onPressed: ()=>Get.back()),
        title: const Text("Transaction History", style: TextStyle(color: AppColors.basicWhite)),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: AppColors.appBackgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/ic_transaction.png"),
              const SizedBox(height: 40.0),
              const Text("No Transaction History", style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20.0),
              const Text("You have not any transaction history yet.", style: TextStyle(color: AppColors.offWhite, fontSize: 14.0)),
            ],
          ),
        ),
      ),
    );
  }
}