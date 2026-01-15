import 'dart:collection';

void main(){
  final set = <int>{1,2,3,4,5,6,7,8,9,10};
  final unmodifiableSet = UnmodifiableSetView<int>(set);


  unmodifiableSet.add(100); // error
}

