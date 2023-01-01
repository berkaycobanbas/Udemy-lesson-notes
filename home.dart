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
}
