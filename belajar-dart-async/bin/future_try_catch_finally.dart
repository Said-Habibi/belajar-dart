Future<String> sayHello(String name) {
  return Future.error(Exception("ups"));
}

void main() {
  sayHello("Muhammad Said Habibi")
      .then((value) => print(value))
      .catchError((error) => print("Error: ${error.message}"))
      .whenComplete(() => print("Selesai"));
  print("Done");
}
