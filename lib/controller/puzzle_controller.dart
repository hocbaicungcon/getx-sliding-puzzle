import 'dart:async';

import 'package:get/get.dart';

class PuzzleController extends GetxController {
  RxString _mode = 'tifa'.obs;
  RxInt moves = 0.obs;
  RxInt _level = 4.obs;
  bool _started = false;
  RxInt _spentTime = 0.obs;
  Timer? _timer;
  RxList<String> puzzle = <String>[].obs;

  String get mode => _mode.value;
  int get level => _level.value;
  RxInt get spentTime => _spentTime;
  bool get started => _started;

  set started(bool s) => _started = s;

  set mode(String m) => _mode.value = m;
  void movesCount() {
    ++moves;
    print(moves);
  }

  onInit() {
    newGame();
    super.onInit();
  }

  gameStarted() {
    if (this._started) {
      this._timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
        _spentTime += 1;
        print(_spentTime);
      });
    }
  }

  gameStoped() {
    this._started = false;
    _timer?.cancel();
  }

  newGame() {
    _started = false;
    _timer?.cancel();
    _spentTime.value = 0;
    moves.value = 0;
    print(moves);
    puzzle.value = [];
    for (var i = 1; i < this.level * this.level + 1; i++) {
      (i < 10) ? puzzle.add('0$i') : puzzle.add('$i');
    }
    puzzle.shuffle();
    print(puzzle);
  }
}
