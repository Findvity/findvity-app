import 'package:findvity_app/src/presentation/utils/assets.dart';
import 'package:findvity_app/src/presentation/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          chat,
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
            'Chat and manage your groups in one place',
            style: heading,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
