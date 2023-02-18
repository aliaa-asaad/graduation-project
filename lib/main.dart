import 'package:flutter/material.dart';
import 'package:schizophrenia/view/screens/splash_screen/splash_screen.dart';
import 'view/screens/uplod_normal_result/upload_result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
