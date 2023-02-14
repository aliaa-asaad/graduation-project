import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:schizophrenia/components/components.dart';


class UploadApnormalResultPage extends StatelessWidget {
  const UploadApnormalResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      
      body: Container(
         width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
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
            const Center(
              child: Image(
                image: AssetImage('assets/images/Abnormal.jpg'),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            defaultTextLable(text: 'Abnormal'),
            textDescription(
                textDescription: "Don\'t worry \n we are with you step by step "),
          ],
        ),
      ),
    ));
  }    }  