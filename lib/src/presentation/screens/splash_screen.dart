import 'package:findvity_app/src/presentation/screens/onboarding/onboarding.dart';
import 'package:findvity_app/src/presentation/utils/assets.dart';
import 'package:findvity_app/src/presentation/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  static const routename = '/';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      Get.off(OnboardingScreen());
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
