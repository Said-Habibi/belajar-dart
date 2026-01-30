import 'dart:async';

import 'stream.dart';

void main() {
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((data) {
    print(data);
  });
  listen.onData((data) {
    print(data);
  });
  listen.onError((error) {
    print(error);
  });
  listen.onDone(() {
    print("done");
  });
  print("selesai");
}
