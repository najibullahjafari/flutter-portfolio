import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constant/url.dart';
import 'package:portfolio/screens/home/data.dart';
import 'package:portfolio/screens/home/functions.dart';
import 'package:portfolio/utils/functions.dart';

class StickyHeader extends StatelessWidget {
  const StickyHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          image: AssetImage("assets/image/img-najib.png"),
          fit: BoxFit.cover,
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100,
          ),
          AvatarGlow(
            glowColor: Colors.teal,
            endRadius: 90.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage("assets/image/img-najib.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Najibullah Jafari".toUpperCase(),
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    "Flutter Developer || Full Stack Developer".toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  height: 48,
                  minWidth: 150,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.teal)),
                  onPressed: () {
                    scrollControl(contactKeys);
                  },
                  color: Colors.teal,
                  textColor: Colors.white,
                  child: Text("Hire me".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
                SizedBox(
                  width: 12,
                ),
                MaterialButton(
                  height: 48,
                  minWidth: 150,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.teal)),
                  onPressed: () {
                    launchURL(URL.resumeURL);
                  },
                  color: Colors.teal,
                  textColor: Colors.white,
                  child: Text("Download CV".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
