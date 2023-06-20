import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';

class EducationCardBuilder extends StatelessWidget {
  final String duration;
  final String courseName;
  final String courseTitle;
  final String institutionName;
  final String gpa;
  final String activitiesTitle;
  final String activitiesDescription;
  final bool isMobile;
  const EducationCardBuilder({
    Key key,
    this.duration, 
    this.activitiesDescription,
    this.activitiesTitle, 
    this.courseName, 
    this.courseTitle, 
    this.gpa, 
    this.institutionName,
    this.isMobile
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width * 0.43;
    return Container(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : width / 4),
        child: Card(
          elevation: 10,
          shadowColor: Colors.grey,
          child: Container(
            child: isMobile ? Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: defaultGreen,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("$duration", textAlign: TextAlign.center, style: TextStyle( height: 1.5,color: defaultWhite, fontSize: 14, fontWeight: FontWeight.normal, fontFamily: 'arial'),),
                      SizedBox(height: 20,),
                      Text('$courseName',  textAlign: TextAlign.center, style: TextStyle(height: 1.5 ,color: defaultWhite, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial'))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$courseTitle",style: TextStyle(color: defaultBlack, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial')),
                      Text( "$institutionName", textAlign: TextAlign.justify, style: TextStyle(height: 1.7),),
                      Text( "$gpa", textAlign: TextAlign.justify, style: TextStyle(height: 1.7),),
                      SizedBox(height: 20,),
                      Text("$activitiesTitle",style: TextStyle(color: defaultBlack, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial')),
                      Text( "$activitiesDescription", textAlign: TextAlign.justify, style: TextStyle(height: 1.7),),
                    ],
                  ),
                )
              ],
             ) : Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: defaultGreen,
                    height: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("$duration", textAlign: TextAlign.center, style: TextStyle( height: 1.5,color: defaultWhite, fontSize: 14, fontWeight: FontWeight.normal, fontFamily: 'arial'),),
                        SizedBox(height: 20,),
                        Text('$courseName',  textAlign: TextAlign.center, style: TextStyle(height: 1.5 ,color: defaultWhite, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial'))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                   height: 180,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("$courseTitle",style: TextStyle(color: defaultBlack, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial')),
                        Text( "$institutionName", textAlign: TextAlign.justify, style: TextStyle(height: 1.7),),
                        Text( "$gpa", textAlign: TextAlign.justify, style: TextStyle(height: 1.7),),
                        SizedBox(height: 20,),
                        Text("$activitiesTitle",style: TextStyle(color: defaultBlack, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial')),
                        Text( "$activitiesDescription", textAlign: TextAlign.justify, style: TextStyle(height: 1.7),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
