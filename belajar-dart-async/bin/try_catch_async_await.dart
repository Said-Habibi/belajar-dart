import 'future_problem.dart';

Future<void> say() async {
  try {
    var first = await firstName();
    var last = await lastName();
    var hello = await sayHello("$first $last");
    print(hello);
  } catch (e) {
    print("error: $e");
  } finally {
    print("done say");
  }
}
