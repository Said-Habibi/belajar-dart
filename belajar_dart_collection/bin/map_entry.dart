void main(){
  final Map<String, String> persons = {
    'firstName' : 'said',
    'lastName' : 'habibi'
  };

  for (var entry in persons.entries){
    print('${entry.key} : ${entry.value}');
  }
}