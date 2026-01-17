import 'package:test/test.dart';

String sayHello(String name){
  return 'Hello $name';
}

void main(){
  test("Test say Hello with matcher", () {
    expect(sayHello('said'), endsWith('said'));
    expect(sayHello('said'), startsWith('Hello'));
    expect(sayHello('said'), equalsIgnoringCase('Hello said'));
  });
}