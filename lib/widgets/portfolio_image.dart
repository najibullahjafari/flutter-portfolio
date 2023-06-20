import 'package:flutter/material.dart';


class PortfolioImage extends StatefulWidget {

  final String imagePath;
  final String title;
  final String subtitle;
  final Function onTap;
  final bool isWeb;

  const PortfolioImage({
    @required this.imagePath, 
    this.title, 
    this.subtitle,
    this.isWeb,
    @required this.onTap,
  });

  @override
  _PortfolioImageState createState() => _PortfolioImageState();
}

class _PortfolioImageState extends State<PortfolioImage> {

  bool isHover = false;
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0,0);

  void _onHover(value) {
    print(value);
    if(value){
      setState((){
        elevation = 4.0; 
        scale = 0.9;
        isHover = true;
        translate = Offset(0,0);
      });
    }else{
      setState((){
        elevation = 20.0;     
        scale = 1.0;
        isHover = false;
        translate = Offset(8,8);
      });
    }
  }
  @override
  Widget build(context) {
    var webSize = MediaQuery.of(context).size.width * 0.43;
    var size = MediaQuery.of(context).size.width;
    return widget.isWeb ? Container(
      width: webSize * 0.86, 
      height:  webSize * 0.64,
      child: InkWell(      
          onTap: widget.onTap,
          onHover: _onHover,
          hoverColor: Colors.teal,
          child: Stack(
            children: [  
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              padding: EdgeInsets.all(isHover ? 15 : 0),
              child: Image.asset("${widget.imagePath}", 
              fit: BoxFit.cover, 
              width:  webSize * 0.86, 
              height: webSize * 0.64,
             ),
            ),

            isHover ? AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
              width:  webSize * 0.86, 
              height:  webSize * 0.64,
              margin: EdgeInsets.all(isHover ? 15 : 0),
              color: Colors.black54 .withOpacity(0.50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${widget.title}", style: TextStyle(color: Colors.white, fontSize: size < 380 ? 14 : 22, fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  Text("${widget.subtitle}", style:TextStyle(color: Colors.white, fontSize: size < 380 ? 14 : 22, fontWeight: FontWeight.w500))
                ],
              ),
            ) : Container(height: 0,width: 0),
          ],
        ),
      ),
     ) : Container(
      child: InkWell(      
          onTap: widget.onTap,
          onHover: _onHover,
          hoverColor: Colors.teal,
          child: Stack(
            children: [  
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              padding: EdgeInsets.all(isHover ? 15 : 0),
              child: Image.asset("${widget.imagePath}", 
              fit: BoxFit.fitHeight, 
              width: size,
             ),
            ),

            isHover ? AnimatedContainer(
              width: size,
              height: size * 0.75 - 45,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
              margin: EdgeInsets.all(isHover ? 15 : 0),
              color: Colors.black54 .withOpacity(0.50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${widget.title}", style: TextStyle(color: Colors.white, fontSize: size < 380 ? 14 : 22, fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  Text("${widget.subtitle}", style:TextStyle(color: Colors.white, fontSize: size < 380 ? 14 : 22, fontWeight: FontWeight.w500))
                ],
              ),
            ) : Container(height: 0,width: 0),
          ],
        ),
      ),
    );
  }
}

