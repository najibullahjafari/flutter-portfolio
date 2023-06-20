import 'package:flutter/material.dart';


class CustomFromField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final double width;
  const CustomFromField({
    Key key, this.hintText, this.icon, this.width
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
   final width = MediaQuery.of(context).size.width;
    return Container(
      width: width ?? width / 4 - 100,
      height: 40,
      child: TextFormField(
          decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ), 
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: hintText,
          contentPadding: EdgeInsets.only(top: 10),
          prefixIcon: Icon(icon, size: 18,),
      ),
     ),
    );
  }
}