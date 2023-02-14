import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Health Tips",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const SizedBox(
            width: 500,
            child: Text(
              "While you get treated for schizophrenia, you\"ll also want to take good care of yourself for a fuller, more satisfying life.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset("assets/images/71064266-6c06-4d43-8495-48a3c90b8cb6.jpg",width: double.infinity,height: 400,)
        ],
      ),
    );
  }
}

