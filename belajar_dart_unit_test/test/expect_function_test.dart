import 'package:test/test.dart';

String sayHello(String name){
  return 'Hello $name';
}

void main(){
  test("Test say Hello", () {
    var response = sayHello('said');
    expect(response, "Hello said");
  });
}