import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .070,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.035,
              ),
              const Icon(Icons.arrow_back_ios_rounded),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.10,
              ),
              const Text(
                "Welcome To Brainiacs",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .070,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: const Text(
              "Speak comfortably and know how to process.All your information is confidentiall to us.Talk to your doctor.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .050,
          ),
          Image.asset("assets/images/7b62167e-dac4-4ac5-9afa-ac4e9104ce1e.jpg",
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .45)
        ],
      ),
    );
  }
}
