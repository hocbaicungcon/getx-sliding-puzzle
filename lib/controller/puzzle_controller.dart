import 'package:get/get.dart';

class PuzzleController extends GetxController {
  RxString _mode = 'tifa'.obs;
  RxInt _level = 4.obs;
  RxList<String> puzzle = <String>[].obs;

  String get mode => _mode.value;
  int get level => _level.value;

  set mode(String m) => _mode.value = m;

  onInit() {
    newGame();
    super.onInit();
    // puzzle = [
    //   '01',
    //   '02',
    //   '03',
    //   '04',
    //   '05',
    //   '06',
    //   '07',
    //   '08',
    //   '09',
    //   '10',
    //   '11',
    //   '12',
    //   '13',
    //   '14',
    //   '16',
    //   '15'
    // ].obs;
  }

  newGame() {
    puzzle.value = [];
    for (var i = 1; i < this.level * this.level + 1; i++) {
      (i < 10) ? puzzle.add('0$i') : puzzle.add('$i');
    }
    puzzle.shuffle();
    print(puzzle);
  }
}
