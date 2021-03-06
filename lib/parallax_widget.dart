import 'package:flutter/material.dart';

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    Key key,
    @required this.top,
    @required this.asset,
    @required this.height,
    @required this.width,
    @required this.duration,
  }) : super(key: key);

  final double top;
  final int duration;
  final String asset;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: duration),
      left: -45,
      top: top,
      child: Container(
        height: height,
        width: width + 50,
        child: Image.asset("$asset.png", fit: BoxFit.cover),
      ),
    );
  }
}