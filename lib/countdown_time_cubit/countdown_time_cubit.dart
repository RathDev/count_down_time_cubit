import 'dart:async';

import 'package:counter_app_using_cubit1/countdown_time_cubit/countdown_time_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountDownTimeCubit extends Cubit<CountDownTimeState> {
  Timer _timer;
  int _totalSecond;

  CountDownTimeCubit(this._totalSecond)
      : super(CountDownTimeState(getCountText(_totalSecond))) {
    _startCountDown();
  }

  void _startCountDown() {
    print('+++++++ Start CountDown');
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _totalSecond -= 1;
      emit(OnUpdateCountDownState(getCountText(_totalSecond)));
      if (_totalSecond < 1) {
        timer.cancel();
        emit(OnCountDownDoneState(getCountText(_totalSecond)));
      }
    });
  }


  static String getCountText(int second) {
    int minuitLeft = second ~/ 60;
    int secondLeft = second % 60;

    bool isMinuitIsOneChar = minuitLeft.toString().length == 1;
    bool isSecondIsOneChar = secondLeft.toString().length == 1;

    String minuitStr =
    isMinuitIsOneChar ? "0$minuitLeft" : minuitLeft.toString();
    String secondStr =
    isSecondIsOneChar ? "0$secondLeft" : secondLeft.toString();

    return "$minuitStr:$secondStr";
  }
}
