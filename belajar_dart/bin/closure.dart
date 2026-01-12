/*
closure adalah kemampuan sebuah function atau anonymous function berinteraksi dengan data-data disekitarnya dalam scope yang sama
harap gunakan fitur closur ini dengan bijak saat kita membuat aplikasi
 */

// hati hati ketika membuat closure nanti membingungkan
void main(){
  var counter = 0;
  void incremet(){
    print('Increment');
    counter++; // bisa diakses karena function di deklarasikan di dalam main
  }
  incremet();
  incremet();
  print(counter);
}


