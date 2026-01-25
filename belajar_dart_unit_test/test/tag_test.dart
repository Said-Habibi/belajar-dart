@Tags(["said", "habibi"])
import 'package:test/test.dart';



void main(){
  group("group", (){
    test("pertama", (){
      print("hallo test pertama");
    }, tags: ["pertama"]);
    test("kedua", (){
      print("hallo test kedua");
    },tags: ["kedua"]);
  });
}