typedef Filter = String Function(String); // membuat alis untuk function dengan return value string dan parameter string

// membuat function
void sayHello(String name, Filter filter){
  print('hello${filter(name)}');
}

void main(){
  // menggunakan
  sayHello('said', (value) => value.toUpperCase());
}