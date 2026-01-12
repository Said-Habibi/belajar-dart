// kode generic parameter pada function
  class ArrayHelper {
    static int count<T>(List<T> list){
      return list.length;
    }
  }