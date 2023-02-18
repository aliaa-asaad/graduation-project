import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../components/components.dart';

class MedicalHistoryScreen extends StatelessWidget {
  const MedicalHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            defaultTextLable(text: 'Medical History'),
            textDescription(
                textDescription:
                    "A complete medical history includes a more in-depth inquiry into the patient\'s medical issues which includes all diseases and illnesses currently being treated "),
            Expanded(child: imagePage(image: 'assets/images/Group 20.svg')),
            Row(
              children: [
                defaultTextButton(textButton: 'Skip'),
                Spacer(
                  flex: 1,
                ),
                defaultTextButton(textButton: 'Next'),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
