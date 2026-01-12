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