import 'package:flutter/material.dart';
import 'parallax_widget.dart';

class MobileHomePage extends StatefulWidget {
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  double top1 = 0;
  double top2 = 10;
  double top3 = 900;
  // double top4 = 10;

  double actualHeight = 0;

  String asset;
  double top;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double sheight = mediaQueryData.size.height;
    double swidth = mediaQueryData.size.width;
    return Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            //only if scroll update notification is triggered
            setState(() {
              top1 = top1 - v.scrollDelta / 2;
              top2 = top2 - v.scrollDelta / 1;
              top3 = top3 - v.scrollDelta / 0.6;
              // top4 = top4 - v.scrollDelta / 0.8;
            });
          }
          return false;
        },
        child: LayoutBuilder(
          builder: (ctx, constraints) {
            double tempHeight = constraints.maxHeight + 500;

            actualHeight = tempHeight;

            return Stack(
              alignment: Alignment.center,
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  top: top1,
                  child: Container(
                    height: sheight,
                    width: swidth + 50,
                    child: Image.asset("parallax9.png", fit: BoxFit.cover),
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  top: top2,
                  child: Container(
                    height: sheight,
                    width: swidth + 50,
                    child: Image.asset("parallax10.png", fit: BoxFit.cover),
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  top: top3,
                  child: Container(
                    height: sheight,
                    width: swidth + 50,
                    child: Image.asset("parallax11.png", fit: BoxFit.cover),
                  ),
                ),

                ListView(
                  children: [
                    Container(
                      height: actualHeight,
                      // height: 1400,
                      color: Colors.transparent.withOpacity(0.2),
                    ),
                    Container(
                      height: actualHeight,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
