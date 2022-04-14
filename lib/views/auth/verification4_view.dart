import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/custom_text_field_container.dart';
import '../../widgets/custom_button.dart';
import 'verification5_view.dart';

class Verification4View extends StatefulWidget {
  const Verification4View({ Key? key }) : super(key: key);

  @override
  _Verification4ViewState createState() => _Verification4ViewState();
}

class _Verification4ViewState extends State<Verification4View> {
  final ssnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.appBarColor,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0, top: 5.0),
          child: Text('Login', style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0, top: 5.0),
            child: Text('Done', style: TextStyle(color: AppColors.basicWhite, fontSize: 18.0, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Verification', style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0, fontWeight: FontWeight.bold),),
              const SizedBox(height: 20), 
              Image.asset('images/step_4.png'),
              const SizedBox(height: 30.0),
              const Text("What's are the last four digits of your SSN ?", style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
              const SizedBox(height: 10.0),
              const Text("Your social securityNumber", style: TextStyle(fontSize: 14.0, color: AppColors.hintTextColor), textAlign: TextAlign.center),
              const SizedBox(height: 30.0),
              CustomTextFieldContainer(controller: ssnController,obscure: false, hintText: 'SSN', suffixIcon: Column(children: const [Spacer(), Text("")])),
              const SizedBox(height: 30.0),
              CustomButton(color: AppColors.lightOrange, name: 'Continue', onpressed: ()=>Get.off(()=>const Verification5View())),
            ],
          ),
        ),
      ),
    );
  }
}