class User{
  String? user;
  String? name;
  String? email;
}

User? createUser(){ // function dengan return null
  return null;
}
void main(){
  var user = User();
  // tanpa cascade notation
  user.name = 'said';
  user.email = 'mmm@.cmom';

  // dengan cascade notation
  var user2 = User()
  ..user = 'said'
  ..name = 'habibi'
  ..email = 'olok.com';

  // cascade dengan nullable
  var user3 = createUser()
  ?..user = 'said'
  ..name = 'habibi'
  ..email = 'contoh.com';


}

