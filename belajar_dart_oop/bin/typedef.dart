import 'data/sum.dart';



void main(){
  var sum = Sum(10, 10);

  // menggunakan typedef
  var jumlah = Jumlah(10, 10);
  print(jumlah());

  var total = Total(10, 10);
  print(total());

}