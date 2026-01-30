Stream<int> number() {
  return Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
}

void main() {
  Future<int> total =
      number().fold(0, (previous, element) => previous + element);

  total.then((value) => print(value));

  print("selesai");
}
