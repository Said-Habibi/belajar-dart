// Source - https://stackoverflow.com/a/22292761
// Posted by Günter Zöchbauer
// Retrieved 2026-01-15, License - CC BY-SA 3.0

import 'dart:collection';

base class MyLinkedListEntry<T> extends LinkedListEntry<MyLinkedListEntry<T>> {
  T value;
  MyLinkedListEntry(this.value);

  @override
  String toString() => '$value';
}

void main(List<String> args) {
  var lingkedlist = LinkedList<MyLinkedListEntry<String>>();

  var entry1 = MyLinkedListEntry('said');
  var entry2 = MyLinkedListEntry('habibi');

  lingkedlist.add(entry1);
  entry1.insertAfter(entry2);

  lingkedlist.forEach((e) => print(e));
} 
