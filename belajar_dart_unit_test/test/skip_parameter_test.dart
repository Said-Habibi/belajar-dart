import 'package:test/test.dart';

void main(){
  group("group 1", (){
    test("test 1", (){
      expect(1, 2);
    },skip: "this is still error");
    test("test 2", (){
      expect(1, 2);
    });
    test("test 3", (){
      expect(1, 2);
    });
  });
}