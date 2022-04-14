import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../main_view.dart';

class Verification5View extends StatefulWidget {
  const Verification5View({Key? key}) : super(key: key);

  @override
  _Verification5ViewState createState() => _Verification5ViewState();
}

class _Verification5ViewState extends State<Verification5View> {
  bool one = false;
  bool two = false;
  bool three = false;
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
              Image.asset('images/step_5.png'),
              const SizedBox(height: 30.0),
              const Text("Confirmation",
                  style:
                      TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
              const SizedBox(height: 10.0),
              const Text("Please confirm the following statement",
                  style:
                      TextStyle(fontSize: 14.0, color: AppColors.hintTextColor),
                  textAlign: TextAlign.center),
              const SizedBox(height: 30.0),
              CheckboxListTile(
                activeColor: AppColors.lightOrange,
                checkColor: AppColors.basicWhite,
                title: const Text(
                    "I agree to the Lorem ipsum dolor sit amet, consect adipiscing elit. Vestibulum suscipi",
                    style: TextStyle(
                        fontSize: 14.0, color: AppColors.hintTextColor),
                    textAlign: TextAlign.start),
                value: one,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  setState(() {
                    one = value!;
                  });
                },
              ),
              CheckboxListTile(
                activeColor: AppColors.lightOrange,
                checkColor: AppColors.basicWhite,
                title: const Text(
                    "I Confirm that Lorem ipsum dolor sit amet, consect adipiscing elit.",
                    style: TextStyle(
                        fontSize: 14.0, color: AppColors.hintTextColor),
                    textAlign: TextAlign.start),
                value: two,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  setState(() {
                    two = value!;
                  });
                },
              ),
              CheckboxListTile(
                activeColor: AppColors.lightOrange,
                checkColor: AppColors.basicWhite,
                title: const Text("I'm confirm that I'm 21+ year old.",
                    style: TextStyle(
                        fontSize: 14.0, color: AppColors.hintTextColor),
                    textAlign: TextAlign.start),
                value: three,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  setState(() {
                    three = value!;
                  });
                },
              ),
              const SizedBox(height: 30.0),
              CustomButton(
                  color: AppColors.lightOrange,
                  name: 'Continue',
                  onpressed: () => Get.off(() => MainView())),
            ],
          ),
        ),
      ),
    );
  }
}
