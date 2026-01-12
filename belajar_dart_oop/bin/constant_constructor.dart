
class ImmutablePoint{
  final int x;
  final int y; // gunakan final

  const ImmutablePoint(this.x, this.y);
}
// menggunakan const constructor
void main(){
    var point1 = const ImmutablePoint(10, 10);
    var point2 = const ImmutablePoint(10, 10); // pakai kata kunci cont

    print(point1 == point2);
}