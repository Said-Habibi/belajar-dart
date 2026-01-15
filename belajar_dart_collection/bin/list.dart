void main(){
  // kode growable list
  final list = <int>[];

  print(list);

  list.add(100);

  print(list);

  // fixed list
  final flist = List<int>.filled(10, 0);
  print(flist);
  flist.add(100); // error
}