import 'package:flutter/material.dart';
import 'package:portfolio/screens/body/contact/data.dart';
import 'package:portfolio/widgets/address_tile.dart';
import 'package:portfolio/widgets/custom_textfield.dart';

class ContactWebPage extends StatelessWidget {
  const ContactWebPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final width = MediaQuery.of(context).size.width * 0.43;
    return  Stack(
      children: [
        Container(
          color: Colors.teal,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/contact_bg.png", fit: BoxFit.cover,),
        ),
        Positioned(
          top: 100,
          bottom: 100,
          left: width - 250,
          right: width - 250,
          child: Container(
            decoration: boxDecoration(),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Contact Me", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 400,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Feel free to contact me",  style: TextStyle(height: 1.6,fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xff2c2c2c))),
                                  for(int i = 0; i < hintText.length; i++)
                                  CustomFromField(
                                    hintText: hintText[i],
                                    icon: icon[i],
                                  ),
                                  Container(
                                    height: 82,
                                    child: TextFormField(
                                      minLines: 6, 
                                      keyboardType: TextInputType.multiline,
                                      maxLines: null,
                                      decoration: InputDecoration(
                                        hintText: "Write your massage....",
                                        focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.teal), ),
                                      ),
                                      
                                    ),
                                  ),
                                  SizedBox( 
                                    width: 80, 
                                    height: 40,
                                    child: ElevatedButton(
                                      style: buttonStyle(),
                                      onPressed: (){}, 
                                      child: Text("Send"),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 80),
                          Expanded(
                            child: Container(
                              height: 400,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AddressTileBuilder(
                                    lebel: 'Address',
                                    data: "Barchi, Kabul, Afghanistan",
                                  ),
                                  AddressTileBuilder(
                                    lebel: "Phone",
                                    data: "+93793647446",
                                  ),
                                  AddressTileBuilder(
                                    lebel: "Email",
                                    data: "najibullajafari@gmail.com",
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(4.0),
    boxShadow:[
        BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ] 
  );
  }

  ButtonStyle buttonStyle() {
    return ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.teal),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      )
    )
   );
  }
}
