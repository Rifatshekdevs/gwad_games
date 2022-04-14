import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/custom_text_field_container.dart';
import '../../widgets/custom_button.dart';
import 'verification3_view.dart';

class Verification2View extends StatefulWidget {
  const Verification2View({ Key? key }) : super(key: key);

  @override
  _Verification2ViewState createState() => _Verification2ViewState();
}

class _Verification2ViewState extends State<Verification2View> {
  final monthController = TextEditingController();
  final dayController = TextEditingController();
  final yearController = TextEditingController();
  final phoneController = TextEditingController();

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
              Image.asset('images/step_2.png'),
              const SizedBox(height: 30.0),
              const Text("Date of birth and phone number", style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
              const SizedBox(height: 10.0),
              const Text("These are to verify your identity and for tax purpose. we will not send you marketing or calls.", style: TextStyle(fontSize: 14.0, color: AppColors.hintTextColor), textAlign: TextAlign.center),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 74.0,
                    width: 111.0,
                    decoration:  const BoxDecoration(
                      backgroundBlendMode: BlendMode.multiply,
                      color: AppColors.appBackgroundColor,
                    ),
                    child: TextField(
                      style: const TextStyle(color: AppColors.basicWhite),
                      controller: monthController,
                      cursorColor: AppColors.basicWhite,
                      decoration: InputDecoration(
                        hintText: 'MM',
                        hintStyle: const TextStyle(
                          color: AppColors.hintTextColor,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), bottomLeft: Radius.circular(4.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.basicWhite),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), bottomLeft: Radius.circular(4.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.basicWhite),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), bottomLeft: Radius.circular(4.0)),
                        ),
                        suffixIcon: Column(children: const [Spacer(), Text("")]),
                      ),
                    ),
                  ),
                  Container(
                    height: 74.0,
                    width: 111.0,
                    decoration: const BoxDecoration(
                      backgroundBlendMode: BlendMode.multiply,
                      color: AppColors.appBackgroundColor,
                    ),
                    child: TextField(
                      style: const TextStyle(color: AppColors.basicWhite),
                      controller: dayController,
                      cursorColor: AppColors.basicWhite,
                      decoration: InputDecoration(
                        hintText: 'DD',
                        hintStyle: const TextStyle(
                          color: AppColors.hintTextColor,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.basicWhite),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.basicWhite),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        suffixIcon: Column(children: const [Spacer(), Text("")]),
                      ),
                      
                    ),
                  ),
                  Container(
                    height: 74.0,
                    width: 108.0,
                    decoration: const BoxDecoration(
                      backgroundBlendMode: BlendMode.multiply,
                      color: AppColors.appBackgroundColor,
                    ),
                    child: TextField(
                      style: const TextStyle(color: AppColors.basicWhite),
                      controller: yearController,
                      cursorColor: AppColors.basicWhite,
                      decoration: InputDecoration(
                        hintText: 'YYYY',
                        hintStyle: const TextStyle(
                          color: AppColors.hintTextColor,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(4.0), bottomRight: Radius.circular(4.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.basicWhite),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(4.0), bottomRight: Radius.circular(4.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.basicWhite),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(4.0), bottomRight: Radius.circular(4.0)),
                        ),
                        suffixIcon: Column(children: const [Spacer(), Text("")]),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              CustomTextFieldContainer(controller: phoneController,obscure: false, hintText: 'PHONE NUMBER', suffixIcon: Column(children: const [Spacer(), Text("")])),
              const SizedBox(height: 30.0),
              CustomButton(color: AppColors.lightOrange, name: 'Continue', onpressed: ()=>Get.off(()=>const Verification3View())),
            ],
          ),
        ),
      ),
    );
  }
}