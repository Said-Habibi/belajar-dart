class Sample {

  @override
  String toString(){
    return 'sample';
  }
}

@Deprecated('jangan gunakan kode ini')
void doNotUseThis(){}


// membuat annotation
class Todo{
  final String todo;

  const Todo(this.todo);
}

class ApplicationLogic{

  @Todo('bakalan rilis tahun depan')
  void  featur1(){

  }
}