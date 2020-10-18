import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/assets.dart';
import '../utils/styles.dart';
import 'onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  static const routename = '/';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      Get.offNamed(OnboardingScreen.routename);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: Image.asset(
                logo,
                height: 110,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'FINDVITY',
            style: titleText,
          )
        ],
      ),
    );
  }
}
