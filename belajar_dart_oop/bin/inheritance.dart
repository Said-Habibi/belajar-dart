class Manager{
  String? name;

  void sayHello(String name){
    print('hello $name, my name is ${this.name}');
  }
}

// class diatas di turunkan ke anak class
class VicePresident extends Manager{
  String? gender;
}

void main(){
  var manager = Manager();
  manager.name = 'budi';
  manager.sayHello('joko');

  // mengakses fitur class parent di chlid class
  var vp = VicePresident();
  vp.name = 'joko';
  vp.sayHello('budi');
  vp.gender = 'laki';
  print(vp.gender);


}