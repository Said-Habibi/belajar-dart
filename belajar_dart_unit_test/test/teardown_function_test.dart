import 'package:test/test.dart';

void main(){
  var data = "eko";

  setUp((){
    data = "eko";
  });
  tearDown((){
    print(data);
  });

  group("Strign", (){
    test("String firts", (){
      data = '$data kurniawan';
      expect(data, "eko kurniawan");
    });
    test("String firts", (){
      data = '$data khaneddy';
      expect(data, "eko khaneddy");
    });
  });
}

