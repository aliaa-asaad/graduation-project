// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pandabar/pandabar.dart';
import 'package:schizophrenia/components/components.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
        appBartitle: 'Notification',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'All',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(
                      width: 20,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color.fromARGB(255, 213, 113, 231),
                        child: const Text('3'),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Icon(Icons.check_rounded),
                    Text(
                      'Make As Read',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Clear All',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const Divider(
                  thickness: 3,
                ),
              ],
            ),
            Text(
              'New',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            NotificationRow(
              imagepath: 'assets/images/final logo.png',
            ),
            NotificationRow(
              imagepath: 'assets/images/final logo.png',
            ),
            NotificationRow(
              imagepath: 'assets/images/final logo.png',
            ),
            const Divider(
              thickness: 2,
            ),
            const Text('Eariler'),
            NotificationRow(
              imagepath: 'assets/images/final logo.png',
            ),
            NotificationRow(
              imagepath: 'assets/images/final logo.png',
            ),
            const Divider(
              thickness: 2,
            ),
            const Text('This Week'),
            NotificationRow(
              imagepath: 'assets/images/final logo.png',
            ),
            NotificationRow(
              imagepath: 'assets/images/final logo.png',
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
        onChange: (id) {},
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

// ignore: must_be_immutable
class NotificationRow extends StatelessWidget {
  String imagepath;
  NotificationRow({
    Key? key,
    required this.imagepath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagepath),
        ),
        const SizedBox(
          height: 100,
          child: VerticalDivider(
            thickness: 1,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: const [
            Text(
              'Amilia Viewed Your Profile',
              //style: FlutterFlowTheme.of(context).bodyText1,
            ),
            Text(
              '14 Minutes ago',
              //style: FlutterFlowTheme.of(context).subtitle2,
            ),
          ],
        ),
      ],
    );
  }
}
