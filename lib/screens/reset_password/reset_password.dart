import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sign_in/widgets/hero_image.dart';
import 'package:sign_in/widgets/hero_title.dart';

import '../../config.dart';
import 'localWidgets/reset_form.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.04),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Get.back(),
              ),
            ),
            HeroTitle(
                title: 'Recovery', subtitle: 'Please enter you account email'),
            SizedBox(height: Config.screenHeight! * 0.05),
            HeroImage(
                path: 'assets/resetHero.svg', sementicLabel: 'Reset Hero'),
            SizedBox(height: Config.screenHeight! * 0.05),
            ResetForm(),
            SizedBox(height: Config.screenHeight! * 0.2),
          ],
        ),
      )),
    );
  }
}
