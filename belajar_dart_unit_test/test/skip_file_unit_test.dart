@Skip("skip ini karena error")
import 'package:test/test.dart';


void main(){
  group("group", (){
    test("test 1", (){
      expect(1, 2);
    });
    test("test 2", (){
      expect(1, 2);
    });
  });
}