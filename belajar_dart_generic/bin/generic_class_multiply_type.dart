import 'data/pair.dart';
void main(){
  // menggunakan generic multiply
  var pair1 = Pair('said', 20);
  // secara explicit
  var pair2 = Pair<String, int>('said', 20);
}