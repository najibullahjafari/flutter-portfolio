import 'package:flutter/material.dart';
import 'package:portfolio/screens/body/exprience/exprience_mobile.dart';
import 'package:portfolio/screens/body/exprience/exprience_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExprienceLayout extends StatelessWidget {
  const ExprienceLayout({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 600,
        desktop: 950,
        watch: 300
      ),
      mobile: ExprienceMobilePage(),
      tablet: ExprienceMobilePage(),
      desktop: ExprienceWebPage()
    );
  }
}