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
  bool four = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.appBarColor,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0, top: 5.0),
          child: Text('Login',
              style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
        ),
        actions: [
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
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Verification',
                style: TextStyle(
                    color: AppColors.basicWhite,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.asset('images/step_5.png'),
              SizedBox(height: 15.0),
              Text(
                "You're one step away from betting with\nAmerican's #1 Sportsbook Robert!",
                style: TextStyle(color: AppColors.skyBlue, fontSize: 18),
              ),
              SizedBox(height: 20.0),
              Text("Confirmation",
                  style:
                      TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
              SizedBox(height: 10.0),
              Text("Please confirm the following statement",
                  style:
                      TextStyle(fontSize: 14.0, color: AppColors.hintTextColor),
                  textAlign: TextAlign.center),
              SizedBox(height: 30.0),
              CheckboxListTile(
                activeColor: AppColors.lightOrange,
                checkColor: AppColors.basicWhite,
                title: Text(
                    "I agree to the Terms and Privacy Policy and authorize GawdGames to transfer my funds balance to a new state so it is available for me to wager on GawdGames Sportsbook",
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
                title: Text(
                    "I Confirm that the provided registration\ninformation is accurate.",
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
                title: const Text(
                    "I am not an employee prohibited from wagering\nat any casino, casino website or simulcasting\nfacility in undefined. I acknowledge that I am not otherwise prohibited from engaging in gambling activity. I am not a person prohibited from rngaging in sports wagering as a sports participant affiliated with a team, or otherwise prohibited from engaging in sport wagering..",
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
              CheckboxListTile(
                activeColor: AppColors.lightOrange,
                checkColor: AppColors.basicWhite,
                title: Text(
                    "I confirm that I am 21+ years old. I acknowledge that I may not allow any other person to use or access my account",
                    style: TextStyle(
                        fontSize: 14.0, color: AppColors.hintTextColor),
                    textAlign: TextAlign.start),
                value: four,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  setState(() {
                    four = value!;
                  });
                },
              ),
              SizedBox(height: 30.0),
              CustomButton(
                color: AppColors.lightOrange,
                name: 'Verify Identity',
                onpressed: () => Get.off(
                  () => MainView(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
