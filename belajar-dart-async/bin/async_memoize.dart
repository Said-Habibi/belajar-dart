import 'package:async/async.dart';

Future<String> getData() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "get data";
  });
}

void main() async {
  final asyncMemoizer = AsyncMemoizer();

  final result1 = await asyncMemoizer.runOnce(() => getData());
  print(result1);

  final result2 = await asyncMemoizer.runOnce(() => getData());
  print(result2);
}
