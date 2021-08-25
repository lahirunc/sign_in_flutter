import 'package:flutter/material.dart';
import 'package:sign_in/config.dart';
import 'package:sign_in/widgets/RoundedTextFormField.dart';
import 'package:sign_in/widgets/textWithTextButton.dart';

class BuildLoginForm extends StatefulWidget {
  BuildLoginForm({
    Key? key,
  }) : super(key: key);

  @override
  _BuildLoginFormState createState() => _BuildLoginFormState();
}

class _BuildLoginFormState extends State<BuildLoginForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            RoundedTextFormField(
              controller: _emailController,
              hintText: 'Email',
              validator: (value) {
                bool _isEmailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value!);
                if (!_isEmailValid) {
                  return 'Invalid email.';
                }
                return null;
              },
            ),
            SizedBox(height: Config.screenHeight! * 0.01),
            RoundedTextFormField(
              controller: _passwordController,
              hintText: 'Password',
              obsecureText: true,
              validator: (value) {
                if (value.toString().length <= 6) {
                  return 'Password should be longer or equal to 6 characters.';
                }
                return null;
              },
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.005),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text('Forgot Password?'),
                  onPressed: () => print('forgot password'),
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              child: Text(
                'Sign in',
                style: TextStyle(fontSize: Config.screenWidth! * 0.04),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth! * 0.4,
                    vertical: Config.screenHeight! * 0.02),
                primary: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            TextWithTextButton(
                text: 'Don\'t have an account?', textButtonText: 'Sign up'),
          ],
        ),
      ),
    );
  }
}
