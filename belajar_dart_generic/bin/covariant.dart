import 'data/mydata.dart';

void main(){
  Mydata<Object> data = Mydata<String>("said");

  print(data.data);

  // data.data = 30; // error saat dijalankan

  // melakukan try-catch untuk membaca error
  try {
    data.data = 123; // error
    print('berhasil');
  } catch (e){
    print('error exception $e');
  }
  var stringData = Mydata<String>('Hello');
  var intData = Mydata<int>(42);
  var numData = Mydata<num>(3.14);

  check(stringData);
  check(intData);
  check(numData);
}
