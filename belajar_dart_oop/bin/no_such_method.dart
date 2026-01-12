import 'data/repository.dart';

void main(){
  CategoryRepositry repository = Repository('produk');
  repository.id('1'); // id tidak ada di repository tetapi bisa
  // nanti dia akan otomatis memanggil no such method
  repository.name('laptop');
  repository.quantity(100);
}