// parameter main function
void main(List<String> args){
  /*
  function adalah block kode program yang akan berjalan saat kita panggil
  sebelumnya kita sudah menggunakan method print() untuk menampilkan tulisan di console
  untuk membuat function, kita bisa menggunakan kata kunci void, lalu diikuti dengan nama function, kurung() dan diakhiri dengan blok
  kita bisa memanggil function dengan menggunakan nama function lalu diikuti dengan kurung()
  di bahasa pemogramman lain, function juga disebut dengan method
   */

  print(args); // list kosong dari parameter main
  // gunakan perintah
  // dart namafile arg1 arg2 arg3 dst


  // ini panggil function
  sayHello();

  sambut('said', 'habibi');

  sayHelloOptional('said');
  sayHelloOptional('said','habibi');

  sayHelloDefault('said');
  sayHelloDefault('said', 'habibi');

  sayHelloNamedParameter(middlename: 'said',firtsname: 'muhammad');

  sayHelloNamedDefault(lastname: 'said');

  sayHelloNamedRequired(firtsname: 'siai');

  print(sum([1,2,3,4,5,6,7,8]));
  var total = sum([10,20,30,40]);
  print(total);

  print(sumShortExpression(1, 2));



  // kode inner function
  void sayHelloInner(){
    print('hello semuanya');
  }

  sayHelloInner();

  sayHelloFunctionAsParameter('gila', badWords);



}

// =================================== function =======================================================
// ini function

void sayHello(){
  // taruh blok function di sini
  print('hello world');
}

// function parameter
/*
kita bisa mengirimkan informasi ke function yang ingin kita panggil
untuk melakukan hal tersebut, kita perlu menambahkan parameter atau argument di function yang sudah kita buat
cara membuat parameter sama seperti cara membuat variable
parameter ditempatkan di dalam kurung () di deklarasi function
parameter bisa lebih dari satu, jika lebih dari satu, harus dipisah dengan menggunakan tanda koma
ketika memanggil function, kita bisa sebut nama function nya, lalu gunakan kurung (), jika terdapat parameter dalam kurung (), silahkan masukan parameter sesuai dengan jumlah parameternya
 */

void sambut(String f, String l){
  print('hallo $f $l');
}

/*
Optional paramter
secara default, parameter wajib dikirim ketika kita memanggil function
namun jika kita ingin membuat parameter yang optional, artinya tidak wajib dikirim, kita bisa warp dalam kurum []
dan parameter optional haruslah nullable
 */

// kode optional parameter

void sayHelloOptional(String firtsName, [String? lastname, String? middlename]){
  print('hello $firtsName $middlename $lastname');
}

// default value
/*
jika optional parameter tidak ingin nullable, maka kita wajib menambahkan default value
caranya, setelah nama parameter, kita tambahkan = default value
 */

// kode default value
void sayHelloDefault(String firtsname, [String middlename = '', String lastname = '']){
  print('hello $firtsname $middlename $lastname');
}

// named parameter
/*
secara default, posisi parameter ketika kita memanggil function harus seusai dengan posisi parameter di function tersebut
dart memiliki fitur dengan named parameter, dimana saat memamnggil parameter kita bisa menyebutkan nama parameternya, sehingga posisinya tidak perlu harus seusai dengan posisi parameternya
namun ketika membuat function nya, kita perlu melakukan perubahan ketika membuat parameter nya, yaitu dengan menggunakan kurung kurawal {}
secara default, named parameter adallah nullable, sehingga kita perlu menambah karakter ?
 */

// kode named parameter
void sayHelloNamedParameter({String? firtsname,String? middlename, String? laastname}){
  print('hello $firtsname $middlename $laastname');
}

// default parameter value
/*
karena secara default, named parameter adalah nullable, sehingga secara otomatis ketika memanggil function, kita tidak wajib mengirim parameter tersebut
agar nilai parameter tidak null, kita juga bisa memberikan default value dengan menambah = nilai default nya
 */

