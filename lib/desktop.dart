import 'package:flutter/material.dart';
import 'parallax_widget.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'icons.dart';

class DesktopHomePage extends StatefulWidget {
  @override
  _DesktopHomePageState createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  double rateZero = 0;
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 0;
  double rateSeven = 0;
  double rateEight = 90;

  String asset;
  double top;
  bool _visible = false;

  Widget name;

  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    // Setup the listener.
    _controller.addListener(() {
      if (_controller.position.atEdge) {
        if (_controller.position.pixels == 0) {
          // _visible = !_visible;
        } else {
          print("i'm at bottom");
          // _visible = !_visible;

        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double sheight = mediaQueryData.size.height;
    double swidth = mediaQueryData.size.width;
    return Scaffold(
      backgroundColor: Color(0xff210002),
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            //only if scroll update notification is triggered
            setState(() {
              rateEight -= v.scrollDelta / 1;
              rateSeven -= v.scrollDelta / 1.5;
              rateSix -= v.scrollDelta / 2;
              rateFive -= v.scrollDelta / 2.5;
              rateFour -= v.scrollDelta / 3;
              rateThree -= v.scrollDelta / 3.5;
              rateTwo -= v.scrollDelta / 4;
              rateOne -= v.scrollDelta / 4.5;
              rateZero -= v.scrollDelta / 5;
              name = ShowUpAnimation(
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
                          color: Color(0xffFEAE00),
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
            });
          }

          return false;
        },
        child: Stack(
          children: <Widget>[
            ParallaxWidget(
              top: rateZero,
              asset: "parallax0",
              height: sheight,
              width: swidth,
            ),
            ParallaxWidget(
              top: rateOne,
              asset: "parallax1",
              height: sheight,
              width: swidth,
            ),
            ParallaxWidget(
              top: rateTwo,
              asset: "parallax2",
              height: sheight,
              width: swidth,
            ),
            ParallaxWidget(
              top: rateThree,
              asset: "parallax3",
              height: sheight,
              width: swidth,
            ),
            ParallaxWidget(
              top: rateFour,
              asset: "parallax4",
              height: sheight,
              width: swidth,
            ),
            ParallaxWidget(
              top: rateFive,
              asset: "parallax5",
              height: sheight,
              width: swidth,
            ),
            ParallaxWidget(
              top: rateSix,
              asset: "parallax6",
              height: sheight,
              width: swidth,
            ),
            ParallaxWidget(
              top: rateSeven,
              asset: "parallax7",
              height: sheight,
              width: swidth,
            ),
            ParallaxWidget(
              top: rateEight,
              asset: "parallax8",
              height: sheight,
              width: swidth,
            ),
            ListView(
              controller: _controller,
              children: <Widget>[
                Container(
                  height: 700,
                  color: Colors.transparent,
                ),
                Container(
                  color: Color(0xff210002),
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 70),
                  child: Container(
                    height: sheight,
                    width: swidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(),
                        Center(
                          child: name,
                        ),

                        Text(
                          '© Copyright 2020, ArunBalajiR ',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    color: Color(0xff210002),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
