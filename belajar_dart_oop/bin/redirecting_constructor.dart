class Person{
  String name = 'guest';
  String? address;
  final String country = 'Indonesia';

  // membuat constructor
  // hanya bisa membuat satu tidak bisa lebih
  Person(this.name,this.address);

  // membuat named constructor
  // redirecting constructor
  Person.withName(String name) : this(name, 'No Name');

  Person.withAddress(String address) : this('No name', address);

  Person.fromJakarta() : this.withAddress('jakarta');
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

  var person3 = Person.withName('said');
  print(person3.name);
  print(person3.address);

  var person4 = Person.fromJakarta();
  print(person4.name);
  print(person4.address);

}