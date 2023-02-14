import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/pandabar.dart';
import 'package:schizophrenia/view/screens/diseases_category/diseases_category_screen.dart';
import 'package:schizophrenia/view/screens/patient_home/patient_screen.dart';

import '../../../constants.dart';



class NavigateScreens extends StatefulWidget {
  @override
  _NavigateScreensState createState() => _NavigateScreensState();
}

class _NavigateScreensState extends State<NavigateScreens> {

  String page = 'PatientHome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        backgroundColor: Colors.grey[300],
        buttonSelectedColor: Constants.primaryColor,
        buttonColor: Colors.black,
        buttonData: [
          PandaBarButtonData(
            id: 'PatientHome',
            icon: Icons.home,
          ),
          PandaBarButtonData(
            id: 'DiseasesCategoryScreen',
            icon: Icons.dashboard,
          ),
          PandaBarButtonData(
            id: 'red',
            icon: Icons.calendar_today_outlined,
          ),
          PandaBarButtonData(
            id: 'Blue',
            icon: Icons.person,
          ),
        ],
        fabColors: [Constants.primaryColor,Constants.primaryColor],

        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                content: Text('Fab Button Pressed!'),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text('Close'),
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              );
            }
          );
        },
      ),
      body: Builder(
        builder: (context) {

          switch (page) {
            case 'PatientHome':
              return PatientHomePage();
            case 'DiseasesCategoryScreen':
              return DiseasesCategoryScreen();
            case 'Red':
              return Container(color: Colors.red.shade900);
            case 'Yellow':
              return Container(color: Colors.yellow.shade700);
            default:
              return Container();
              
          }

        },
      ),
    );
  }
}


Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
 void Function(String)? onSubmit,
 void Function(String)? onChange,
  String? Function(String?)? validate,
  bool isPassword = false,
  required var label,
  IconData? prefix,
  IconData? suffix,
  Function()? suffixPressed,
}) =>
    TextFormField(
      validator: validate,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit!,
      onChanged: onChange!,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(onPressed: suffixPressed, icon: Icon(suffix))
            : null,
        border: OutlineInputBorder(),
      ),
    );