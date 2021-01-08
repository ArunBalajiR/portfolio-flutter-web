import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';


class AnimativeTitle extends StatelessWidget {
  const AnimativeTitle({
    Key key,
    @required this.namefontSize,
    @required this.descfontSize,
  }) : super(key: key);

  final double namefontSize;
  final double descfontSize;

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      animationDuration: Duration(seconds: 5),
      curve: Curves.fastLinearToSlowEaseIn,
      direction: Direction.vertical,
      offset: 1.0,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Arun Balaji R',
              style: GoogleFonts.montserrat(
                fontSize: namefontSize,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                color: kYellow,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Developer  •  Designer  •  Flutter Enthusiast  •  Open to Learning',
              style: GoogleFonts.montserrat(
                fontSize: descfontSize,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}