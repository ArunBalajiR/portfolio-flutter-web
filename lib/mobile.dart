import 'package:flutter/material.dart';
import 'package:portfolio/responsive_widget.dart';
import 'parallax_widget.dart';
import 'constants.dart';
import 'title.dart';
import 'common_widgets.dart';
import 'icons.dart';

class MobileHomePage extends StatefulWidget {
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  double top1 = 0;
  double top2 = 50;
  double top3 = 750;
  // double top4 = 10;

  double actualHeight = 0; //

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
          print('ima at start');
          animatedIcons = null;
          name = null;
          _visible = false;
        } else {
          print('im at end');
          animatedIcons = AnimativeIcons();
          _visible = true;
          name = ResponsiveWidget(
            largeScreen: AnimativeTitle(namefontSize: 60.0,descfontSize: 15.0),
            smallScreen: AnimativeTitle(namefontSize: 45.0,descfontSize: 10.0),
            );
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
              top3 = top3 - v.scrollDelta / 1;
              top2 = top2 - v.scrollDelta / 2;
              top1 = top1 - v.scrollDelta / 3;
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
                ParallaxWidget(
                  top: top1,
                  asset: "parallax9",
                  height: sheight,
                  width: swidth,
                  duration: 0,
                ),
                ParallaxWidget(
                  top: top2,
                  asset: "parallax10",
                  height: sheight,
                  width: swidth,
                  duration: 0,
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  child: ListView(
                    controller: _controller,
                    children: [
                      Container(
                        height: actualHeight,
                        // height: 1400,
                        color: Colors.transparent,
                      ),
                      Container(
                        height: sheight,
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
                        child: copyRightMob,
                      ),

                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
