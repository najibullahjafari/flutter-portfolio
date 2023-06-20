import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;
  final Color textColor;
  const NavButton({
    Key key, this.onTap, this.buttonText, this.textColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.all(8),
      child: InkWell(
        hoverColor: Colors.black.withOpacity(0.15),
        borderRadius: BorderRadius.circular(4),
        onTap: onTap,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text("$buttonText".toUpperCase(), style: TextStyle(color: textColor ?? Colors.white),),
          ),
        ),
      ),
    );
  }
}

