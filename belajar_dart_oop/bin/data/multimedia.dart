abstract class Multimedia {}

// membuat mixin
mixin Playable on Multimedia{ // membuat batasan untuk mengakses playable hanya untuk turunan multimedia
  String? name;

  void play(){
    print('play');
  }
}

mixin Stopable{
String? name;

void stop(){
  print('stop');
  }
}

// menggunakan mixin
// mixin itu copy paste dengan gaya
class Video extends Multimedia with Playable, Stopable{ // meng extends class multimedia agar bisa mengakses mixin yang menggunakan kata kunci on

}

class Audio extends Multimedia with Playable, Stopable{

}
