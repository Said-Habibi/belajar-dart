Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return "$i : genap";
    } else {
      return "$i : ganjil";
    }
  });
}

void main() {
  stream().listen((event) {
    print(event);
  });
}
