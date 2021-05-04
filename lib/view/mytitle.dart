import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          'SLIDING PUZZLE',
          style: TextStyle(
              fontSize: 30,
              decoration: TextDecoration.none,
              color: Colors.white),
        ));
  }
}
