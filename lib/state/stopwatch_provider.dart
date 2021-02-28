import 'dart:async';

import 'package:flutter/material.dart';

class StopwatchProvider with ChangeNotifier {
  Stopwatch _sw = new Stopwatch();
  String _returnString = "00:00:00";

  String get time => _returnString;

  bool get isRunning => _sw.isRunning;

  String get timeElapsed => this._returnString;

  void start() {
    _sw.start();
    update();
  }

  void pause() {
    _sw.stop();
  }

  void unpause() {
    if (_sw.isRunning) {
      _sw.stop();
    }
  }

  void reset() {
    _sw.reset();
  }

  void update() {
    Timer.periodic(Duration(milliseconds: 250), (Timer t) {
      _returnString = _buildreturnString();
      notifyListeners();
      print(_returnString);
    });
  }

  String _buildreturnString() {
    /// builds an appropriate return string for a stopwatch
    /// in the format HH:MM:SS, i.e: 01:23:45
    int hours_elapsed = _sw.elapsed.inHours;
    int minutes_elapsed = _sw.elapsed.inMinutes % 60;
    int seconds_elapsed = _sw.elapsed.inSeconds % 60;
    String hours_string =
        hours_elapsed < 10 ? "0${hours_elapsed}" : hours_elapsed.toString();
    String minutes_string = minutes_elapsed < 10
        ? "0" + minutes_elapsed.toString()
        : minutes_elapsed.toString();
    String seconds_string = seconds_elapsed < 10
        ? "0" + seconds_elapsed.toString()
        : seconds_elapsed.toString();
    return hours_string + ":" + minutes_string + ":" + seconds_string;
  }
}
