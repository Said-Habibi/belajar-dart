void main(){
  // operator logika adalah operator untuk dua buah data bool
  // hasil dari operator logika adalah bool lagi

  /*
| Operator | Nama          | Keterangan                          | Arti dalam Bahasa Indonesia |
|----------|---------------|-------------------------------------|-----------------------------|
| &&       | Logical AND   | Benar jika kedua kondisi benar      | Dan                         |
| ||       | Logical OR    | Benar jika salah satu benar         | Atau                        |
| !        | Logical NOT   | Membalikkan nilai kebenaran         | Kebalikan / Bukan           |
*/
  /* operasi &&
| Nilai 1 | Operator | Nilai 2 | Hasil | Penjelasan                                |
|---------|----------|---------|-------|-------------------------------------------|
| true    | &&       | true    | true  | Kedua kondisi benar → Hasil benar         |
| true    | &&       | false   | false | Salah satu salah → Hasil salah            |
| false   | &&       | true    | false | Salah satu salah → Hasil salah            |
| false   | &&       | false   | false | Kedua kondisi salah → Hasil salah         |
*/
  // kode operasi &&

  var nilaiAkhir = 80;
  var nilaiAbsen = 80;

  var apakahNilaiAkhirBagus = nilaiAkhir >= 75;
  var apakahNilaiAbsenBagus = nilaiAbsen >= 75;

  print(apakahNilaiAkhirBagus);
  print(apakahNilaiAbsenBagus);

  var lulus = apakahNilaiAkhirBagus && apakahNilaiAbsenBagus;
  print(lulus);

  // operasi ||
  /*
| Nilai 1 | Operator | Nilai 2 | Hasil | Penjelasan                                   |
|---------|----------|---------|-------|----------------------------------------------|
| true    | ||       | true    | true  | Salah satu benar (bahkan keduanya) → benar   |
| true    | ||       | false   | true  | Ada yang benar → benar                       |
| false   | ||       | true    | true  | Ada yang benar → benar                       |
| false   | ||       | false   | false | Semua salah → hasil salah                    |
*/

  // kode operasi ||
  var Lulus = apakahNilaiAkhirBagus || apakahNilaiAbsenBagus;
  print(Lulus);

  // operasi !
  /*
| Operator | Nilai Awal | Hasil | Penjelasan                              |
|----------|------------|-------|-----------------------------------------|
| !        | true       | false | Membalikkan true menjadi false          |
| !        | false      | true  | Membalikkan false menjadi true          |
*/

  // kode operasi !
  print(!true);
  print(!false);

  
}