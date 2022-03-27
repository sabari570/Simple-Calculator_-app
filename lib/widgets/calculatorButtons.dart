import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  final Color textColor;
  final double textSize;
  final Function callBack;
  const CalculatorButton({
    this.text,
    this.fillColor,
    this.textColor,
    this.textSize,
    this.callBack,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        height: 70,
        width: 70,
        child: RaisedButton(
          onPressed: () {
            return callBack(text);
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              color: textColor,
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          color: fillColor,
        ),
      ),
    );
  }
}
