Stream<String> names() {
  return Stream.fromIterable(["muhammad", "said", "habibi"]);
}

Future<String> fullName() async {
  String name = "";
  await for (String n in names()) {
    name += "$n ";
  }
  return name.trim();
}

void main() {
  fullName().then((value) => print(value));
  print("done");
}
