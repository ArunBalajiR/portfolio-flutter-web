import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimativeIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        ShowUpAnimation(
          animationDuration: Duration(seconds: 5),
          curve: Curves.fastLinearToSlowEaseIn,
          direction: Direction.vertical,
          offset: 1.0,
          child: SvgPicture.asset(
              'assets/linkedin.svg',
              color: Colors.red,
              semanticsLabel: 'A red up arrow'
          ),
        ),
      ],
    );
  }
}
