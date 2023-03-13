import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/pandabar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:schizophrenia/components/components.dart';
import 'package:schizophrenia/components/constants.dart';
import 'package:schizophrenia/view/screens/Patient_appointment.dart';
import 'package:schizophrenia/view/screens/diseases_category/diseases_category_screen.dart';
import 'package:schizophrenia/view/screens/image_upload_screen/image_uploade_screen.dart';
import 'package:schizophrenia/view/screens/onboarding_screens/onboarding_screen.dart';
import 'package:schizophrenia/view/screens/patient_home/patient_screen.dart';
import 'package:schizophrenia/view/screens/success_appointment/success_appointment_screen.dart';

class PatientRecordScreen extends StatefulWidget {
  const PatientRecordScreen({Key? key}) : super(key: key);

  @override
  State<PatientRecordScreen> createState() => _PatientRecordScreenState();
}

class _PatientRecordScreenState extends State<PatientRecordScreen> {
  dynamic page;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        extendBody: true,
        bottomNavigationBar: PandaBar(
          backgroundColor: Colors.grey[300],
          buttonSelectedColor: Constants.primaryColor,
          buttonColor: Colors.black,
          buttonData: [
            PandaBarButtonData(
              id: 'Yellow',
              icon: Icons.home,
            ),
            PandaBarButtonData(
              id: 'Green',
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
          fabColors: [Constants.primaryColor, Constants.primaryColor],
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
            body:
            Builder(
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
            );
          },
        ),
        backgroundColor: Colors.white,
        appBar: defaultAppBar(
          iconBack: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 20,
              )),
          appBartitle: 'Records',
        ),
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 231, 251),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                      'assets/images/photo_2023-02-21_20-32-59.jpg'),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Amalla Adeson\n',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Female',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.grey[500],
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'My storage',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(35.0),
                            child: Row(
                              children: [
                                CircularPercentIndicator(
                                  progressColor:
                                      const Color.fromARGB(255, 237, 225, 116),
                                  radius: 45.0,
                                  lineWidth: 3.0,
                                  animation: true,
                                  percent: 0.5,
                                  center: const Text(
                                    "43%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Health records\n',
                                              style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Color.fromARGB(
                                                    255, 161, 161, 161),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '354 files',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: Colors.black,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'size\n',
                                              style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Color.fromARGB(
                                                    255, 161, 161, 161),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '456.4 mb',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: Colors.black,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultText(text: 'Attachments', textsize: 17.0),
                  Expanded(
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Color.fromARGB(255, 207, 204, 204)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.archive_rounded,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Amaala\'s EEG\nresult.edf',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Color.fromARGB(255, 207, 204, 204)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.archive_rounded,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Amaala\'s EEG\nresult.edf',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Color.fromARGB(255, 207, 204, 204)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.archive_rounded,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Amaala\'s EEG\nresult.edf',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]))));
  }
}
