import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/pandabar.dart';
import 'package:schizophrenia/view/screens/Patient_appointment.dart';
import 'package:schizophrenia/view/screens/diseases_category/diseases_category_screen.dart';
import 'package:schizophrenia/view/screens/image_upload_screen/image_uploade_screen.dart';
import 'package:schizophrenia/view/screens/onboarding_screens/onboarding_screen.dart';
import 'package:schizophrenia/view/screens/patient_home/patient_screen.dart';
import 'package:schizophrenia/view/screens/success_appointment/success_appointment_screen.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        buttonData: [
          PandaBarButtonData(
            id: 'Blue',
            icon: Icons.dashboard,
            title: 'Blue',
          ),
          PandaBarButtonData(id: 'Green', icon: Icons.book, title: 'Green'),
          PandaBarButtonData(
              id: 'Red', icon: Icons.account_balance_wallet, title: 'Red'),
          PandaBarButtonData(
              id: 'Yellow', icon: Icons.notifications, title: 'Yellow'),
        ],
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
              });
        },
      ),
      body: Builder(
        builder: (context) {
          switch (page) {
            case 'Green':
              return DiseasesCategoryScreen();
            case 'Blue':
              return PatientAppointment();
            case 'Red':
              return SuccessfulAppointmentPage();
            case 'Yellow':
              return OnBoardingScreen();
            default:
              return Container();
          }
        },
      ),
    );
  }
}