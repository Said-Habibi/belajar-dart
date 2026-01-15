import 'dart:collection';

void main(){
  final Map<String, String> persons = {
    'firstName' : 'said',
    'lastName' : 'habibi'
  };

  final finalPerson = UnmodifiableMapView(persons);

  finalPerson['middleNmae'] = 'muhammad'; // error
}