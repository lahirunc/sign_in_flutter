import 'package:flutter/material.dart';

import '../config.dart';

class TextWithTextButton extends StatelessWidget {
  const TextWithTextButton({
    Key? key,
    this.text,
    this.textButtonText,
  }) : super(key: key);

  final String? text, textButtonText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.005),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text!),
            TextButton(
              child: Text(textButtonText!),
              onPressed: () => print('Sign up'),
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
