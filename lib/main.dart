import 'package:flutter/material.dart';
import 'portfolio_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Arun's Portfolio",
      debugShowCheckedModeBanner: false,
      home: PortfolioHome(),
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