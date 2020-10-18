import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/assets.dart';
import '../../utils/styles.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          like,
          height: 250,
        ),
        SizedBox(
          height: 36,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Text(
            'Get upto-date with your peers through feed',
            style: heading,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}