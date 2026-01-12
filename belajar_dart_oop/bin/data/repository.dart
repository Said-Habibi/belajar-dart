import 'dart:mirrors';

// membuat abstract class
abstract class CategoryRepositry{
  id(String id);
  name(String name);
  quantity(int quantity);
// tidak perlu mengimplementasikakn semuanya karena sudah ada  nosuchmethod, coba di komentar
}
class Repository extends CategoryRepositry{

  final String _name;

  Repository(this._name);

  // membuat noSuchMethod
  dynamic noSuchMethod(Invocation invocation){
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $_name where $column = '$value' ";
    print(sql);

  }

}