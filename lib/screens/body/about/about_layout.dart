import 'package:flutter/material.dart';
import 'package:portfolio/screens/body/about/about_mobile.dart';
import 'package:portfolio/screens/body/about/about_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutLayout extends StatelessWidget {
  const AboutLayout({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 600,
        desktop: 950,
        watch: 300
      ),
      mobile: AboutMobile(),
      tablet: AboutMobile(),
      desktop: AboutWeb(),
    );
  }
}