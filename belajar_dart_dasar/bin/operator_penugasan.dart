void main() {
  /*| Operator Aritmatika | Augmented Assignments |
    | :---                | :--- |
    | a = a + 10          | a += 10 |
    | a = a - 10          | a -= 10 |
    | a = a * 10          | a *= 10 |
    | a = a / 10          | a /= 10 |
    | a = a ~/ 10         | a ~/= 10 |
    | a = a % 10          | a %= 10 |
*/

  var a = 10;

  a = a + 10;
  print(a);
  a = 10;

  a += 10;
  print(a);

  // increment decrement
  /*
| Operator   | Keterangan                                                                 |
|------------|----------------------------------------------------------------------------|
| ++var      | var = var + 1 (ekspresi bernilai var + 1) — **pre-increment**              |
| var++      | var = var + 1 (ekspresi bernilai var) — **post-increment**                 |
| --var      | var = var - 1 (ekspresi bernilai var - 1) — **pre-decrement**              |
| var--      | var = var - 1 (ekspresi bernilai var) — **post-decrement**                 |
*/
  var i = 0;
  // i++; // i = i + 1;
  // print(i);

  var j = i++; // j = i; i = i + 1;
  var k = ++i; // k = (++i)
  print(k);
  

  print(i);
  print(j);
}