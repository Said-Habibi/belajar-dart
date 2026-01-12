void main() {
  /*
| Operator | Nilai Awal | Hasil      | Penjelasan                                          |
|----------|------------|------------|-----------------------------------------------------|
| as       | object     | Tipe baru  | Typecast, melakukan konversi tipe data secara paksa |
| is       | object     | true/false | true, jika object sesuai tipe data                  |
| is!      | object     | true/false | true, jika object tidak sesuai tipe data            |
   */
  dynamic variable = 100;

  var variableInt = variable as int;

  var isInt = variableInt is int;
  var isNotBoolean = variableInt is! bool;

  print(isInt);
  print(isNotBoolean);

}
