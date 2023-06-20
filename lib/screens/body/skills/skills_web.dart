import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/screens/body/skills/data.dart';
import 'package:portfolio/widgets/skill_bar_builder.dart';

class SkillsWeb extends StatelessWidget {
  const SkillsWeb({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.43;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 36),
          width: MediaQuery.of(context).size.width,
          color: defaultWhite,
          child: Center(child: Text("Professional Skills", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
        ),
        Container(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.only(top: 20, bottom: 80),
            padding: EdgeInsets.symmetric(horizontal: width / 4),
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for(int i = 0; i < skillsName.length / 2; i++)
                            SkillBarBuilder(
                              skillName: skillsName[i],
                              progress: progress[i],
                              progressValue: double.parse(progress[i]) / 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for(int i = skillsName.length - 1 ; i >= skillsName.length / 2; i--)
                            SkillBarBuilder(
                              skillName: skillsName[i],
                              progress: progress[i],
                              progressValue: double.parse(progress[i]) / 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

