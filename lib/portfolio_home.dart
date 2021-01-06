import 'package:flutter/material.dart';
import 'mobile.dart';
import 'desktop.dart';
import 'responsive_widget.dart';


class PortfolioHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: DesktopHomePage(), smallScreen: MobileHomePage());
  }
}