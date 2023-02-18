import 'package:flutter/material.dart';
import '../screens/upload_apnormal_result_screen/upload_apnormal_result_screen.dart';
import '../screens/uplod_normal_result/upload_result_screen.dart';

class ApnormalLoadingScreen extends StatefulWidget {
  const ApnormalLoadingScreen({Key? key}) : super(key: key);

  @override
  State<ApnormalLoadingScreen> createState() => _ApnormalLoadingScreen();
}

class _ApnormalLoadingScreen extends State<ApnormalLoadingScreen>
    with SingleTickerProviderStateMixin {
  @override
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Constants.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(seconds: 3),
              builder: (BuildContext context, double opacity, Widget? child) {
                return AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(seconds: 3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      // Image.asset('assets/images/asoslogo.png',
                      //     width: MediaQuery.of(context).size.width - 20),
                       SizedBox(
                        height: 20,
                      ),
                       CircularProgressIndicator(
                        color: Colors.purple,
                      ),
                    ],
                  ),
                );
              },
              onEnd: () async {
                await Future.delayed(
                  const Duration(seconds: 2),
                  () => Navigator.pushReplacement(
                    context,
                    AnimationTransition(
                      page: const UploadApnormalResultPage(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AnimationTransition extends PageRouteBuilder {
  final page;

  AnimationTransition({this.page})
      : super(
            pageBuilder: (context, animation, animation2) => page,
            transitionsBuilder: (context, animation, animation2, child) {
              var begin = const Offset(0, -1);
              var end = const Offset(0, 0);
              var tween = Tween(begin: begin, end: end);
              var curveanimate =
                  CurvedAnimation(parent: animation, curve: Curves.easeInOut);
              return SlideTransition(
                position: tween.animate(curveanimate),
                child: child,
              );
            });
}
