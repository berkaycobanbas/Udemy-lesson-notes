/*Soru 1
CemberDaire isimli sınıf oluşturun. Bu sınıfın yarıçap alan kurucusu
olmalı.Ayrıca cevre ve alanını hesaplayan metotlar olmalı.(Pi sayısı 3,14 alın)
*/

class CemberDaire {
  int _yariCap = 1;
  double _pi = 3.14;

  CemberDaire(int yariCap) {
    _yariCapKontrol = yariCap;
  }
  void set _yariCapKontrol(deger) {
    if (deger > 0) {
      _yariCap = deger;
    } else {
      _yariCap = 1;
    }
  }

  double daireCevreHesapla() {
    return _pi * _yariCap * 2;
  }

  double daireAlanHesapla() {
    return _pi * _yariCap * _yariCap;
  }
}
