import 'package:flutter/material.dart';
import '/views/main_view.dart';
import '/widgets/custom_switch_widget.dart';
import 'package:get/get.dart';
import '../../controllers/login_controller.dart';
import '../../utils/custom_text_field_container.dart';
import '../../widgets/custom_button.dart';
import '/utils/app_colors.dart';
import 'signup_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final loginController = Get.put(LoginController());
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
              CustomSwitchWidget(
                  text: 'REMEMBER MY EMAIL',
                  val: loginController.val,
                  onChangedMethod: (bool newval) {
                    setState(() {
                      loginController.val = newval;
                    });
                  }),
              const SizedBox(height: 20.0),
              CustomButton(
                color: AppColors.lightOrange,
                name: 'Log in',
                onpressed: () => Get.off(() => MainView()),
              ),
              const SizedBox(height: 20.0),
              Row(children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(color: AppColors.basicWhite),
                  ),
                ),
                Text("OR", style: TextStyle(color: AppColors.basicWhite)),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(color: AppColors.basicWhite),
                  ),
                ),
              ]),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/fb.png'),
                  const SizedBox(width: 20),
                  Image.asset('images/google.png'),
                ],
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                child: const Text('Forgot you password?',
                    style: TextStyle(color: AppColors.lightOrange)),
                onTap: () {},
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have a Gawdgames account ?",
                      style: TextStyle(color: AppColors.basicWhite)),
                  const SizedBox(width: 5.0),
                  GestureDetector(
                    child: const Text('Sign up now',
                        style: TextStyle(color: AppColors.lightOrange)),
                    onTap: () => Get.off(() => const SignupView()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
