import 'package:flutter/material.dart';
import 'package:sign_in/config.dart';

import 'localWidgets/buildHeroImage.dart';
import 'localWidgets/buildLoginForm.dart';
import 'localWidgets/buildLoginTitle.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.04),
          child: Column(
            children: [
              BuildLoginTitle(),
              BuildHeroImage(),
              BuildLoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
