import 'dart:collection';

void main(){
  final queue = Queue<String>();
  queue.addLast('habibi');
  queue.addLast('said');
  queue.addLast('muhammad');

  print(queue.removeFirst());
  print(queue.removeFirst());
  print(queue.removeFirst()); 
}