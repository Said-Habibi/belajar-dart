import 'data/mydata.dart';

void printData(Mydata data){
  print(data.data);
}

void main(){
  printData(Mydata(100));
  printData(Mydata('said'));
  printData(Mydata(true));
}