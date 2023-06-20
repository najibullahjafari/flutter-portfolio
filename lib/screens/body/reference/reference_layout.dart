import 'package:flutter/material.dart';
import 'package:portfolio/screens/body/reference/reference_mobile.dart';
import 'package:portfolio/screens/body/reference/reference_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ReferenceLayout extends StatelessWidget {
  const ReferenceLayout({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 600,
        desktop: 950,
        watch: 300
      ),
      mobile: ReferenceMobile(),
      tablet: ReferenceMobile(),
      desktop: ReferenceWeb()
    );
  }
}