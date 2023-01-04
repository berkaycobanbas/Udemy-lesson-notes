import 'dart:ffi';

void main(List<String> args) {
  //String veri tipi çalışmaları
  String ad = "Berkay";
  String soyad = "Cobanbas";
  double yas = 22;

  // ignore: avoid_print
  print(
      "My name is $ad $soyad. I'm ${yas.toInt()} years old and number of characters in my entire name and surname : ${ad.length + soyad.length}");

//////////////////////////////////////////////////////////////////////

  int kenarBir = 15;
  int kenarIki = 25;
  int kenarUc = 35;

  // ignore: avoid_print
  print(
      " A Triangel with first side : $kenarBir, second side : $kenarIki and  third side : $kenarUc , has perimeter : ${kenarBir + kenarIki + kenarUc} ");
//////////////////////////////////////////////////////////////////////

// İF-ELSE-ELSE İF ÇALIŞMASI

  int notOrtalamasi = 10;

  if (notOrtalamasi >= 85 && notOrtalamasi <= 100) {
    print("Notunuz : AA");
  } else if (notOrtalamasi < 85 && notOrtalamasi >= 70) {
    print("Notunuz : BA ");
  } else if (notOrtalamasi < 70 && notOrtalamasi >= 50) {
    print("Notunuz: BB ");
  } else if (notOrtalamasi < 50 && notOrtalamasi >= 0) {
    print("Hesaplamaya değmez");
  } else if (notOrtalamasi < 0 || notOrtalamasi > 100) {
    print("Yanliş Giriş");
  } else {
    print("Yolunda gitmeyen birşeyler var");
  }

///////////////////////////////////////////////////////////////////////

// KISA İF-ELSE KULLANIMLARI

  int dogumTarihi = 1988;

  dogumTarihi >= 2015
      ? print("İçeriye yaş nedeni ile giremezsiniz")
      : print("Geçebilirsiniz");

  dogumTarihi > 2023 || dogumTarihi < 1900
      ? print("Zamanda yolculuk")
      : print("Siradan");

//////////////////////////////////////////////////////////////////////

// NULL DEĞER KONTROLÜ

  String? isim = null;
  String? soyIsim = "Cobanbas";
  String mesaj;

  mesaj = isim ?? soyIsim;

  print("Hello $mesaj");

  //////////////////////////////////////////////////////////////////////

  //SWİTCH CASE KULLANIMI

  int bolunen = 50;
  int bolum = bolunen % 2;

  switch (bolum) {
    case 0:
      print("Bu sayi çifttir.");
      break;
    default:
      print("Bu sayi tektir.");
  }

/////////////////////////////////////////////////////////////////

// ARITMETIK OPERATORLER

  double s1 = 12;
  double s2 = 11;

  print("$s1 + $s2 sayilarinin toplami: ${s1 + s2}");
  print("$s1 - $s2 sayilarinin farki: ${s1 - s2}");
  print("$s1 * $s2 sayilarinin çarpimi: ${s1 * s2}");
  print("$s1 / $s2 sayilarinin bolumu: ${s1 / s2}");
  print("$s1 % $s2 sayilarinin modu: ${s1 % s2}");

/////////////////////////////////////////////////////////////////

// ATAMA VE KARSILASTIRMA

  double s3 = 8;
  s3 = s3 + 8;
  print(s3);

  s3 += 8;
  print(s3);

  s3 %= 2;
  print(s3);

  // < : Kucuktur.
  // > : buyuktur.
  // <= : kucuk veya esit.
  // >= : buyuk veya esit.
  // == : esit mi?.
  // != = esit değil.
// bu karsilastirmalar string ifadelerde kullanılabilir.
  double s4 = 2;
  double s5 = 1;
  if (s4 != s5) {
  } else {
    print("$s4 ve $s5 birbirine esittir.");
  }

/////////////////////////////////////////////////////////////////

  // MANTIKSAL OPERTAORLER

  //&& , ||
  // && = ve
  // || = veya
  // ! = değil

  int s6 = 5;
  int s7 = 6;

  if (s6 > 0 && s7 > 0) {
    print("$s6 ve $s7 pozitif sayilardir");
  } else if (s6 < 0 || s7 < 0) {
    print("$s6 ve $s7 sayisinin carpimi negatiftir.");
  }

/////////////////////////////////////////////////////////////////

  // ARTTIRMA AZALTMA OPERATORLERI

  // ++ -> degiskeni 1 arttirir
  // -- -> degiskeni 1 azaltir
  // bu ifadelerin degiskenin saginda veya solunda olmasi onemlidir.
// sayi++ -> önce sayiyi kullan sonra 1 arttır, ++ sayi ise önce sayiyi 1 arttır sonra kullan anlamina gelir.

  int s8 = 11;
  s8 = s8 + 1;
  s8 += 8;
  print(s8);

  s8++;
  print(s8);

  int s9 = 10;

  print(s9++); // önce yazdır, sonra arttır.
  print(++s9); // önce arttır, sonra yazdır.

// Bu kosullar azaltma icinde gecerlidir.

/////////////////////////////////////////////////////////////////

// ISLEM ONCELIGI

// () -> once parantez ici isletilir.
// ++ ve -- degiskenden once gelenler
// * ve /
// + ve -
// = atama islemleri
// ++ ve --degiskenden sonra gelenler

/////////////////////////////////////////////////////////////////

// FOR-WHILE-DO WHILE DONGUSU
// for : genellikle tekrar sayısı bilinen durumlarda kullanılır. yazım yöntemi şu şekildedir
//while : bir koşul doğru oldugu sürece yapılacak işlemler için kullanılan döngü çeşidi
//do - while : koşul sağlansın veya saglanmasın bir kere çalıştırılır ve sonra şart kontrol edilir.

  String isim2 = "Berkay";
  for (int i = 0; i < 5; i++) {
    print("$isim2");
    // For(döngünün tekrarlamasını sağlayacak olan değişken; tekrarlanmasını sağlayan şart; sonsuz döngüye girişi engellemek için değişkenin sabitlenmesini sağlayan işlem){yapmak istediğiniz işlem}
  }

  int sayac = 0;
  while (sayac < 4) {
    print("Deneme");
    sayac++;
  }

  int sayac2 = 0;
  do {
    print("Deneme2");
    sayac2++;
  } while (sayac2 <= 3);

  for (int i = 1; i < 4; i++) {
    if (i < 5) {
      print("i 5'den küçük");
    } else {
      print("i 5'den büyük");
      continue;
    }
  }

  // ÖDEVLER

/**
 * SORU 1 : 3 tane double değişken olusturup bunların ortalamasını yazdıran programı yazınız
 * SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
 * SORU 3 : Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız
 * (geçme notu alt değeri = 50, vizenin %40 finalin %60ı alınır.)
 * 
 * SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
 * SORU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız. 
 * SORU 6: Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.
 */

  double degisken1 = 2.2;
  double degisken2 = 3.3;
  double degisken3 = 4.5;
  double sonuc = (degisken1 + degisken2 + degisken3) / 3;

  print("$degisken1,$degisken2,$degisken3 sayilarinin ortalamasi : $sonuc");

  int kenar1 = 1;
  int kenar2 = 1;
  int kenar3 = 3;

  kenar1 == kenar2 && kenar1 != kenar3 ||
          kenar1 == kenar3 && kenar1 != kenar2 ||
          kenar3 == kenar2 && kenar3 != kenar1
      ? print("Bu üçgen ikizkenar üçgendir")
      : kenar1 == kenar2 && kenar1 == kenar3
          ? print("Bu üçgen eş kenar ayni zamanda  ikizkenar üçgendir")
          : kenar1 != kenar2 && kenar1 != kenar3
              ? print("Bu üçgen çeşitkenar üçgendir")
              : print("Ters giden birşeyler oldu.");

  int vizenot = 10;
  int finalnotu = 60;
  double vize40 = vizenot * 40 / 100;
  double final60 = finalnotu * 60 / 100;
  double ortalama = (vize40 + final60);
  ortalama > 50
      ? print("Dersi geçtiniz.Geçme notunuz:$ortalama")
      : print("Dersi geçemediniz.Notunuz : $ortalama");

  String soyIsim2 = "Cobanbas";
  String soyIsim3 = "AA";
  String soyIsim4 = "BB";
  int sayac3 = 0;
  int sayac4 = 0;
  for (int i = 0; i < 5; i++) {
    print("$soyIsim2");
  }

  while (sayac3 < 5) {
    print("$soyIsim3");
    sayac3++;
  }

  do {
    print("$soyIsim4");
    sayac4++;
  } while (sayac4 < 5);

  for (int i = 1; i <= 100; i++) {
    if (i % 15 == 0) {
      print("${i}");
    }
  }

  int verilensayi = 5;
  int deger1 = 1;

  for (int i = 1; i <= verilensayi; i++) {
    deger1 = i * deger1;
    print(deger1);
  }
  ;
}
