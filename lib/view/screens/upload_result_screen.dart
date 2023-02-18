import 'package:flutter/material.dart';

import '../../components/components.dart';

class UploadNormalResultPage extends StatelessWidget {
  const UploadNormalResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white,
            Colors.white,
            Color.fromARGB(255, 235, 195, 242)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/images/Normal.jpg'),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            defaultTextLable(text: 'Normal'),
            textDescription(
                textDescription: "We wish you good health \n and wellness "),
          ],
        ),
      ),
    );
  }
}
