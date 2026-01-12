void main(){
/*
variable atau function hanya bisa diakses di dalam area dimana mereke dibuat
hal ini disebut scope
contoh, jika sebuah variable dibuat di function, maka hanya bisa diakses di method itu tersebut, atau jika dibuat didalam block, maka hanya bisa diakses didalam block
 */

var name = 'said'; // ini variable yang berada di dalam scope function main

void sayHello(String name){
  var hello = 'hello $name'; // ini variable yang ada di dalam scope function sayHello tidak bisa diakses dari scope lain
  print(hello);
}

sayHello(name); // mengakses variable dari scope main ke dalam function sayHello(), kenapa bisa diakses? karena functionnya dideklarasi didalam scope main
  // print(hello); // ini tidak bisa mengakses variable dari scope function sayHello

}


void contoh(){
  // sayHello(name); // error
}

