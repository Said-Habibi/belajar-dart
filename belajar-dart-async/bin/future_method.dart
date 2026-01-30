Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    return "Hello $name";
  });
}

void main() {
  sayHello("Eko")
      .whenComplete(() => print("Selesai")) //whenComplete method
      .catchError((error) => print("Error: $error")) //catchError method
      .onError((error, stackTrace) => "fallback") //onError method
      .then((value) => print(value)); //then method

  print("Done");
}
