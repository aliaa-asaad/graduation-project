import 'package:flutter/material.dart';
import 'package:schizophrenia/constants.dart';

class AuthTextField extends StatelessWidget {
  final TextInputType? input;
  final TextEditingController? controller;
  final IconData? prefix;
  final TextInputType? type;
  final Function? onSubmit;
  final Function? onChange;
  bool isPassword = false;
  final Function? validate;

  // required String label,
  final String? hintText;
  final String? labelText;
  final Function()? ontap;
  // required IconData prefix,
  final IconData? suffix;
  IconButton? clickedIcon;
  Function()? suffixPressed;
  AuthTextField({
    this.prefix,
    this.labelText,
    this.type,
    required this.isPassword,
    this.controller,
    this.input,
    this.onSubmit,
    this.onChange,
    this.validate,
    this.hintText,
    this.suffix,
    this.clickedIcon,
    this.suffixPressed,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: (String value) {
        print(value);
      },
      onChanged: (String value) {
        print(value);
      },
      validator: (value) {
        if (value!.isEmpty) {
          return 'email address must not be empty';
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        // labelText: label,
        labelText: labelText,
        hintText: hintText,

        hintStyle: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.normal,
            color: Colors.grey),
        labelStyle:
            const TextStyle(fontFamily: 'Montserrat', color: Colors.black),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  color: Colors.grey,
                ))
            : null,

        prefixIconColor: Constants.primaryColor,
        prefixIcon: Icon(
          prefix,
        ),
        border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
