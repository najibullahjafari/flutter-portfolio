import 'package:flutter/material.dart';
import 'package:portfolio/screens/body/contact/contact_mobile.dart';
import 'package:portfolio/screens/body/contact/contact_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactLayout extends StatelessWidget {
  const ContactLayout({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 600,
        desktop: 950,
        watch: 300
      ),
      mobile: ContactMobilePage(),
      tablet: ContactMobilePage(),
      desktop: ContactWebPage(),
    );
  }
}