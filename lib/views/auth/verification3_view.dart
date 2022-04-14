import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/custom_text_field_container.dart';
import '../../widgets/custom_button.dart';
import 'verification4_view.dart';

class Verification3View extends StatefulWidget {
  const Verification3View({Key? key}) : super(key: key);

  @override
  _Verification3ViewState createState() => _Verification3ViewState();
}

class _Verification3ViewState extends State<Verification3View> {
  final List<String> subjects = [
    "30",
    "0-5",
  ];
  String selectedSubject = "30";
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.appBarColor,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0, top: 5.0),
          child: Text('Login',
              style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0, top: 5.0),
            child: Text('Done',
                style: TextStyle(
                    color: AppColors.basicWhite,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600)),
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
              const Text(
                'Verification',
                style: TextStyle(
                    color: AppColors.basicWhite,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Image.asset('images/step_3.png'),
              const SizedBox(height: 30.0),
              const Text("Naveen, What's your address?",
                  style:
                      TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
              const SizedBox(height: 10.0),
              const Text("Don't worry, we won't send you anything",
                  style:
                      TextStyle(fontSize: 14.0, color: AppColors.hintTextColor),
                  textAlign: TextAlign.center),
              const SizedBox(height: 30.0),
              CustomTextFieldContainer(
                  controller: addressController,
                  obscure: false,
                  hintText: 'ADDRESS',
                  suffixIcon: Column(children: const [Spacer(), Text("")])),
              CustomTextFieldContainer(
                  controller: cityController,
                  obscure: false,
                  hintText: 'CITY',
                  suffixIcon: Column(children: const [Spacer(), Text("")])),
              CustomTextFieldContainer(
                  controller: stateController,
                  obscure: false,
                  hintText: 'STATE',
                  suffixIcon: Column(children: const [Text("")])),
              CustomTextFieldContainer(
                  controller: zipCodeController,
                  obscure: false,
                  hintText: 'ZIP CODE',
                  suffixIcon: Column(children: const [Spacer(), Text("")])),
              const SizedBox(height: 30.0),
              CustomButton(
                  color: AppColors.lightOrange,
                  name: 'Continue',
                  onpressed: () => Get.off(() => const Verification4View())),
            ],
          ),
        ),
      ),
    );
  }
}
