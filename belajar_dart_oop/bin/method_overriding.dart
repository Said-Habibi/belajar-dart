class Manager{
  String? name;

  void sayHello(String name){
    print('hello $name, my name is Manager ${this.name}');
  }
}
class VicePresident extends Manager{

  // method overiding
  // harus sama dengan parent
  void sayHello(String name){
    print('hello $name, my name is VP ${this.name}');
  }
}

class CLevel extends Manager{
  // sama juga method overiding
  void sayHello(String name){
    print('hello $name, my name is CLevel ${this.name}');
  }
}

void main(){
  var manager = Manager();
  manager.name = 'budi';
  manager.sayHello('joko');

  var vp = VicePresident();
  vp.name = 'budi';
  vp.sayHello('joko');

  var clevel = CLevel();
  clevel.name = 'budi';
  clevel.sayHello('joko');

}