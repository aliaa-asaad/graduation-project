import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:schizophrenia/view/screens/upload_result_screen.dart';


class Navigate extends StatelessWidget {
  const Navigate({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/images/images.jpg'),
      navigator: const UploadNormalResultPage(),
    );
  }
}
