Future<String> firstName() async {
  return "said";
}

Future<String> lastName() async {
  return "habibi";
}

Future<String> sayHello(String name) async {
  return "Hello $name";
}

void main() {
  firstName().then((firstName) {
    return lastName().then((lastName) {
      var fullName = "$firstName $lastName";
      return sayHello(fullName);
    });
  }).then((response) => print(response));
  print("selesai");
}
