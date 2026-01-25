import 'package:test/test.dart';


int sum(int a, int b) => a + b;

void main(){
  group("group", () {
    test("sum first", (){
      expect(sum(1, 2), equals(3));
    }, onPlatform: {
      "mac-os" : Skip("Tidak dapat di test di mac-os"
      )});
    test("sum second", (){
      expect(sum(2, 2), equals(4));
    }, testOn: "windows");
  });
}