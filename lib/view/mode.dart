import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_puzzlee/controller/puzzle_controller.dart';

class Mode extends StatelessWidget {
  PuzzleController puzzleController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {
              puzzleController.mode = 'doraemon';
            },
            child: Text('DORAEMON')),
        TextButton(
            onPressed: () {
              puzzleController.mode = 'mickey';
            },
            child: Text('MICKEY')),
        TextButton(
            onPressed: () {
              puzzleController.mode = 'tifa';
            },
            child: Text('TIFA')),
      ],
    );
  }
}
