import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';
import 'package:schizophrenia/components/components.dart';

class DoctorHomePage extends StatefulWidget {
  const DoctorHomePage({Key? key}) : super(key: key);

  @override
  State<DoctorHomePage> createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  String page = 'Grey';
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
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
      appBar: AppBar(
        bottomOpacity: 0.2,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          SizedBox(
            width: 20.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_add,
                  color: Color.fromARGB(255, 128, 35, 145),
                )),
          )
        ],
        leading: IconButton(
            onPressed: () {
              Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    ));
            },
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.grey,
            )),
      ),
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
              // )
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Good morning,\n',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                        )),
                    TextSpan(
                      text: 'Dr. Alma Elsayed',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
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
                      Text(
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
              textRow(text: 'Patients', TextedButton: 'see all'),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AvailablePatients(
                      containercolor: Color.fromARGB(255, 217, 213, 213),
                      patientName: 'Aya Elmogy\n',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    AvailablePatients(
                      containercolor: Color.fromARGB(158, 233, 201, 105),
                      patientName: 'Aya Elmogy\n',
                    )
                  ],
                ),
              ),

              textRow(text: 'Your next patient', TextedButton: 'see all'),
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
                            width: 20,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Yahor Haldukl\n',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '+0155789641',
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
                        height: 10.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(6.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Monday, November 30',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.access_time_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                            Text(
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
              textRow(text: 'Top articles', TextedButton: 'see all'),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    discoverDiseasesType(text: 'Diagnosis of shizophrenia'),
                    SizedBox(
                      width: 15,
                    ),
                    discoverDiseasesType(text: 'Electroncephalogram'),
                    SizedBox(
                      width: 15,
                    ),
                    discoverDiseasesType(text: 'Prevention'),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ]),
    ));
  }
}
