import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_puzzlee/controller/puzzle_controller.dart';
import 'package:sliding_puzzlee/view/grid.dart';
import 'package:sliding_puzzlee/view/mode.dart';
import 'package:sliding_puzzlee/view/mytitle.dart';

class SlidingHome extends GetView<PuzzleController> {
  PuzzleController puzzleController = Get.put(PuzzleController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 2, child: MyTitle()),
          Expanded(flex: 8, child: Grid()),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    puzzleController.newGame();
                  },
                  child: Text('NEW GAME'))),
          Expanded(flex: 2, child: Mode()),
        ],
      ),
    );
  }
}
