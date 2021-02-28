import 'dart:async';

import 'package:get/get.dart';

class TimerState extends GetxController {
  Stopwatch _tsw = Stopwatch();
  RxString startingMinutes = "25".obs;
  Rx<String> startingSeconds = Rx<String>("00"); //different way
  RxString _displayString = "25:00".obs;
  RxBool isRunning = false.obs;

  String get timeElapsed => this._displayString.value;

  void start() {
    if (!_tsw.isRunning) {
      _tsw.start();
    }
    periodicUpdateDisplayString();
    isRunning.value = true;
  }

  void pause() {
    if (_tsw.isRunning) {
      _tsw.stop();
    }
  }

  void unpause() {
    if (!_tsw.isRunning) {
      _tsw.start();
    }
  }

  void reset() {
    _tsw.reset();
  }

  void periodicUpdateDisplayString() {
    Timer.periodic(Duration(milliseconds: 250), (Timer t) {
      _displayString.value = updateDisplayString();

      print(_displayString.value);
    });
  }

  String updateDisplayString() {
    String currentTimeString = "";
    int startingMin = int.parse(startingMinutes.value);
    int startingSec = int.parse(startingSeconds.value);
    String build_seconds() {
      int value = 60 - startingSec - _tsw.elapsed.inSeconds % 60;
      return value >= 10 ? value.toString() : "0" + value.toString();
    }

    if (_tsw.elapsed.inSeconds % 60 > 0) {
      currentTimeString +=
          "${startingMin - _tsw.elapsed.inMinutes - 1}" + ":${build_seconds()}";
    } else {
      currentTimeString += "${startingMin - _tsw.elapsed.inMinutes}" +
          ":" +
          startingSeconds.value;
    }

    return currentTimeString;
  }
}
