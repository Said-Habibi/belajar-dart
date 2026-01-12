class Person{
  String name = 'guest';
  String? address;
  final String country = 'Indonesia';

  // membuat constructor
  // hanya bisa membuat satu tidak bisa lebih
  Person(String paramName, String paramAddress){
    name = paramName;
    address = paramAddress;
  }
}

void main(){
  // menggunakan konstructor
  var person = Person('said', 'pekanbaru');
  print(person.name);
  print(person.address);
}