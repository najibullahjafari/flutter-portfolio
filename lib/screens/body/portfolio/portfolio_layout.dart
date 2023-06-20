import 'package:flutter/material.dart';
import 'package:portfolio/screens/body/portfolio/portfolio_mobile.dart';
import 'package:portfolio/screens/body/portfolio/portfolio_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfoliolayout extends StatelessWidget {
  const Portfoliolayout({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 600,
        desktop: 950,
        watch: 300
      ),
      mobile: PortfolioMobilePage(),
      tablet: PortfolioMobilePage(),
      desktop: PortfolioWebPage()
    );
  }
}