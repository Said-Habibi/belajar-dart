// kode  class String entry
import 'dart:collection';

base class StringEntry extends LinkedListEntry<StringEntry>{
  String value;

  StringEntry(this.value);
}

void main(){
  var linkedList = LinkedList<StringEntry>();

  linkedList.addAll(
    [StringEntry('said'), StringEntry('habibi')]);

  for (var value in linkedList){
    print(value.value);
  }
  print(linkedList);
}