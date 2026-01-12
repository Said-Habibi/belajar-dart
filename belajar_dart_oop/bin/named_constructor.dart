class Person{
  String name = 'guest';
  String? address;
  final String country = 'Indonesia';

  // membuat constructor
  // hanya bisa membuat satu tidak bisa lebih
  Person(this.name,this.address);

  // membuat named constructor
  Person.withName(this.name);

  Person.withAddress(this.address);
}

void main(){
  // menggunakan konstructor
  var person = Person('said', 'pekanbaru');
  print(person.name);
  print(person.address);

  // menggunakan named constructor
  
  var person1 = Person.withName('said');
  var person2 = Person.withAddress('perkanbaru');
  print(person1.name);
}