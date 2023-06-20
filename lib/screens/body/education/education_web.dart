import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/widgets/education_card_builder.dart';

class EducationWebPage extends StatelessWidget {
  const EducationWebPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 36, bottom: 50),
          width: MediaQuery.of(context).size.width,
          color: defaultWhite,
          child: Center(child: Text("Education", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
        ),
        EducationCardBuilder(
          isMobile: true,
          duration: "2019",
          courseName: "High School",
          courseTitle: "School",
          institutionName: "Abdul Rahim shaheed high school",
          gpa: "none",
          activitiesTitle: "Activities and Society:",
          activitiesDescription: "TEAM WORK ICPC",
        ),
        SizedBox(height: 20 ,),
        EducationCardBuilder(
          isMobile: true,
          duration: "2021-now",
          courseName: "Bacheler's degree",
          courseTitle: "Information system",
          institutionName: "Kabul University",
          gpa: "none",
          activitiesTitle: "Activities :",
          activitiesDescription: "ENGLISH LANGUAGE",),
        SizedBox(height: 20 ,),
      ],
    );
  }
}


