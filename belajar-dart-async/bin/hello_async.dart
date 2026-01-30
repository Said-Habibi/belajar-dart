Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Hello Async");
  });
}

void main() {
  hello();
  print("done");
}
