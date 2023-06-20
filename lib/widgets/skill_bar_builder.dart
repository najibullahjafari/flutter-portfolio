import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';


class SkillBarBuilder extends StatelessWidget {
  final String skillName;
  final double progressValue;
  final String progress;

  const SkillBarBuilder({
    this.progress, this.progressValue, this.skillName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("$skillName".toUpperCase(), style: TextStyle(fontSize: 18, color: defaultGreen, fontWeight: FontWeight.w500, fontFamily: "Arial"),),
               Text("$progress%",style: TextStyle(fontSize: 18, color: defaultGreen, fontWeight: FontWeight.w500, fontFamily: "Arial"),),
             ],
           ),
         ),
         SizedBox(height: 16,),
         Container(
           child: LinearProgressIndicator(
             backgroundColor: defaultGreen.withOpacity(0.4),
             value: progressValue ?? 0.0,  
             valueColor: AlwaysStoppedAnimation(defaultGreen),
             minHeight: 05,
           ),
         )
       ],
     ),
   );
  }
}