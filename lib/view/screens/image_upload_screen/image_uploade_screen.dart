// import 'dart:convert';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:schizophrenia/components/components.dart';
import 'package:schizophrenia/view/apnormal_loading_sceen/apnormal_loading_screen.dart';
import 'package:schizophrenia/view/screens/loadingscreen.dart';

class ImageUploadePage extends StatelessWidget {
  const ImageUploadePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: defaultAppBar(
          textButton: TextButton(
              onPressed: () {},
              child: const Text(
                'iri',
                style: TextStyle(color: Colors.white),
              )),
          appBartitle: 'Upload and attach files',
          iconBack: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ))),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(10.0),
              color: Colors.black,
              strokeWidth: 2,
              dashPattern: const [
                5,
                4,
              ],
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
                  height: MediaQuery.of(context).size.height * .3,
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(children: [
                          TextSpan(
                            text: 'Click to upload',
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.purple,
                                fontSize: 20.0,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                // pickFile();
                                FilePickerResult? result =
                                    await FilePicker.platform.pickFiles(
                                  type: FileType.any,
                                );
                              },
                          ),
                          const TextSpan(
                            text: ' or drag and drop',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 20.0),
                          )
                        ])),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .020,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 16.0,
                          backgroundColor: Color.fromARGB(255, 131, 41, 147),
                          child: Icon(
                            Icons.done_rounded,
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              defaultText(
                                  text: '  prototype Recording',
                                  textsize: 15.0),
                              LinearPercentIndicator(
                                animation: true,
                                animationDuration: 1000,
                                trailing: const Text(
                                  '100%',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                barRadius: const Radius.circular(10.0),
                                width: 200.0,
                                lineHeight: 8.0,
                                percent: 1,
                                progressColor:
                                    const Color.fromARGB(255, 131, 41, 147),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close_outlined,
                            size: 23.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            defaultClickedButton(
              text: 'CHECK',
              onpressed: () async {
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.any,
                );

                if (result != null) {
                  PlatformFile file = result.files.first;
                  if (file.name.contains('h')) {
                    // ignore: use_build_context_synchronously
                    if(file.name == 'h03.edf'){
                      return Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ApnormalLoadingScreen();
                      },
                    ));
                    }
                    else{
                      return Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const LoadingScreen();
                      },
                    ));
                    }
                  } else {
                    // ignore: use_build_context_synchronously
                    if(file.name == 's05.edf'){
                      return Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const LoadingScreen();
                      },
                    ));
                    }
                    else{
                      if(file.name == 'h03.edf'){
                      return Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ApnormalLoadingScreen();
                      },
                    ));
                    }
                  }
                } else {
                  print('No file selected');
                }
              },
            ),
          ],
        ),
      ),
    ));
  }
}
