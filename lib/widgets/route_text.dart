import 'package:flutter/material.dart';

import '../constants.dart';

class RouteText extends StatelessWidget {
  final String? text;
  final Function()? funtion;

  const RouteText({this.text, required this.funtion});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: funtion,
        child: Text(
          text!,
          style: TextStyle(
              color: Constants.primaryColor,
              decoration: TextDecoration.underline),
        ));
  }
}