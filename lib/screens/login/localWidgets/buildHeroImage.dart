import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sign_in/config.dart';

class BuildHeroImage extends StatelessWidget {
  const BuildHeroImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.02),
        child: SvgPicture.asset(
          'assets/loginHero.svg',
          semanticsLabel: 'Login Hero',
        ),
      ),
    );
  }
}
