import 'data/mydata.dart';

void main(){
  check(Mydata("said"));
  check(Mydata(100));
  check(Mydata(true));

  var stringData = Mydata<String>('Hello');
  var intData = Mydata<int>(42);
  var numData = Mydata<num>(3.14);

  check(stringData);
  check(intData);
  check(numData);
}