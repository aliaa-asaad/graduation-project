// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/pandabar.dart';
import 'package:schizophrenia/components/constants.dart';

import '../../../components/components.dart';

enum Carddates { first, second, third, fourth, fifth }

enum Timedates {
  firsttime,
  secondtime,
  thirdtime,
  fourthtime,
  fifthtime,
  sixithtime
}

// ignore: must_be_immutable
class PatientAppointment extends StatefulWidget {
  const PatientAppointment({super.key});

  @override
  State<PatientAppointment> createState() => _PatientAppointmentState();
}

class _PatientAppointmentState extends State<PatientAppointment> {
  Carddates? carddates;
  Timedates? timedates;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        textButton: TextButton(
            onPressed: () {},
            child: const Text(
              'iri',
              style: TextStyle(color: Colors.white),
            )),
        appBartitle: 'Appointment',
        iconBack: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SearchBar(
              hinttext: 'Search A Doctor',
              searchbarcolor: const Color.fromARGB(255, 219, 218, 218),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Popular Doctors',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 35,
                    ),
                    DoctorCard(),
                    SizedBox(
                      width: 20,
                    ),
                    DoctorCard(),
                    SizedBox(
                      width: 20,
                    ),
                    DoctorCard(),
                    SizedBox(
                      width: 20,
                    ),
                    DoctorCard(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'december,2022',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 35,
                    ),
                    GestureDetector(
                      child: DateCard(
                        colour: carddates == Carddates.first
                            ? selectedcolor
                            : unslectedcolor,
                      ),
                      onTap: () {
                        setState(() {
                          carddates = Carddates.first;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          carddates = Carddates.second;
                        });
                      },
                      child: DateCard(
                        colour: carddates == Carddates.second
                            ? selectedcolor
                            : unslectedcolor,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          carddates = Carddates.third;
                        });
                      },
                      child: DateCard(
                        colour: carddates == Carddates.third
                            ? selectedcolor
                            : unslectedcolor,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          carddates = Carddates.fourth;
                        });
                      },
                      child: DateCard(
                        colour: carddates == Carddates.fourth
                            ? selectedcolor
                            : unslectedcolor,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          carddates = Carddates.fifth;
                        });
                      },
                      child: DateCard(
                        colour: carddates == Carddates.fifth
                            ? selectedcolor
                            : unslectedcolor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Choose Time',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      child: TimeCard(
                          color: timedates == Timedates.firsttime
                              ? selectedcolor
                              : unslectedcolor),
                      onTap: () {
                        setState(() {
                          timedates = Timedates.firsttime;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      child: TimeCard(
                          color: timedates == Timedates.secondtime
                              ? selectedcolor
                              : unslectedcolor),
                      onTap: () {
                        setState(() {
                          timedates = Timedates.secondtime;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      child: TimeCard(
                          color: timedates == Timedates.thirdtime
                              ? selectedcolor
                              : unslectedcolor),
                      onTap: () {
                        setState(() {
                          timedates = Timedates.thirdtime;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      child: TimeCard(
                          color: timedates == Timedates.firsttime
                              ? selectedcolor
                              : unslectedcolor),
                      onTap: () {
                        setState(() {
                          timedates = Timedates.fourthtime;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      child: TimeCard(
                          color: timedates == Timedates.fifthtime
                              ? selectedcolor
                              : unslectedcolor),
                      onTap: () {
                        setState(() {
                          timedates = Timedates.fifthtime;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      child: TimeCard(
                          color: timedates == Timedates.sixithtime
                              ? selectedcolor
                              : unslectedcolor),
                      onTap: () {
                        setState(() {
                          timedates = Timedates.sixithtime;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 135,
            ),
            defaultClickedButton(
              text: 'Book An Appointment',
            ),
          ],
        ),
      ),
      bottomNavigationBar: PandaBar(
        fabColors: const [Colors.purple, Colors.purpleAccent],
        buttonSelectedColor: Colors.purple,
        backgroundColor: const Color.fromARGB(255, 231, 231, 231),
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
        onChange: (id) {
          setState(() {});
        },
        onFabButtonPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  content: const Text('Fab Button Pressed!'),
                  actions: [
                    CupertinoDialogAction(
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Close'),
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}

class TimeCard extends StatelessWidget {
  Color color;
  TimeCard({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 45,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: color,
            )),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // color: unslectedcolor,
        color: const Color.fromARGB(236, 233, 233, 233),
        child: Center(
          child: Text(
            '12:00',
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}

class DateCard extends StatelessWidget {
  Color colour;
  DateCard({
    Key? key,
    required this.colour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 45,
          height: 45,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: colour),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: const Color.fromARGB(236, 233, 233, 233),
            child: Center(
              child: Text(
                '7',
                style: TextStyle(
                  color: colour,
                ),
              ),
            ),
          ),
        ),
        Text(
          'Mon',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Theme.of(context).secondaryHeaderColor,
      child: Image.network(
        'https://picsum.photos/seed/832/600',
        width: 55,
        height: 55,
        fit: BoxFit.cover,
      ),
    );
  }
}
