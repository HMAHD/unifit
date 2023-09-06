import 'package:flutter/material.dart';

class TimerState extends ChangeNotifier {
  bool _isActive = false;
  int _seconds = 0;
  int _minutes = 0;
  int _hours = 0;

  bool get isActive => _isActive;
  int get seconds => _seconds;
  int get minutes => _minutes;
  int get hours => _hours;

  void startTimer() {
    _isActive = true;
    _seconds = 0;
    _minutes = 0;
    _hours = 0;
    notifyListeners();
  }

  void stopTimer() {
    _isActive = false;
    notifyListeners();
  }

  void resetTimer() {
    _seconds = 0;
    _minutes = 0;
    _hours = 0;
    notifyListeners();
  }

  void incrementSeconds() {
    if (_isActive) {
      _seconds++;
      if (_seconds == 60) {
        _seconds = 0;
        _minutes++;
        if (_minutes == 60) {
          _minutes = 0;
          _hours++;
        }
      }
      notifyListeners();
    }
  }
}
