import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'styles.dart';

ThemeData themeData = ThemeData(
  accentColor: accentColor,
  canvasColor: canvasColor,
  primaryColor: primaryColor,
  fontFamily: 'Josefin-Sans',
  appBarTheme: AppBarTheme(
    elevation: 0,
    color: canvasColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: accentColor,
    selectedItemColor: Colors.white,
    unselectedItemColor: accentColor,
    showSelectedLabels: false,
    elevation: 2,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: accentColor,
    alignedDropdown: true,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadiusButton,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: borderRadiusButton,
      borderSide: BorderSide.none,
    ),
    fillColor: Colors.grey[200],
    filled: true,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

class CustomSharedAxisTransition extends CustomTransition {
  SharedAxisTransitionType sharedAxisTransitionType;

  CustomSharedAxisTransition({@required this.sharedAxisTransitionType});

  @override
  Widget buildTransition(
    BuildContext context,
    Curve curve,
    Alignment alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: sharedAxisTransitionType,
      child: child,
    );
  }
}

final systemTheme = SystemUiOverlayStyle(
  statusBarBrightness: Brightness.light,
  statusBarColor: Colors.transparent,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarIconBrightness: Brightness.dark,
);
