import 'package:flutter/material.dart';

import '../../widgets/hero_image.dart';
import 'localWidgets/sign_in_form.dart';
import '../../widgets/hero_title.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // shows header title
        HeroTitle(
          title: 'Welcome!',
          subtitle: 'Enter email and password to login...',
        ),
        // shows image
        HeroImage(
          path: 'assets/loginHero.svg',
          sementicLabel: 'Login Hero',
        ),
        // shows textfields and buttons
        SignInForm(),
      ],
    );
  }
}
