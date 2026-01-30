import 'package:test/test.dart';

Future<String> getName() async {
  return "Said";
}

void main() {
  test("future test", () async {
    final name = await getName();
    expect(name, "Said");
  });
}

