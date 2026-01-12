// membuat class Exception
class ValidationException implements Exception{
  String message;
  ValidationException(this.message);
}

class Validation{
  static void Validate(String username, String password){
    if(username == ""){
      throw ValidationException('username is blank'); // menggunakan class exception buatan sendiri
      // throw Exception('username is blank'); // menggunakan class exception bawaan dart. disarankan membuat class exception sendiri agar saat aplikasi mengalami error tidak terjadi crash
    }else if (password == ""){
      throw ValidationException('password is blank');
      // throw Exception('password is blank'); // menggunakan class exception bawaan dart. disarankan membuat class exception sendiri agar saat aplikasi mengalami error tidak terjadi crash
    }else if (username != 'said' || password != 'said') {
      throw Exception('login gagal');
    }
    // valid
  }
}

void main(){
  // kode try-catch. ini bisa mencegah crash
  // try{
  //   Validation.Validate("", "");
  // } on ValidationException{
  //   print('validation error');
  // }

  // kode menangkap object exception
  try{
    Validation.Validate("said", "");
    // menambahkan parameter kedua pada catch untuk class StackTrace
  } on ValidationException catch (exception, StackTrace){ // tangkap object dan simpan ke exception
    print('validation error ${exception.message}');
    print('stackTrace : ${StackTrace.toString()}');
    // mencoba multiply try-catch
  } on Exception catch (exception){
    print('error ${exception.toString()}');
    // kode finally
  } finally {
    print('finally!');
  }

  // menangkap semua exception tanpa peduli dengan exception
  try{
    Validation.Validate("said", "salah");
  } catch (exception){
    print("error ${exception.toString()}");
  } finally {
    print('finally!');
  }
  print('selesai');

}