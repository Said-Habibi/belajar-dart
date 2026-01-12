import 'data/category.dart';

void main(){
  var kategori1 = Category('1', 'laptop');
  var kategori2 = Category('1', 'laptop');

  print(kategori1 == kategori1);
  print(kategori2 == kategori1);
  // walaupun kita sudah meng-override operator equals ini sebenarnya masih salah
  print(kategori1.hashCode);
  print(kategori2.hashCode);
  // berbeda hashCode nya

  // kita harus meng-overide getter hashcode nya
  // kalo equalsnya true hashcode nya juga harus sama
}