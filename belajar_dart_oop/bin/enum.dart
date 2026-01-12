import 'data/customer.dart';

void main(){
  var customer = Customer('said', CustomerLevel.vip);
  print(customer.level);
}