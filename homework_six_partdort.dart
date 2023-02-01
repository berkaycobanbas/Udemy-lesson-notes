/*Soru 2
Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri
tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak
bu ogrencileri saklayın ve bu ogrencileri  yazdıran metotu yazın.
*/

class Student {
  int studentId;
  int point;
  Student({this.studentId = 1, this.point = 1});
  @override
  String toString() {
    return "ID:$studentId POINT: $point";
  }
}
