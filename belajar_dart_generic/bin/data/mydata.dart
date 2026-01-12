// membuat function untuk type checking
void check(dynamic data){
  if (data is Mydata<String>){
    print('string');
  } else if (data is Mydata<num>){
    print('num');
  }else{
    print('object');
  }
}

// membuat class dengan parameter generic
class Mydata<T> {
  T data;

  Mydata(this.data);

  void test(T data){

  }

  T getData(){
    return data;
  }

}