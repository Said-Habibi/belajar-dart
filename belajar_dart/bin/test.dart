void sayHello(String name, String Function(String name) filter){
  var filteredname = filter(name);
  print(filteredname);
}
void main(){
  sayHello('eko kurinawan khaneddy', (name){
    return name.toUpperCase();
  });

  sayHello('eko kurniawan khanedy', (String name) => name.toUpperCase());
}