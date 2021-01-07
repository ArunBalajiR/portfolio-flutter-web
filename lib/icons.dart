import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hovering/hovering.dart';

class AnimativeIcons extends StatefulWidget {
  @override
  _AnimativeIconsState createState() => _AnimativeIconsState();
}

class _AnimativeIconsState extends State<AnimativeIcons> {



  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceBetween,
      spacing:  20.0,
      children: <Widget>[
        HoverIcon(hoverIcon: "github",delay: 200,url: "https://github.com/ArunBalajiR"),
        HoverIcon(hoverIcon: "linkedin",delay: 400,url:"https://www.linkedin.com/in/ArunBalajiR/"),
        HoverIcon(hoverIcon: "hackerrank",delay: 600,url:"https://www.hackerrank.com/ArunBalajiR"),
        HoverIcon(hoverIcon: "twitter",delay: 800,url:"https://twitter.com/arunadhigaaram"),
        HoverIcon(hoverIcon: "instagram",delay: 1000,url:"http://instagram.com/arunadhigaaram/"),
        HoverIcon(hoverIcon: "gmail",delay: 1200,url:"mailto:arunbalaji25062k@gmail.com"),

      ],
    );
  }
}

class HoverIcon extends StatelessWidget {
  _launchURL(String goToUrl) async {
    String url = goToUrl;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  const HoverIcon({
    Key key,

    @required this.delay,
    @required this.hoverIcon,
    @required this.url,
  }) : super(key: key);


  final int delay;
  final String hoverIcon;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      animationDuration: Duration(seconds: 1),
      delayStart: Duration(milliseconds: delay),
      curve: Curves.easeIn,
      direction: Direction.vertical,
      offset: 1.0,
      child: GestureDetector(
        onTap: (){
          _launchURL(url);
        },
        child: HoverWidget(
          child: Image.network(
            "/assets/svg/$hoverIcon.svg",
            width: 70,
            color: kHoverColor,
            semanticLabel: "github",
          ),
          onHover: (a) {
            print('im hovered');
          },
          hoverChild: Image.network(
            "/assets/svg/$hoverIcon.svg",
            width: 70,
            color: kYellow,
            semanticLabel: "github",
          ),

        ),
      ),
    );
  }
}
