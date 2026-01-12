import 'data/mydata.dart';
void main(){
  // membuat generic parameter string
  var dataString = Mydata<String>('said');
  // atau bisa langsung
  var dataInt = Mydata(100);
  var dataBool = Mydata(true);

  print(dataString.data);
  print(dataInt.data);
  print(dataBool.data);
}