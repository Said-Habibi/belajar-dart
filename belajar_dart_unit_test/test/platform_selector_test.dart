import 'package:test/test.dart';

@TestOn("windows || mac-os ||linux")

int sum(int a, int b) => a + b;

void main(){
  group("group", () {
    test("sum first", (){
      expect(sum(1, 2), equals(3));
    });
  });
}