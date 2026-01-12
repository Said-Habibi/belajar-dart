class Costumer{
  String firtsname = '';
  String lastname = '';
  String fullname = '';

  Costumer(this.fullname)
  : firtsname = fullname.split(" ")[0],
  lastname = fullname.split(" ")[1] {
    print('create new Custumer');
  }
}
void main(){
  var costumer = Costumer('said habibi');
  print(costumer.firtsname);
  print(costumer.lastname);
}