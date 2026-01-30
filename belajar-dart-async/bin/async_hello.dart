Future<String> sayHello(String name) async {
  return "Hello $name";
}

void main() {
  sayHello("world").then((String message) {
    print(message);
  });
  print("selesai");
}
