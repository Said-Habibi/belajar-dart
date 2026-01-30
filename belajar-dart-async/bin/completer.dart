import 'dart:io';
import 'dart:async';
import 'contoh_callback_function.dart';

Future<String> runLongRunningTask() {
  Completer<String> completer = Completer<String>();

  longRunningTask((data) {
    completer.complete(data);
  }, (error){
    completer.completeError(error!);
  });
  return completer.future;
}

void main() {
  runLongRunningTask().then((value) {
    print(value);
  });
}
