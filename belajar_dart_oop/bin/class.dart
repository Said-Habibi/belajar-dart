// kode class
class Person {
  // membuat field
  String name = 'Guest'; // jika tidak nullable dia wajib di isi
  String? address; // jika nullable dia bisa tidak diisi
  final String country = 'indonesia'; // final tidak bisa di modifikasi

  // membuat method
  void sayHello(String paramName) {
    print('hello $paramName, my name is $name');
  }
}
  // membuat extension
extension SayGoodByeOnPerson on Person{
  void sayGoodBye(String paramName){
    print('good bye $paramName, from $name');
  }
}


class Computer{
  // membuat method expression body
  void startUp() => print('computer is starting');

  void shutDown() => print('computer is shutting down');

  void getOperatingSystem() => print('linux');
}

void main(){
  // kode objek
  var person1 = Person();
  print(person1);

  var person2 = new Person(); // tidak di rekomendasikan menggunakan kata kunci new
  print(person2);

  var person3 = Person();
  // mengakses dan memanipulasi field
  person3.name = 'said';
  person3.address = 'perkanbaru';
  // person3.country = 'singapore'; // tidak bisa karena dia final

  print(person3.name);
  print(person3.address);
  print(person3.country);

  // memanggil method
  person3.sayHello('habibi');

  // membuat objek Computer
  var pc1 = Computer();
  // mengakses method expression body
  pc1.startUp();
  pc1.shutDown();
  pc1.getOperatingSystem();

  // mengakses method baru dari extension
  person3.sayGoodBye('cemong');


}
