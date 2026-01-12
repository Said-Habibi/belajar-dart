class Manager{
  String? name;
  Manager(this.name);
}

class VicePresident extends Manager{
  // membuat super constructor
  VicePresident(String name) : super(name){ // kalo redirect ke super boleh memiliki body
    print('Create new vicepresident');
  }
}

void main(){
  var manager = Manager('budi');
  print(manager.name);

  var vp = VicePresident('budi');
  print(vp.name);
}