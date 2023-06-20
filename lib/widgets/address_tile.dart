import 'package:flutter/material.dart';

class AddressTileBuilder extends StatelessWidget {
  final String lebel;
  final String data;
  const AddressTileBuilder({
    Key key, this.lebel, this.data
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         SelectableText("$lebel", style: TextStyle(height: 1.6,fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xff2c2c2c))),
         SelectableText("$data",  style: TextStyle(height: 1.6,fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff2c2c2c))),
        ],
      ),
    );
  }
}