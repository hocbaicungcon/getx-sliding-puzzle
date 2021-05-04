import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Win extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        color: Colors.black,
        child: Stack(alignment: AlignmentDirectional.center, children: [
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'YOU WIN',
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.none),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
