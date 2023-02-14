import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class AuthText extends StatelessWidget {
  const AuthText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
            text: 'By continuing you agree to accept our \n ',
            children: [
              TextSpan(
                  text: 'Privacy Policy',
                  style: const TextStyle(color: Colors.purple),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Privacy Policy"');
                    }),
              TextSpan(text: ' & Terms of ', children: [
                TextSpan(
                    text: 'Service',
                    style: const TextStyle(color: Colors.purple),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Service');
                      }),
              ])
            ]));
  }
}
