import 'package:flutter/material.dart';
import 'parallax_widget.dart';
import 'common_widgets.dart';
import 'icons.dart';
import 'title.dart';
import 'constants.dart';

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
  Widget animatedIcons;

  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    // Setup the listener.
    _controller.addListener(() {
      if (_controller.position.atEdge) {
        if (_controller.position.pixels == 0) {
          _visible = !_visible;
          animatedIcons = null;
          name = null;

        } else {
          animatedIcons = AnimativeIcons();
          _visible = !_visible;
          name = AnimativeTitle();

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
      backgroundColor: kDarkBrownColor,
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
                  color: kDarkBrownColor,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 70),
                  child: Container(
                    height: sheight,
                    width: swidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        SizedBox(),
                        Center(
                          child: name,
                        ),
                        SizedBox(height: 30.0),
                        Container(
                          child: animatedIcons,
                        ),

                      ],
                    ),
                    color: kDarkBrownColor,
                  ),
                ),
              ],
            ),
            AnimatedOpacity(
              duration: Duration(seconds:1),
              opacity: _visible ? 1.0 : 0.0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:<Widget>[

                  Center(
                    child: copyRight,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


