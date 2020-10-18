import 'package:findvity_app/src/presentation/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/assets.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          yoga,
          height: 250,
          frameRate: FrameRate.max,
        ),
        SizedBox(
          height: 36,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Text(
            'Create and join groups to find people for activites',
            style: heading,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
