import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../components/components.dart';

class SuccessfulAppointmentPage extends StatelessWidget {
  const SuccessfulAppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.keyboard_arrow_left_sharp,
              )),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 174, 72, 192),
        ),
        backgroundColor: Color.fromARGB(255, 174, 72, 192),
        body: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.done_sharp,
                            size: 30,
                            color: Color.fromARGB(255, 152, 25, 174),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'You have\n successfully\n made an\n appiontment',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text:
                            '              The appointment confirmation\n              has been sent to your email address.',
                        style: TextStyle(
                          color: Color.fromARGB(255, 225, 224, 224),
                        ),
                      ),
                    ])),
                    SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'Details',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    moreDetails(
                        titlename: 'Doctor', namedescription: 'Dr.Dianae klar'),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Color.fromARGB(255, 236, 227, 227),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    moreDetails(
                        titlename: 'Date and time',
                        namedescription: '7,12,2022 . 12:00 AM'),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Color.fromARGB(255, 236, 227, 227),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    moreDetails(
                        titlename: 'Speciality', namedescription: 'Psychitary'),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Color.fromARGB(255, 236, 227, 227),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Call A Doctor',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )),
                    )
                  ],
                ),
              ],
            ))));
  }
}
