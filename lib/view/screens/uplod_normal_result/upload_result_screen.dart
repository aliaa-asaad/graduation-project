import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:schizophrenia/components/components.dart';

class UploadNormalResultPage extends StatelessWidget {
  const UploadNormalResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.white,
              Colors.white,
              Colors.white,
              Color.fromARGB(255, 235, 195, 242)
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/images/Normal.jpg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            defaultTextLable(text: 'Normal'),
            textDescription(
                textDescription: "We wish you good health \n and wellness "),
          ],
        ),
      ),
    ));
  }
}
