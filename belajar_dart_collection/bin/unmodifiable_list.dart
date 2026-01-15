
import 'dart:collection';

void main(){
  final list = [1,2,3];
  final unmodifiablelist = UnmodifiableListView(list);

  unmodifiablelist.add(100); // error

}