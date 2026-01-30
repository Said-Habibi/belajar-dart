import 'dart:async';

import 'stream.dart';

void main() {
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((data) {
    print(data);
  });
  print("selesai");
}
