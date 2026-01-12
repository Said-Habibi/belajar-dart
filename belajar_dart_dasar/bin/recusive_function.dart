/*
recursive function adalah function yang memanggil function dirinya sendiri
kadang dalam pekerjaan, kita sering menemui kasus dimana menggunakan recursive function lebih mudah dibandingkan tidak menggunakan recursive function
contoh kasus yang lebih mudah diselesaikan menggunakan recursive function adalah factorial
 */

  // kode faktorial
void main(){
  int faktorialLoop(int value){
    var result = 1;
    for (int i = 1; i <= value; i++){
      result *= i;
    }
    return result;
  }

  print(faktorialLoop(3));

  // kode faktorial dengan recursive
  int faktorialRecrusive(int n){
    if (n == 1){
      return 1;
    }
    else {
      return n * faktorialRecrusive(n - 1);
    }
  }

  print(faktorialRecrusive(3));

  void loop(int value){
    if (value == 0){
      print('selesai');
    }
    else{
      print('loop value-$value');
      loop(value - 1);
    }
  }
loop(100000);
}
/*
masalah dengan recrusive function
walaupun recursive function itu sangat menarik, namun kita perlu berhati-hati
jika recrusive terlalu dalam, maka ada kemungkinan stack overflow, yaitu error dimana stack pemanggilan function terlalu banyak
kenapa problem ini bisa terjadi? karena ketika kita memanggil function, dart akan menyimpannya dalam stack, jika function tersebut memanggil function lain, maka stack akan menumpuk terus, dan jika terlalu dalam, maka stack akan terlalu besar, dan bisa menyebabkan error stackoverflow
 */
