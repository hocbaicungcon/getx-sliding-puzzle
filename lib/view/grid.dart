import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_puzzlee/controller/puzzle_controller.dart';
import 'package:sliding_puzzlee/view/win.dart';

class Grid extends StatelessWidget {
  final PuzzleController puzzleController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemCount: 16,
          itemBuilder: (context, index) {
            return Obx(
              () => GestureDetector(
                  onTap: () {
                    if ((index - 1 >= 0 &&
                            puzzleController.puzzle[index - 1] == '16' &&
                            index % 4 != 0) ||
                        (index + 1 < 16 &&
                            puzzleController.puzzle[index + 1] == '16' &&
                            (index + 1) % 4 != 0) ||
                        (index - 4 >= 0 &&
                            puzzleController.puzzle[index - 4] == '16') ||
                        (index + 4 < 16 &&
                            puzzleController.puzzle[index + 4] == '16')) {
                      puzzleController
                              .puzzle[puzzleController.puzzle.indexOf('16')] =
                          puzzleController.puzzle[index];
                      puzzleController.puzzle[index] = '16';
                    }
                    bool equal = true;
                    for (var i = 0; i < 16; i++) {
                      if (int.parse(puzzleController.puzzle[i]) - i != 1) {
                        equal = false;
                        break;
                      }
                    }
                    if (equal) {
                      print('YOU WON');
                      Get.to(Win());
                    }
                  },
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/${puzzleController.mode}_${puzzleController.puzzle[index]}.jpg'),
                    // image: (index < 9)
                    //     ? AssetImage(
                    //         'assets/${puzzleController.mode}_0${index + 1}.jpg')
                    //     : AssetImage(
                    //         'assets/${puzzleController.mode}_${index + 1}.jpg'),
                  )
                  // (index < 15)

                  //     ? Image(
                  //         fit: BoxFit.fill,
                  //         image: AssetImage(
                  //             'assets/${puzzleController.mode}_${puzzleController.puzzle[index]}.jpg'),
                  //         // image: (index < 9)
                  //         //     ? AssetImage(
                  //         //         'assets/${puzzleController.mode}_0${index + 1}.jpg')
                  //         //     : AssetImage(
                  //         //         'assets/${puzzleController.mode}_${index + 1}.jpg'),
                  //       )
                  //     : Image(
                  //         fit: BoxFit.fill,
                  //         image: AssetImage('assets/empty.jpg')),
                  ),
            );
          }),
    );
  }
}
