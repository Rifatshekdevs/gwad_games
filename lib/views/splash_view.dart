import 'dart:async';

import 'package:flutter/material.dart';
import '/utils/app_colors.dart';
import '/views/auth/login_view.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({ Key? key }) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void didChangeDependencies() {
    Timer(const Duration(seconds: 3), ()=>Get.off(()=>const LoginView()));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/splash.png'),
          ],
        ),
      ),
    );
  }
}