import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';

class ExprienceCardBuilder extends StatelessWidget {
  final String duration;
  final String companyName;
  final String designation;
  final String responsibilty;
  final bool isMobile;
  const ExprienceCardBuilder({
    Key key,
    this.companyName, this.designation, this.duration, this.responsibilty, this.isMobile
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
            child:isMobile ? Column(
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
                      Text('$companyName',  textAlign: TextAlign.center, style: TextStyle(height: 1.5 ,color: defaultWhite, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial'))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$designation",style: TextStyle(color: defaultBlack, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial')),
                      SizedBox(height: 20,),
                      Text(
                        "$responsibilty",
                        textAlign: TextAlign.justify,
                        style: TextStyle(height: 1.7),
                        
                       )
                     ],
                   ),
                 )
               ],
              ) : Container(
                color: defaultGreen,
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      color: defaultGreen,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("$duration", textAlign: TextAlign.center, style: TextStyle( height: 1.5,color: defaultWhite, fontSize: 14, fontWeight: FontWeight.normal, fontFamily: 'arial'),),
                          SizedBox(height: 20,),
                          Text('$companyName',  textAlign: TextAlign.center, style: TextStyle(height: 1.5 ,color: defaultWhite, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial'))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("$designation",style: TextStyle(color: defaultBlack, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial')),
                          SizedBox(height: 20,),
                          Text(
                            "$responsibilty",
                            textAlign: TextAlign.justify,
                            style: TextStyle(height: 1.7),
                            
                          )
                        ],
                      ),
                    ),
                  )
                ],
            ),
              ),
          ),
        ),
      ),
    );
  }
}
