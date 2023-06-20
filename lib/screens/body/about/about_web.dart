
import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/screens/body/about/data.dart';
class AboutWeb extends StatelessWidget {
  const AboutWeb({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.43;
    return Container(
      margin: EdgeInsets.only(top: 80, bottom: 80),
      padding: EdgeInsets.symmetric(horizontal: width / 4),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
               child: Container(
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
            ),
            SizedBox(width: 30,),
            Expanded(
              child: Container(          
                height: 300,      
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Basic Information:", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),),
                    for(int i = 0; i < addressInfo.length; i++)
                    InfoTileBuilder(
                      level: addressInfo[i]["level"],
                      data: addressInfo[i]["data"],
                    ),
                    SizedBox(height: 28,),
                  ],
                ),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Text("$level:".toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
        ),
        SizedBox(width: 50,),
        Expanded(
          flex: 8,
          child: Text("$data", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: textColor)),
        )
      ],
    );
  }
}
