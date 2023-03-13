import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pandabar/pandabar.dart';
import 'package:schizophrenia/components/components.dart';
import 'package:schizophrenia/constants.dart';

class PatientHomePage extends StatefulWidget {
  const PatientHomePage({Key? key}) : super(key: key);

  @override
  State<PatientHomePage> createState() => _PatientHomePageState();
}

class _PatientHomePageState extends State<PatientHomePage> {
  String page = 'Grey';
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
          elevation: 0,
          actions: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_active,
                    color: Colors.purple,
                  )),
            )
          ],
          backgroundColor: Colors.transparent),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 214, 213, 213),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text('Page 1'),
              // onTap: () {
              //   Navigator.pop(context);
              // },
            ),
            ListTile(
              leading: const Icon(
                Icons.train,
              ),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      extendBodyBehindAppBar: true,

     /* appBar: AppBar(
        bottomOpacity: 0.2,iconTheme: IconThemeData(opacity: 0),
        elevation: 0,
        backgroundColor: Colors.transparent,),*/

      body: Stack(children: [
        Positioned(
          left: -70,
          top: -100,
          child: Image.asset(
            'assets/images/Path 1.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 50,
              ),
              // Row(
              //   children: [
              //     CircleAvatar(
              //       backgroundColor: Colors.white,
              //       child: IconButton(
              //           onPressed: () {},
              //           icon: Icon(Icons.menu, color: Colors.grey)),
              //     ),
              //     Expanded(
              //       child: CircleAvatar(
              //         backgroundColor: Colors.white,
              //         child: IconButton(
              //             onPressed: () {},
              //             icon: Icon(
              //               Icons.notifications,
              //               color: Colors.purple[500],
              //             )),
              //       ),
              //     )
              //   ],
              // ),
               Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Welcome Back,\n',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                        )),
                    TextSpan(
                      text: 'Mazen',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey[400],
                        ),
                      ),
                      const Text(
                        'Search',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              textRow(text: 'Discover', TextedButton: 'More'),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    discoverDiseasesType(
                        text: 'Electroencephalogram(EEG)\nDevice'),
                    const SizedBox(
                      width: 15,
                    ),
                    discoverDiseasesType(text: 'Diseases detected by EEG'),
                    const SizedBox(
                      width: 15,
                    ),
                    discoverDiseasesType(text: 'Prevention'),
                  ],
                ),
              ),
              textRow(text: 'What do you suffer?', TextedButton: 'More'),
              Row(
                children: [
                  Expanded(child: diseaseType(text: 'Shizophrenia')),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(child: diseaseType(text: 'Epilepsy')),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(child: diseaseType(text: 'Alzheimer')),
                  const SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              textRow(text: 'Up coming appoinment', TextedButton: 'More'),
              Container(
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                const AssetImage('assets/images/profile.jpg'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Dr.Nour Ahmed\n',
                                  style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'General Specialist',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey[400],
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(6.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            const Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              'Monday, November 30',
                              style: const TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Icon(
                              Icons.access_time_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                            const Text(
                              '11:00-12:00 AM',
                              style: const TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              textRow(text: 'Top Doctor'),
              recomendedTopDoctors(
                  docname: 'Dr.AliElmogy\n',
                  specilality: 'General practice-Cairo'),
              const SizedBox(
                height: 10,
              ),
              recomendedTopDoctors(
                  docname: 'Dr.AliElmogy\n',
                  specilality: 'General practice-Cairo'),
              const SizedBox(
                height: 10,
              ),

              recomendedTopDoctors(
                  docname: 'Dr.AliElmogy\n',
                  specilality: 'General practice-Cairo'),
              const SizedBox(
                height: 10,
              ),

              recomendedTopDoctors(
                  docname: 'Dr.AliElmogy\n',
                  specilality: 'General practice-Cairo'),
              const SizedBox(
                height: 10,
              ),
            ]),
          ),
        ),
      ]),
    ));
  }
}
