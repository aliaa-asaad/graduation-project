import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pandabar/pandabar.dart';
import 'package:schizophrenia/components/components.dart';
import 'package:schizophrenia/components/constants.dart';
import 'package:schizophrenia/view/screens/Patient_appointment.dart';
import 'package:schizophrenia/view/screens/bottom_navigation_bar.dart';
import 'package:schizophrenia/view/screens/diseases_category/diseases_category_screen.dart';
import 'package:schizophrenia/view/screens/onboarding_screens/onboarding_screen.dart';
import 'package:schizophrenia/view/screens/success_appointment/success_appointment_screen.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  dynamic page;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: PandaBar(
        backgroundColor: Colors.grey[300],
        buttonData: [
          PandaBarButtonData(
            id: 'purple',
            icon: Icons.home,
          ),
          PandaBarButtonData(
            id: 'black',
            icon: Icons.calendar_today_outlined,
          ),
          PandaBarButtonData(
            id: 'red',
            icon: Icons.chat,
          ),
          PandaBarButtonData(
            id: 'Blue',
            icon: Icons.person,
          ),
        ],
        onChange: ((id) {
          setState(() {
            page = id;
          });
        }),
        onFabButtonPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  content: Text('Fab Button Pressed!'),
                  actions: [
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
        appBartitle: 'Personal details',
      ),
      body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                                    'assets/images/photo_2023-02-21_20-32-56.jpg'),
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
                defaultText(text: 'Patient details', textsize: 15.0),
                const SizedBox(
                  height: 15,
                ),
                moreDetails(
                  titlename: 'Name',
                  namedescription: 'Amalia',
                  fontWeight: FontWeight.bold,
                  textcolor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                moreDetails(
                  titlename: 'Sur Name',
                  namedescription: 'Adeson',
                  fontWeight: FontWeight.bold,
                  textcolor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                moreDetails(
                  titlename: 'Date of birth',
                  namedescription: 'August 8,1996',
                  fontWeight: FontWeight.bold,
                  textcolor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                moreDetails(
                  titlename: 'Address',
                  namedescription: 'Cairo,Egypt',
                  fontWeight: FontWeight.bold,
                  textcolor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                moreDetails(
                  titlename: 'Material status',
                  namedescription: 'Single',
                  fontWeight: FontWeight.bold,
                  textcolor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                moreDetails(
                  titlename: 'Phone nummber',
                  namedescription: '+2085694',
                  fontWeight: FontWeight.bold,
                  textcolor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                moreDetails(
                  titlename: 'Registred on',
                  namedescription: 'December 10,2022',
                  fontWeight: FontWeight.bold,
                  textcolor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                spacerLine(),
                const SizedBox(
                  height: 15,
                ),
                defaultText(text: 'Next Appointment', textsize: 15.0),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200]),
                    child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color:
                                    const Color.fromARGB(255, 246, 221, 250)),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: const [
                                  Text(
                                    'Nov 30\n11:00 AM',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 138, 138, 138)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text: 'Dr Nour Ahmed',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Row(children: [
                                  const Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow,
                                  ),
                                  Text('4.0',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.grey[400],
                                        fontSize: 10.0,
                                      ))
                                ])
                              ]),
                        ])))
              ])),
    );
  }
}
