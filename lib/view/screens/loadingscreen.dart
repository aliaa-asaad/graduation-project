import 'package:flutter/material.dart';
import 'package:schizophrenia/view/screens/uplod_normal_result/upload_result_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              duration: Duration(seconds: 3),
              builder: (BuildContext context, double opacity, Widget? child) {
                return AnimatedOpacity(
                  opacity: opacity,
                  duration: Duration(seconds: 3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Image.asset('assets/images/asoslogo.png',
                      //     width: MediaQuery.of(context).size.width - 20),
                      const SizedBox(
                        height: 20,
                      ),
                      const CircularProgressIndicator(
                        color: Colors.purple,
                      ),
                    ],
                  ),
                );
              },
              onEnd: () async {
                await Future.delayed(
                  Duration(seconds: 2),
                  () => Navigator.pushReplacement(
                    context,
                    AnimationTransition(
                      page: const UploadNormalResultPage(),
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
              var begin = Offset(0, -1);
              var end = Offset(0, 0);
              var tween = Tween(begin: begin, end: end);
              var curveanimate =
                  CurvedAnimation(parent: animation, curve: Curves.easeInOut);
              return SlideTransition(
                position: tween.animate(curveanimate),
                child: child,
              );
            });
}
