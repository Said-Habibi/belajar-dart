import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main(){
  group("group", (){
    test("sum firts", (){
      expect(sum(1,2), equals(3));
    });
    test("sum second", (){
      expect(sum(10, 10), equals(20));
    });
  });
}