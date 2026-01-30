import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "said");
}

void main() {
  test("future matcher test", () {
    final name = getName();
    expect(name, completion(equals("said")));
  });
}
