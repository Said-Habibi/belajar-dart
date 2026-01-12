class Person{
  String name = 'guest';
  String? address;
  final String country = 'Indonesia';

  // membuat constructor

  // membuat constructor dengan formal parameter
  Person(this.name, this.address);
}

void main(){
  // menggunakan konstructor
  var person = Person('said', 'pekanbaru');
  print(person.name);
  print(person.address);
}