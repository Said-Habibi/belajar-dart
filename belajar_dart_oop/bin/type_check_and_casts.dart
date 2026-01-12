// kode inheritance
class Employee {
  String? name;

  Employee(this.name);
}

class Manager extends Employee{
  Manager(String name) : super(name);
}

class VicePresident extends Manager{
  VicePresident(String name) : super(name);
}



// method dengan pengecekan (type check & casts)
void sayHello(Employee employee){
  if (employee is VicePresident){
    VicePresident vicePresident = employee as VicePresident; // sebenarnya dart sudah pintar kita tidak perlu menggunakan operator as untuk konversi, tapi jika mau cara manual ini masih bisa digunakan
    print('hello VP ${vicePresident.name}');
  }else if (employee is Manager){
    Manager manager = employee as Manager;
    print('helo Manager ${manager.name}');
  }else {
    print('hello ${employee.name}');
  }
}

void main(){
  // kode polymorphism
  Employee employee = Employee('budi');
  print(employee);

  employee = Manager('budi');
  print(employee);

  employee = VicePresident('budi');
  print(employee);

  // menggunakan method polymorphism
  sayHello(Employee('budi'));
  sayHello(Manager('budi'));
  sayHello(VicePresident('budi'));
}