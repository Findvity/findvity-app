import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/screens/onboarding.dart';
import 'presentation/utils/themes.dart';

class Findvity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Findvity',
      theme: themeData,
      themeMode: ThemeMode.light,
      enableLog: true,
      // initialRoute: HomeScreen.routename,
      home: OnboardingScreen(),
      transitionDuration: Duration(milliseconds: 500),
      customTransition: CustomSharedAxisTransition(
        sharedAxisTransitionType: SharedAxisTransitionType.scaled,
      ),
    );
  }
}
