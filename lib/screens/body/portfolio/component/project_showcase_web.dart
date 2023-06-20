import 'package:flutter/material.dart';
import 'package:portfolio/utils/functions.dart';
import 'package:portfolio/widgets/portfolio_image.dart';

class ProjectShoaawCaseWeb extends StatefulWidget {
  final data;
  const ProjectShoaawCaseWeb({ 
    Key key , this.data
  }) : super(key: key);

  @override
  _ProjectShoaawCaseWebState createState() => _ProjectShoaawCaseWebState();
}

class _ProjectShoaawCaseWebState extends State<ProjectShoaawCaseWeb> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               PortfolioImage(
                 isWeb: true,
                 imagePath: widget.data[0]["imagePath"],
                 title: widget.data[0]["title"],
                 subtitle: widget.data[0]["subtitle"],
                 onTap:()=> launchURL(widget.data[0]["liveUrl"]),
               ),
               SizedBox(width:40),
               PortfolioImage(
                 isWeb: true,
                 imagePath: widget.data[1]["imagePath"],
                 title: widget.data[1]["title"],
                 subtitle: widget.data[1]["subtitle"],
                 onTap:()=> launchURL(widget.data[1]["liveUrl"]),
               ),
              ],
            ),
          ),
          SizedBox(height:40),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PortfolioImage(
                  isWeb: true,
                  imagePath: widget.data[2]["imagePath"],
                  title: widget.data[2]["title"],
                  subtitle: widget.data[2]["subtitle"],
                  onTap:()=> launchURL(widget.data[2]["liveUrl"]),
                ),
                SizedBox(width:40),
                PortfolioImage(
                  isWeb: true,
                  imagePath: widget.data[3]["imagePath"],
                  title: widget.data[3]["title"],
                  subtitle: widget.data[3]["subtitle"],
                  onTap:()=> launchURL(widget.data[3]["liveUrl"]),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
