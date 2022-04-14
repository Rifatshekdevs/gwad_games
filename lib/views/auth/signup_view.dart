import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/custom_text_field_container.dart';
import '../../widgets/custom_button.dart';
import 'verification_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isClicked = false;

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
                'Log in to Gawdgames',
                style: TextStyle(
                    color: AppColors.basicWhite,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              CustomTextFieldContainer(
                  controller: emailController,
                  hintText: 'EMAIL ADDRESS',
                  obscure: false,
                  suffixIcon: Column(children: const [Spacer(), Text("")])),
              CustomTextFieldContainer(
                  controller: usernameController,
                  hintText: 'USER NAME',
                  obscure: false,
                  suffixIcon: Column(children: const [Spacer(), Text("")])),
              CustomTextFieldContainer(
                  hintText: 'PASSWORD',
                  controller: passwordController,
                  obscure: isClicked ? false : true,
                  suffixIcon: Column(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            child: const Text('SHOW',
                                style: TextStyle(color: AppColors.lightOrange)),
                            onTap: () {
                              setState(() {
                                isClicked = !isClicked;
                              });
                            }),
                      ),
                    ],
                  )),
              const SizedBox(height: 30.0),
              CustomButton(
                  color: AppColors.lightOrange,
                  name: 'Create account',
                  onpressed: () => Get.off(() => const VerificationView())),
              const SizedBox(height: 30.0),
              const Text("Don't have a Gawdgames account ?",
                  style: TextStyle(color: AppColors.basicWhite)),
              const SizedBox(height: 20.0),
              GestureDetector(
                child: const Text('Sign up now',
                    style: TextStyle(color: AppColors.lightOrange)),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
