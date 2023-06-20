import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 18,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: (){}, 
                      icon: Icon(socialIcons[i]),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 36,),
            Container(
              child: Text('RESUME OFNajibullah Jafari', style: TextStyle(fontFamily: "inherit", fontSize: width < 380 ? 18 : 28, fontWeight: FontWeight.w700, letterSpacing: 1.5 ),),
            ),
            SizedBox(height: 18,),
            Container(
              child: Text("© Develped By Najibullah Jafari and Aliullah Wakili with Flutter",style: TextStyle(fontFamily: "inherit", fontSize:  width < 380 ? 14 : 18, fontWeight: FontWeight.w500,  color: Colors.black45 )),
            ),
            SizedBox(height: 36,),
          ],
        ),
      ),
    );
  }
}

List<IconData> socialIcons = <IconData>[
  FontAwesomeIcons.facebookF, 
  FontAwesomeIcons.twitter, 
  FontAwesomeIcons.linkedinIn, 
  FontAwesomeIcons.youtube
]; 