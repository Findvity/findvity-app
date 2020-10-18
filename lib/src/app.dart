import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/screens/auth/home/home_screen.dart';
import 'presentation/screens/auth/login/login.dart';
import 'presentation/screens/auth/sign_up/sign_up.dart';
import 'presentation/screens/onboarding/onboarding.dart';
import 'presentation/screens/splash_screen.dart';
import 'presentation/utils/themes.dart';

class Findvity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Findvity',
      theme: themeData,
      themeMode: ThemeMode.light,
      // enableLog: true,
      initialRoute: SplashScreen.routename,
      transitionDuration: Duration(milliseconds: 500),
      customTransition: CustomSharedAxisTransition(
      sharedAxisTransitionType: SharedAxisTransitionType.scaled,
      ),
      routes: {
        SplashScreen.routename: (_) => SplashScreen(),
        OnboardingScreen.routename: (_) => OnboardingScreen(),
        RegisterScreen.routename: (_) => RegisterScreen(),
        LoginScreen.routename: (_) => LoginScreen(),
        Homescreen.routename: (_) => Homescreen(),
      },
      // : [
      //   GetPage(
      //     name: SplashScreen.routename,
      //     page: () => SplashScreen(),
      //     customTransition: CustomSharedAxisTransition(
      //       sharedAxisTransitionType: SharedAxisTransitionType.scaled,
      //     ),
      //   ),
      //   GetPage(
      //     name: OnboardingScreen.routename,
      //     page: () => OnboardingScreen(),
      //     customTransition: CustomSharedAxisTransition(
      //       sharedAxisTransitionType: SharedAxisTransitionType.vertical,
      //     ),
      //   ),
      //   GetPage(
      //     name: RegisterScreen.routename,
      //     page: () => RegisterScreen(),
      //     customTransition: CustomSharedAxisTransition(
      //       sharedAxisTransitionType: SharedAxisTransitionType.horizontal,
      //     ),
      //   ),
      //   GetPage(
      //     name: LoginScreen.routename,
      //     page: () => LoginScreen(),
      //     customTransition: CustomSharedAxisTransition(
      //       sharedAxisTransitionType: SharedAxisTransitionType.horizontal,
      //     ),
      //   ),
      //   GetPage(
      //     name: Homescreen.routename,
      //     page: () => Homescreen(),
      //     customTransition: CustomSharedAxisTransition(
      //       sharedAxisTransitionType: SharedAxisTransitionType.scaled,
      //     ),
      //   ),
      // ],
    );
  }
}
