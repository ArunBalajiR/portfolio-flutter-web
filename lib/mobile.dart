import 'package:flutter/material.dart';
import 'parallax_widget.dart';
class MobileHomePage extends StatefulWidget {
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
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
            // ParallaxWidget(
            //   top: rateZero,
            //   asset: "parallax0",
            //   height: sheight,
            //   width: swidth,
            // ),
            // ParallaxWidget(
            //   top: rateOne,
            //   asset: "parallax1",
            //   height: sheight,
            //   width: swidth,
            // ),
            // ParallaxWidget(
            //   top: rateTwo,
            //   asset: "parallax2",
            //   height: sheight,
            //   width: swidth,
            // ),
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
          ],
        ),
      ),
    );
  }
}

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      addAutomaticKeepAlives: true,
      children: <Widget>[
        Container(
          height: 700,
          color: Colors.transparent,
        ),
        Container(
          color: Color(0xff210002),
          width: double.infinity,
          padding: EdgeInsets.only(top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Parallax In",
                style: TextStyle(
                    fontSize: 30, letterSpacing: 1.8, color: Color(0xffffaf00)),
              ),
              Text(
                "Flutter",
                style: TextStyle(
                    fontSize: 51, letterSpacing: 1.8, color: Color(0xffffaf00)),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 190,
                child: Divider(
                  height: 1,
                  color: Color(0xffffaf00),
                ),
              ),
              Text(
                "Parallax In",
                style: TextStyle(
                    fontSize: 30, letterSpacing: 1.8, color: Color(0xffffaf00)),
              ),
              Text(
                "Flutter",
                style: TextStyle(
                    fontSize: 51, letterSpacing: 1.8, color: Color(0xffffaf00)),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 190,
                child: Divider(
                  height: 1,
                  color: Color(0xffffaf00),
                ),
              ),
              Text(
                "Parallax In",
                style: TextStyle(
                    fontSize: 30, letterSpacing: 1.8, color: Color(0xffffaf00)),
              ),
              Text(
                "Flutter",
                style: TextStyle(
                    fontSize: 51, letterSpacing: 1.8, color: Color(0xffffaf00)),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Parallax In",
                style: TextStyle(
                    fontSize: 30, letterSpacing: 1.8, color: Color(0xffffaf00)),
              ),
              SizedBox(
                width: 190,
                child: Divider(
                  height: 1,
                  color: Color(0xffffaf00),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Made By",
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.3,
                  color: Color(0xffffaf00),
                ),
              ),
              Text(
                "The CS Guy",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat-Regular",
                  letterSpacing: 1.8,
                  color: Color(0xffffaf00),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ],
    );
  }
}


//
//

//
// Stack(
// children: <Widget>[
// Image(
// image: AssetImage(
// "$asset.png",
// ),
// height: height,
// width: width,
// fit: BoxFit.cover,
// ),
// ],
// );
