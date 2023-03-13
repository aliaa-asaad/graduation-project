import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:schizophrenia/components/components.dart';

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
              icon: const Icon(
                Icons.keyboard_arrow_left_sharp,
                size: 30,
              )),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 174, 72, 192),
        ),
        backgroundColor: const Color.fromARGB(255, 174, 72, 192),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
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
                          size: 25,
                          color: Color.fromARGB(255, 152, 25, 174),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text:
                              'You have\n successfully\n made an\n appiontment\n ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text:
                              'The appointment confirmation \n  has been sent to your email address.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 225, 224, 224),
                          ),
                        ),
                      ])),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
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
                  const SizedBox(
                    height: 30,
                  ),
                  moreDetails(
                      titlename: 'Doctor', namedescription: 'Dr.Dianae klar'),
                  const SizedBox(
                    height: 8,
                  ),
                  spacerLine(),
                  const SizedBox(
                    height: 20,
                  ),
                  moreDetails(
                      titlename: 'Date and time',
                      namedescription: '7,12,2022 . 12:00 AM'),
                  const SizedBox(
                    height: 8,
                  ),
                  spacerLine(),
                  const SizedBox(
                    height: 20,
                  ),
                  moreDetails(
                      titlename: 'Speciality', namedescription: 'Psychitary'),
                  const SizedBox(
                    height: 8,
                  ),
                  spacerLine()
                ],
              ),
            ),
            // defaultClickedButton(text: 'Call a doctor',)
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Call a doctor',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    )),
              ),
            ),
          ],
        )));
  }
}
