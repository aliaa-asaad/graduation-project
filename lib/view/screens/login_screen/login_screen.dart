import 'package:flutter/material.dart';

import '../../../components/components.dart';
import '../../../widgets/auth_text.dart';
import '../../../widgets/auth_text_field.dart';
import '../../../widgets/route_text.dart';
import '../navigation_bar/navigator.dart';
import '../signup_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();
  var timecontroller = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

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
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 120,
                  height: 120,
                ),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                AuthTextField(
                  prefix: Icons.person,
                  labelText: 'User Name',
                  input: TextInputType.name,
                  controller: emailcontroller,
                  isPassword: false,
                  suffixPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                AuthTextField(
                  prefix: Icons.lock_outline,
                  labelText: 'Password',
                  input: TextInputType.visiblePassword,
                  controller: passwordcontroller,
                  type: TextInputType.visiblePassword,
                  suffixPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Password is too short';
                    }
                    return null;
                  },
                  hintText: 'Must be at least 6 characters',
                  // label: 'Password',
                  suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                  isPassword: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
                const AuthText(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                defaultClickedButton(
                    text: 'LOGIN',
                    function: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NavigateScreens()));
                    }),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('You are new here? '),
                    RouteText(
                        text: 'Sign Up',
                        funtion: () async {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
