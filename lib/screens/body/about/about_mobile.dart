
import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/screens/body/about/data.dart';
class AboutMobile extends StatelessWidget {
  const AboutMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80, bottom: 80),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("About", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),),
                 SizedBox(height: 16,),
                 Text(about, style: TextStyle(height: 1.6,fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff2c2c2c)), textAlign: TextAlign.justify,
                 ),
               ],
             ),
            ),
            SizedBox(width: 30,),
            Container(                 
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Basic Information:", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),),
                  SizedBox(height: 16,),
                  for(int i = 0; i < addressInfo.length; i++)
                  InfoTileBuilder(
                    level: addressInfo[i]["level"],
                    data: addressInfo[i]["data"],
                  ),
                  SizedBox(height: 28,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoTileBuilder extends StatelessWidget {
  final String level;
  final String data;
  const InfoTileBuilder({
    Key key, this.level, this.data
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$level:".toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, height: 2.5)),
        Text("$data", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: textColor))
      ],
    );
  }
}

