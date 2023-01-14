// Function concept
void main(List<String> args) {
  calculatePerimeter();
  int area = calculateArea(10, 12);
  print(area);
  int volume = calculateVolume(5, 8, 10);
  print(volume);
  print("Smaller number = " + findTheSmallerNumber(12, 8).toString());
  print("Even number sam : " + evenNumberSam(300).toString());
  int total = evenNumberSam(20);
  print(total);
  circleAreacalculation(2, 3);
  triangulationFind(sideOne: 4, sideTwo: 4, sideThree: 4);
}

void calculatePerimeter() {
  int weight = 10, height = 10;
  int perimeter = (weight * 2) + (height * 2);
  print("Perimeter = $perimeter");
}

int calculateArea(int width, int height) {
  int area = width * height;

  return area;
}

int calculateVolume(int width, int height, int size) {
  int volume = width * height * size;
  return volume;
}

int findTheSmallerNumber(int a, int b) => (a < b) ? a : b;

/*
SORU1: Parametre olarak  bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..

SORU2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı
Eğer PI sayısı verilmediyse varsayılan olarak 3,14 alarak hesaplama yapın.

SORU3: Bir ücgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız.
Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu
ekrana yazdırsın, geriye bir değer döndürmesin.

 */

// Soru 1:
int evenNumberSam(int n1) {
  int total = 0;

  for (int i = 0; i < n1; i++) {
    if (i % 2 == 0) {
      total = i + total;
    } else {}
  }
  return total;
}

// Soru 2:
double circleAreacalculation(double radius, [double piNumber = 3.14]) {
  double circleArea = (radius * radius) * piNumber;
  print("Circle Area: $circleArea");
  return circleArea;
}

// Soru 3:
void triangulationFind({int sideOne = 1, int sideTwo = 1, int sideThree = 1}) {
  (sideOne == sideTwo && sideOne != sideThree ||
          sideThree == sideTwo && sideThree != sideOne ||
          sideThree == sideOne && sideThree != sideTwo)
      ? print("Isosceles triangle.")
      : (sideThree == sideOne && sideThree == sideTwo)
          ? print("Equilateral triangle")
          : (sideThree != sideOne && sideThree != sideTwo && sideOne != sideTwo)
              ? print("Scalene triangle")
              : "";
}
