import 'future_problem.dart';

Future<void> say() async {
  var first = await firstName();
  var last = await lastName();
  var hello = await sayHello("$first $last");
  print(hello);
}

void main() {
  say();
  print("selesai");
}
