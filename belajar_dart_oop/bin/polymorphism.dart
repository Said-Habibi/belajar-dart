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

// method polymorphism
void sayHello(Employee employee){
  print('hello ${employee.name}');
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