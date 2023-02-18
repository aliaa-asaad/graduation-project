import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

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
                width: MediaQuery.of(context).size.width * 0.19,
              ),
              const Text(
                "Medical History",
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
              "A complete medical history includes a more in-depth inquiry into the patient's medical issues which includes all diseases and illnesses currently being treated",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .086,
          ),
          Image.asset(
            "assets/images/9ac4d9d7-e4ce-4df4-88b1-82dcc6ca0832.jpg",
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .45,
          )
        ],
      ),
    );
  }
}
