import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Icon(Icons.arrow_back_ios_rounded),
              SizedBox(
                width: 65,
              ),
               Text(
                "Welcome To Derpo",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          const SizedBox(
            width: 500,
            child:  Text(
              "Speak comfortably and know how to process.All your information is confidentiall to us.Talk to your doctor.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset("assets/images/7b62167e-dac4-4ac5-9afa-ac4e9104ce1e.jpg",width: double.infinity,height: 400)
        ],
      ),
    );
  }
}
