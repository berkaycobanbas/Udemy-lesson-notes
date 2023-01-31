/*1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.  

2- Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın.
 
3- Her bir elemanında  keyleri string,  value'leri dynamic  olan bir liste olusturun.
Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
Örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele olabilir).

4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun
Bu elemanları tek bir listeye aktarın
Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.

5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini
girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.
  List<String> citys = [];
  citys.add("Ankara");
  citys.add("Istanbul");
  citys.add("Izmir");
  citys.add("Antalya");
  for (String city in citys) {
    print(city);
  }
//2- Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın*
  Map<String, dynamic> myComputer = {};
  myComputer["Core"] = 8;
  myComputer["Ram"] = 16;
  myComputer["Do you SSD?"] = true;
  print("Bilgiyar bilgileri");

  for (var computer in myComputer.entries) {
    print("${computer.key} : ${computer.value}");
  }

  /* 3- Her bir elemanında  keyleri string,  value'leri dynamic  olan bir liste olusturun.
Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
Örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele olabilir).*/

  List<Map<String, dynamic>> city1 = <Map<String, dynamic>>[];
  Map<String, dynamic> ankara = <String, dynamic>{};
  ankara["Il Adi"] = "Ankara";
  ankara["Ilce Sayisi"] = 10;
  ankara["Plaka Kodu"] = 06;

  Map<String, dynamic> istanbul = <String, dynamic>{};
  istanbul["Il Adi"] = "İstanbul";
  istanbul["Ilce Sayisi"] = 39;
  istanbul["Plaka Kodu"] = 34;

  Map<String, dynamic> antalya = <String, dynamic>{};
  antalya["Il Adi"] = "Antalya";
  antalya["Ilce Sayisi"] = 19;
  antalya["Plaka Kodu"] = 07;
  city1.add(ankara);
  city1.add(istanbul);
  city1.add(antalya);

  for (int i = 0; i < city1.length; i++) {
    var okunanDeger = city1[i];
    print(
        "Listenin ${i + 1}.elemaninda bulunan sehir adi: ${okunanDeger["Il Adi"]} ilce sayisi: ${okunanDeger["Ilce Sayisi"]} Plaka kodu: ${okunanDeger["Plaka Kodu"]} ");
  }

  /*4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun
Bu elemanları tek bir listeye aktarın
Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın*/

  List<int> listOne = List.filled(5, 10);
  List<int> listTwo = List.filled(5, 10);

  for (int i = 0; i < 5; i++) {
    listOne[i] = Random().nextInt(50);
    listTwo[i] = Random().nextInt(50);
  }
  List<int> mixList = <int>[];
  mixList = [...listOne, ...listTwo];
  print(listOne);
  print(listTwo);
  print(mixList);
  Set<int> end = <int>{};
  for (int kk in mixList) {
    end.add(kk * kk);
  }
  print(end);

/*5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini
girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/
  int enteredValue = 0;
  List<int> enteredValueList = [];

  do {
    print("Lütfen sayi giriniz. Çikmak için -1'e girin");
    enteredValue = int.parse(stdin.readLineSync()!);
    enteredValue != -1
        ? enteredValueList.add(enteredValue)
        : print(
            "Girilen sayilarin genel ortalamasi : ${ortalamabul(enteredValueList)}");
  } while (enteredValue != -1);

  ortalamabul(enteredValueList);
}

int total = 0;
double ortalamabul(List<int> enteredValueList) {
  for (int i = 0; i < enteredValueList.length; i++) {
    total = total + enteredValueList[i];
  }
  return total / enteredValueList.length;
}
