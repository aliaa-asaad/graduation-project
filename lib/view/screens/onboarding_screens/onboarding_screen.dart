import 'package:flutter/material.dart';
import 'package:schizophrenia/constants.dart';
import 'package:schizophrenia/view/screens/login_screen/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Intro Screens/intro_page1.dart';
import 'Intro Screens/intro_page2.dart';
import 'Intro Screens/intro_page3.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep track over page we are on
  final PageController _controller = PageController();

  // keep track if we are in last page or not
  bool onlastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlastpage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, .9),
            child: Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                //skip button
                onlastpage
                    ? const SizedBox()
                    : GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 20,
                            color: Constants.primaryColor,
                          ),
                        ),
                      ),

                // dots
                const SizedBox(
                  width: 100,
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                const SizedBox(
                  width: 100,
                ),
                //next button
                onlastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const LoginScreen();
                            },
                          ));
                        },
                        child: const Text(
                          "Start",
                          style: TextStyle(
                            fontSize: 20,
                            color: Constants.primaryColor,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 20,
                            color: Constants.primaryColor,
                          ),
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
