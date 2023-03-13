import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:schizophrenia/components/components.dart';
import 'package:schizophrenia/view/screens/login_screen/login_screen.dart';
import '../../../widgets/auth_text.dart';
import '../../../widgets/auth_text_field.dart';
import '../../../widgets/route_text.dart';
import '../navigation_bar/navigator.dart';
import '../patient_home/patient_screen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var timecontroller = TextEditingController();

  TextEditingController dateInput = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 120,
                height: 120,
              ),
              Text(
                'Let\'s create your account! ',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              AuthTextField(
                prefix: Icons.person,
                labelText: 'User Name',
                input: TextInputType.name,
                controller: null,
                validate: (value) {
                  if (value!.isEmpty) {
                    return ('Email must not be empty');
                  }
                  return null;
                },
                isPassword: false,
                suffixPressed: () {},
                ontap: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              AuthTextField(
                prefix: Icons.email_outlined,
                labelText: 'Email',
                input: TextInputType.emailAddress,
                controller: emailcontroller,
                isPassword: false,
                suffixPressed: () {},
                ontap: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              AuthTextField(
                prefix: Icons.lock_outline,
                labelText: 'Password',
                hintText: 'Must be at least 6 characters',
                isPassword: isPassword,
                controller: passwordcontroller,
                type: TextInputType.visiblePassword,
                suffixPressed: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                // label: 'Password',
                suffix: isPassword ? Icons.visibility : Icons.visibility_off,
              ),
              const SizedBox(
                height: 15.0,
              ),
              /* SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
              ),*/
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              AuthTextField(
                prefix: Icons.transgender,
                suffix: Icons.arrow_drop_down,
                labelText: 'Gender',
                hintText: 'Select a Gender',
                isPassword: false,
                suffixPressed: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              AuthTextField(
                isPassword: false,
                labelText: 'Birthday',
                prefix: Icons.calendar_today_outlined,
                suffix: Icons.calendar_month_outlined,
                ontap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    print(
                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(
                        formattedDate); //formatted date output using intl package =>  2021-03-16
                    setState(() {
                      dateInput.text =
                          formattedDate; //set output date to TextField value.
                    });
                  } else {}
                },
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'time must not be empty';
                  }
                  return null;
                },
                controller: dateInput,
                hintText: 'Enter Date',
                clickedIcon: IconButton(
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        setState(() {
                          dateInput.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {}
                    },
                    icon: const Icon(Icons.calendar_month_outlined)),
                suffixPressed: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              AuthText(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              defaultClickedButton(
                  text: 'SIGN UP',
                  function: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NavigateScreens()));
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account? '),
                  RouteText(
                      text: 'Log in',
                      funtion: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
