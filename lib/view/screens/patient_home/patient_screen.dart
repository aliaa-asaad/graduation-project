import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pandabar/pandabar.dart';
import '../../../components/components.dart';
import '../../../constants.dart';

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
                    color: Constants.secondryColor,
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
            const CircleAvatar(
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
              SizedBox(
                height: MediaQuery.of(context).size.height * .099,
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
              // )
              const Text.rich(
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
              SizedBox(height: MediaQuery.of(context).size.height * .035),
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
                        style: TextStyle(
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
                height: MediaQuery.of(context).size.height * .26,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    discoverDiseasesType(
                        text: 'Electroencephalogram(EEG)\nDevice'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .040,
                    ),
                    discoverDiseasesType(text: 'Diseases detected by EEG'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .040,
                    ),
                    discoverDiseasesType(text: 'Prevention'),
                  ],
                ),
              ),
              textRow(text: 'What do you suffer?', TextedButton: 'More'),
              Row(
                children: [
                  Expanded(child: diseaseType(text: 'Shizophrenia')),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .030,
                  ),
                  Expanded(child: diseaseType(text: 'Epilepsy')),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .030,
                  ),
                  Expanded(child: diseaseType(text: 'Alzheimer')),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .030,
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
                                AssetImage('assets/images/profile.jpg'),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .045,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Dr.Nour Ahmed\n',
                                  style: TextStyle(
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .010,
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
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .050,
                            ),
                            const Text(
                              'Monday, November 30',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .050,
                            ),
                            const Icon(
                              Icons.access_time_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                            const Text(
                              '11:00-12:00 AM',
                              style: TextStyle(
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
              SizedBox(height: MediaQuery.of(context).size.height * .020),
              recomendedTopDoctors(
                  docname: 'Dr.AliElmogy\n',
                  specilality: 'General practice-Cairo'),
              SizedBox(height: MediaQuery.of(context).size.height * .020),

              recomendedTopDoctors(
                  docname: 'Dr.AliElmogy\n',
                  specilality: 'General practice-Cairo'),
              SizedBox(height: MediaQuery.of(context).size.height * .020),

              recomendedTopDoctors(
                  docname: 'Dr.AliElmogy\n',
                  specilality: 'General practice-Cairo'),
              SizedBox(
                height: MediaQuery.of(context).size.height * .020,
              ),
            ]),
          ),
        ),
      ]),
    ));
  }
}
