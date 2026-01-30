import 'dart:async';

void main() {
  Timer.periodic(Duration(seconds: 2), (timer) {
    print("timer ke ${timer.tick}");
    if (timer.tick >= 5) {
      timer.cancel();
    }
  });
  print("selesai");
}
