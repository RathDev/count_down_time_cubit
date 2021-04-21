class CountDownTimeState {
  final String countDown;

  CountDownTimeState(this.countDown);
}

class OnUpdateCountDownState extends CountDownTimeState {
  OnUpdateCountDownState(String countDown) : super(countDown);
}

class OnCountDownDoneState extends CountDownTimeState {
  OnCountDownDoneState(String countDown) : super(countDown);
}
