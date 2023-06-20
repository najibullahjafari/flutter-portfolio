import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/screens/body/skills/data.dart';
import 'package:portfolio/widgets/skill_bar_builder.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: defaultWhite,
          child: Center(child: Text("Professional Skills", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
        ),
        Container(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.only(top: 20, bottom: 80),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Container(
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
                    Container(
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