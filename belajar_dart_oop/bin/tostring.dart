import 'data/product.dart';
void main(){
  var produk = Product();
  produk.name = 'laptop';
  produk.id = '1';

  print(produk.toString());
  print(produk);
}