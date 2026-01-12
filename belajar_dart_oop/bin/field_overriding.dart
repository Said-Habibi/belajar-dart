class Person{
  String name = 'Person';

  void sayHello(String name){
    print('hello $name, my name is ${this.name}');
  }
}

class OtherPerson extends Person{
  String name = 'OtherPerson'; // membuat field overriding

  void sayHello(String name){
    print('hello $name, my name is ${this.name}');
  }
}

void main(){
  var person = Person();
  print(person.name);
  person.sayHello('joko');

  // menggunakan field overriding
  var otherperson = OtherPerson();
  print(otherperson.name);
  otherperson.sayHello('joko');
}