import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/screens/body/exprience/data.dart';
import 'package:portfolio/widgets/exprience_card_builder.dart';

class ExprienceMobilePage extends StatelessWidget {
  const ExprienceMobilePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 40, bottom: 50),
          width: MediaQuery.of(context).size.width,
          color: defaultWhite,
          child: Center(child: Text("Work Experience", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
        ),
        ExprienceCardBuilder(
          isMobile: true,
          duration: "12 Month",
          companyName: "Bami Services",
          designation: 'Software Engineer',
          responsibilty: augnitiveResponsibility,
        ),
        SizedBox(height: 20 ,),
        ExprienceCardBuilder(
          isMobile: true,
          duration: "6 month",
          companyName: "Naistan ",
          designation: 'Trainer of Mobile App Dvelopment (Flutter)',
          responsibilty: vtcBanglaResponsibility,
        ),
        SizedBox(height: 20 ,),
      ],
    );
  }
}

