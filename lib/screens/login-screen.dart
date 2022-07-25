import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mr_receipe/widgets/pallete.dart';
import 'package:mr_receipe/widgets/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? password;
  String? email;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        BackgroundImage(
          image: 'assets/images/img4.jpg',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ModalProgressHUD(
            inAsyncCall: showSpinner,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.width * 0.3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 105.0),
                    child: Center(
                      child: Text(
                        'MrRecipe',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextInputField(
                        ontap: (value) {
                          email = value;
                          print(value);
                        },
                        icon: FontAwesomeIcons.envelope,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),
                      PasswordInput(
                        ontap: (value) {
                          password = value;
                          print(value);
                        },
                        icon: FontAwesomeIcons.lock,
                        hint: 'Password',
                        inputAction: TextInputAction.done,
                      ),
                      GestureDetector(
                        onTap: () async {
                          Navigator.pushNamed(context, 'ForgotPassword');
                        },
                        child: Text(
                          'Forgot Password',
                          style: kBodyText,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      RoundedButton(
                          buttonName: 'Login',
                          ontap: () async {
                            setState(() {
                              showSpinner = true;
                            });
                          }),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'CreateNewAccount'),
                    child: Container(
                      child: Text(
                        'Create New Account',
                        style: kBodyText,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 1, color: kWhite))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
