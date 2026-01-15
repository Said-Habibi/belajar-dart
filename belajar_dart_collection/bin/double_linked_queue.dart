import 'dart:collection';

void main(){
  final stack = DoubleLinkedQueue();

  stack.addLast('habibi');
  stack.addLast('said');
  stack.addLast('muhammad');

  print(stack.removeLast());
  print(stack.removeLast());
  print(stack.removeLast());
}