void sayHelloNamedDefault({String firtsname = '', String middlename = '', String lastname = ''}){
  print('hello $firtsname $middlename $lastname');
}

// required parameter
/*
pada named parameter, kita juga bisa memaksa sebuah parameter menjadi madatory, sehingga kita memanggil function tersebut, parameter wajib ditambahkan
caranya kita bisa tambahkan kata kunci required diawal parameter
 */

void sayHelloNamedRequired({required String firtsname, String middlename ='', String lastname = ''}){
  print('hello $firtsname $middlename $lastname');
}

// function return value
/*
secara default, function itu menghasilkan value null, namun jika kita ingin, kita bisa membuat sebuah function yang mengembalikan nilai
agar function bisa menghasilkan value, kita harus mengubah kata kunci void dengan tipe data yang dihasilkan
dan di dalam block function, untuk menghasilkan nilai tersebut, kita harus menggunakan kata kunci return, lalu diikuti dengan data yang sesuai tipe data yang sudah kita deklarasikan di function
kita hanya bisa menghasilkan 1 data di sebuah function, tidak lebih dari satu
 */

int sum(List<int> numbers){
  var total = 0;
  for (var n in numbers){
    total += n;
  }
  return total;
}

// function short expressoin
/*
dart mendukung function short expression
dimana jika terdapat sebuah function yang hanya satu baris, kita bisa menyingkatnya secara sederhana
untuk membuat function short expression, kita tidak butuh {} dan juga tidak butuh kata kunci return
 */

int sumShortExpression(int firts, int last) => firts + last;

// inner function
/*
di dart, kita bisa membuat inner function di dalam outer function
namun perlu diperhatikan inner function yang di buat di dalam outer function, hanya bisa di akses dari outer function saja, tidak bisa diakses dari luar outer function
untuk lebih detail tentang ini akan kita bahas di materi tentang scope
 */
// kode inner function ada di line 41



// main function
/*
kita sudah tahu dari awal, bahkan main function adalah function yang digunakan sebagai gerbang masuk apliasi dart
function main adalah function yang akan dijalankan pertama kali oleh dart
 */

// main function parameter
/*
main function memiliki sebuah parameter optional, yaitu adalah arguments, dimana data parameter tersebut berupa List<String>
data List<String> tersebut diambil otomatis ketika kita menjalankan file dart menggunakan perintah:
  dart namaFile.dart arg1 arg2 arg3
  dart namaFile "argument1" "argument2" "argument3"
 */

// higher order function
/*
higher-orger function adalah function yang menggunakan function sebagai variable, parameter atau return value
penggunaan higher-order function kadang berguna ketika kita ingin membuat function yang general dan ingin mendapatkan input yang flexible berupa function, yang bisa dideklarasikan oleh pengguna ketika memanggil function tersebut
 */

// kode function as parameter
void sayHelloFunctionAsParameter(String name, String Function(String) filter){
  var filteredname = filter(name);
  print('hi $filteredname');
}

String badWords(String name){
  if (name == 'gila'){
    return '****';
  }
  else{
    return name;
  }
}


/*
kebanyakan function biasanya memiliki nama, seperti sayhello(), print() dan lain-lain
kita juga bisa membuat function yang tidak memiliki nama, atau disebut anonymous function, Di bahasa pemogramman lain ada yang memanggilnya lambda
pembuatan anonymous function mirip seperti function biasanya, namun yang membedakannya adalah tidak ada nama function nya
biasanya anonymous function sering digunakan ketika memanggil function yang membutuhkan parameter berupa function
 */

// anonymoud function

// kode anonymous function as variable
var upperFunction = (String name){ // ini bukan function melainkan variable
  return name.toUpperCase();
};

// short expression di anonymous function

var lowerFunction = (String name) => name.toLowerCase();

// kode anonymous function as parameter
void sayHelloAnonymousAsParameter(String name, String Function(String) filter){
  var filteredname = filter(name);
  print(filteredname);
}

// contoh nya ada di test.dart








