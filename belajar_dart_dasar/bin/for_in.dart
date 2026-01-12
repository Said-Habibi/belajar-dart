void main(){
  /*
  kadang kita biasa mengakses data list menggunakan perulangan
  mengakses data list menggunakan perulangan sangat bertele-tele, kita harus membuat counter, lalu mengakses list menggunakan counter yang kita buat
  namun untungnya, terdapat perulangan for in, yang bisa di gunakan untuk mengakses seluruh data di list secara otomatis
   */

  // kode tanpa for in
  var array1 = <int>[1,2,3,4,5,6,7,8,9];

  for (var i = 0; i < array1.length; i++){
    print(array1[i]);
  }

  // dengan for in
  var nameSet = <String>{'joko','gibran','bahlil','wowo'};

  for (var presiden in nameSet){
    print(presiden);
  }

}