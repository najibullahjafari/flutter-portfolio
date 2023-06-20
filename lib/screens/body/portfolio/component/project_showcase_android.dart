import 'package:flutter/material.dart';
import 'package:portfolio/utils/functions.dart';
import 'package:portfolio/widgets/portfolio_image.dart';

class ProjectShowCaseAndroid extends StatefulWidget {
  final data;
  const ProjectShowCaseAndroid({ 
    Key key , this.data
  }) : super(key: key);

  @override
  _ProjectShowCaseAndroidState createState() => _ProjectShowCaseAndroidState();
}

class _ProjectShowCaseAndroidState extends State<ProjectShowCaseAndroid> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               PortfolioImage(
                 isWeb: false,
                 imagePath: widget.data[0]["imagePath"],
                 title: widget.data[0]["title"],
                 subtitle: widget.data[0]["subtitle"],
                 onTap:()=> launchURL(widget.data[0]["liveUrl"]),
               ),
               SizedBox(height:40),
               PortfolioImage(
                 isWeb: false,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PortfolioImage(
                  isWeb: false,
                  imagePath: widget.data[2]["imagePath"],
                  title: widget.data[2]["title"],
                  subtitle: widget.data[2]["subtitle"],
                  onTap:()=> launchURL(widget.data[2]["liveUrl"]),
                ),
                SizedBox(height:40),
                PortfolioImage(
                  isWeb: false,
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
