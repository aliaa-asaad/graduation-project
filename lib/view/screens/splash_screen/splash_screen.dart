import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../constants.dart';
import '../onboarding_screens/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (EasySplashScreen(
      logo: Image.asset(
        'assets/images/final logo.png',
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.35,
        fit: BoxFit.fill,
      ),
      logoWidth: 250,
      showLoader: false,
      navigator: const OnBoardingScreen(),
      gradientBackground: LinearGradient(colors: [
        Constants.primaryColor.withOpacity(0),
        Constants.primaryColor.withOpacity(0),
        Constants.primaryColor.withOpacity(0),
        Constants.primaryColor
      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
    ));
  }
}
