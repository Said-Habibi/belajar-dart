import 'dart:async';

void longRunningTask(
    void Function(String) onDone, void Function(Object?) onError) {
  Future.delayed(Duration(seconds: 2))
      .onError((error, stackTrace) => onError(error))
      .then((value) => onDone("task completed"));
}

void longRunningStream(void Function(String) onNext,
    void Function(Error?) onError, void Function() onDone) {
  var listen = Stream.periodic(Duration(seconds: 1)).take(10).listen((event) {
    onNext("said");
  });
  listen.onError((error) => onError(error));
  listen.onDone(() => onDone);
}


