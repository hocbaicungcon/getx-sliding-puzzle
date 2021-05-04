import 'package:flutter/material.dart';

class FlatWhiteBoxText extends StatelessWidget {
  final String text;
  FlatWhiteBoxText(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
