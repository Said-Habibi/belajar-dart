class Person{
  String name = 'guest';
  String? address;
  final String country = 'Indonesia';

  // kode variable shadowing
  Person(String name, String address){ // ini akan menutup variable yang ada di atas dengan nama yang sama
    // gunakan this key word agar dapat mengakses variable/field
    this.name = name;
    this.address = address;
  }
}

void main(){
  // menggunakan konstructor
  var person = Person('said', 'pekanbaru');
  print(person.name);
  print(person.address);
}