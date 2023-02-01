/*Soru 2
Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri
tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak
bu ogrencileri saklayın ve bu ogrencileri  yazdıran metotu yazın.
*/

import 'dart:math';

import 'homework_six_partdort.dart';

void main(List<String> args) {
  Student st1 = Student(studentId: 5, point: 10);
  List<Student> fullStudents = List.filled(2, Student());
  ogrenciListesiDoldur(fullStudents);
  for (Student ogrenci in fullStudents) {
    print(ogrenci);
  }
  print("Ogrencilerin not ortalamasi=" +
      ogrenciNotOrtalamasi(fullStudents).toString());
}

void ogrenciListesiDoldur(List<Student> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] = Student(
        studentId: Random().nextInt(1000), point: Random().nextInt(100));
  }
}

double ogrenciNotOrtalamasi(List<Student> liste) {
  int toplam = 0;
  for (Student okunanOgrenci in liste) {
    toplam = toplam + okunanOgrenci.point;
  }
  return toplam / liste.length;
}
