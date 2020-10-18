import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/styles.dart';
import '../auth/sign_up/sign_up.dart';
import 'page_1.dart';
import 'page_2.dart';
import 'page_3.dart';
import 'page_4.dart';

class OnboardingScreen extends StatefulWidget {
  static const routename = '/onboarding';

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController;
  int _currentPage;

  final _pageList = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _currentPage = 0;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget circleBar({@required bool isActive}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 10 : 10,
      width: isActive ? 10 : 10,
      decoration: BoxDecoration(
        color: isActive ? accentColor : Colors.grey[300],
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 32,
            left: 16,
            child: SafeArea(
              child: Text(
                'FINDVITY',
                style: titleText,
              ),
            ),
          ),
          PageView.builder(
            physics: BouncingScrollPhysics(),
            onPageChanged: _onPageChanged,
            itemCount: _pageList.length,
            itemBuilder: (context, index) {
              return _pageList[index];
            },
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.02,
            // left: MediaQuery.of(context).size.width * 0.40,
            child: Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < _pageList.length; i++)
                    if (i == _currentPage) ...[circleBar(isActive: true)] else
                      circleBar(isActive: false),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(24),
        height: 44,
        child: RaisedButton(
          elevation: 0,
          onPressed: ()=>Get.offNamed(RegisterScreen.routename),
          child: Text('CONTINUE'),
          textColor: Colors.white,
        ),
      ),
    );
  }
}
