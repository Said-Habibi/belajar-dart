Stream<int> numbers() {
  return Stream.periodic(Duration(seconds: 1), (i) => i);
}

void main() {
  Stream<int> numberStream = numbers();
  Stream<int> broadcastNumber = numberStream.asBroadcastStream();

  broadcastNumber.listen((event) {
    print("Listener 1: $event");
  });
  broadcastNumber.listen((event) {
    print("Listener 2: $event");
  });
  print("selesai");
}