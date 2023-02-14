import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schizophrenia/view/screens/diseases_category/diseases_category_screen.dart';
import 'package:schizophrenia/view/screens/splash_screen/splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),

      debugShowCheckedModeBanner: false,
    );
  }
}

