import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';


class AnimativeTitle extends StatelessWidget {
  const AnimativeTitle({
    Key key,
  }) : super(key: key);

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
                fontSize: 60,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                color: kYellow,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Developer  •  Designer  •  Flutter Enthusiast  •  Open to Learning',
              style: GoogleFonts.montserrat(
                fontSize: 15,
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