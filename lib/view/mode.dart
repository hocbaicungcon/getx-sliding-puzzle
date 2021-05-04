import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_puzzlee/controller/puzzle_controller.dart';
import 'package:sliding_puzzlee/view/component/flat_white_box.dart';

class Mode extends StatelessWidget {
  final PuzzleController puzzleController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {
              puzzleController.mode = 'doraemon';
            },
            child: FlatWhiteBoxText('DORA')),
        TextButton(
            onPressed: () {
              puzzleController.mode = 'mickey';
            },
            child: FlatWhiteBoxText('MICKEY')),
        TextButton(
            onPressed: () {
              puzzleController.mode = 'tifa';
            },
            child: FlatWhiteBoxText('TIFA')),
      ],
    );
  }
}
