import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_puzzlee/controller/puzzle_controller.dart';
import 'package:sliding_puzzlee/view/component/flat_white_box.dart';

class ScoreText extends GetView<PuzzleController> {
  final PuzzleController puzzleController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Obx(() => Text(
            'MOVES: ${puzzleController.moves.value}',
            style: TextStyle(decoration: TextDecoration.none, fontSize: 22),
          )),
      TextButton(
          onPressed: () {
            puzzleController.newGame();
          },
          child: FlatWhiteBoxText('NEW GAME')),
      Obx(() => Text(
            'TIME: ${puzzleController.spentTime.value}',
            style: TextStyle(decoration: TextDecoration.none, fontSize: 22),
          )),
    ]);
  }
}
