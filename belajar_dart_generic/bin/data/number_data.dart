// kode bounded type parameter
class NumberData<T extends num> {
  T data;

  NumberData(this.data);
}