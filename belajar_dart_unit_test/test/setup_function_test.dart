import 'package:test/test.dart';

void main(){
  var data = "eko";
  setUp((){
    data = "eko";
  });

  // dalam group
  group("String", (){
    test("String test", (){
      data = "$data kurniawan";
      expect(data, "eko kurniawan");
    });
    test("String test", (){
      data = "$data khaneddy";
      expect(data, "eko khaneddy");
    });
  });
}