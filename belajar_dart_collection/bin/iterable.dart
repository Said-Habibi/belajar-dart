
void main(){
  var names = ["said", "eko", "habibi"];

  // kode iterator manual
  var iterator = names.iterator;

  while(iterator.moveNext()){
    print(iterator.current);
  }

  // kode iterator
  // for (var n in names){
  //   print(n);
  // }
}