// kode import dan import as
import 'package:belajar_dart_packages_library/hello.dart' as belajar;

void main(){
  // menggunakan import as
  print(belajar.sayHello('said'));

  var customer = belajar.Customer();
  var category = belajar.Category();
  var product = belajar.Product();

}