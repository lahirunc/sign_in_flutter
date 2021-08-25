import 'package:flutter/material.dart';
import 'package:sign_in/config.dart';

class BuildLoginTitle extends StatelessWidget {
  const BuildLoginTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: Config.screenWidth! * 0.1,
                // fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: Config.screenHeight! * 0.005),
            Text(
              'Enter email and password to login...',
              style: TextStyle(
                fontSize: Config.screenWidth! * 0.045,
              ),
            ),
            SizedBox(height: Config.screenHeight! * 0.005),
          ],
        ),
      ),
    );
  }
}
