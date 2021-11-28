import 'package:flutter/material.dart';

class Calculatorbutton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textcolor;
  final double textsize;
  final Function callback;

  const Calculatorbutton({
    required this.text,
    required this.fillColor,
    required this.textcolor,
    required this.textsize,
    required this.callback
});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          child: Text(text,
            style: TextStyle(
              fontSize: textsize,
            ),

          ),
          onPressed: ()=> callback(text),
          color: Colors.blueAccent,
          textColor: Color(textcolor),
        ),
      ),
    );
  }
}
