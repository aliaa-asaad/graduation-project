import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

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
                width: 85,
              ),
              Text(
                "Medical History",
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
              "A complete medical history includes a more in-depth inquiry into the patient's medical issues which includes all diseases and illnesses currently being treated",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset("assets/images/9ac4d9d7-e4ce-4df4-88b1-82dcc6ca0832.jpg",width: double.infinity,height: 400)
        ],
      ),
    );
  }
}
