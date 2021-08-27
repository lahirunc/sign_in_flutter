import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sign_in/config.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({
    Key? key,
    @required this.path,
    @required this.sementicLabel,
  }) : super(key: key);

  final String? path, sementicLabel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.02),
        child: SvgPicture.asset(
          path!,
          semanticsLabel: sementicLabel,
        ),
      ),
    );
  }
}
