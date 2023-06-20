import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/home_screen_mobile.dart';
import 'package:portfolio/screens/home/home_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreenLayout extends StatelessWidget {
  const HomeScreenLayout({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 600,
        desktop: 950,
        watch: 300
      ),
      mobile: HomeScreenMobile(),
      tablet: HomeScreenMobile(),
      desktop: HomeScreenWeb()
    );
  }
}