import 'dart:collection';

void main(){
  // kode comparator 
  final treeset = SplayTreeSet<int>((first, second) => second.compareTo(first));
  treeset.addAll([1,2,3,4,5,6,7,8,9]);

  print(treeset);
  }