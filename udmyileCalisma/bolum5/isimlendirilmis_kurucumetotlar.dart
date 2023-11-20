void main(List<String> args) {
  Ogrenci fatma = Ogrenci(2002, "fatma", false);
  fatma.ogreciBilgileri();

  var ayse = Ogrenci.adiolmayanOgrenciKurucumetodu(2005, true);
  print("ayse bilgileri");
  ayse.ogreciBilgileri();

  print("enesin bilgileri ${Ogrenci.dogumyiliOlmayanKurucumetodu("enes", false)}");
  var enes = Ogrenci.dogumyiliOlmayanKurucumetodu("enes", false);
  print("dkdkkdkkd ${enes.ogreciBilgileri().toString()}")
  enes.ogreciBilgileri();
}

class Ogrenci {
  int? dogumYili;
  String? adi;
  bool? haylaOgrencimi;

  Ogrenci(int this.dogumYili, String this.adi, bool this.haylaOgrencimi) {
    print("konstegrır metdodu çaliştı");
  }
  Ogrenci.adiolmayanOgrenciKurucumetodu(this.dogumYili, this.haylaOgrencimi) {
    this.dogumYili = dogumYili;
    this.haylaOgrencimi = haylaOgrencimi;
  }
  Ogrenci.dogumyiliOlmayanKurucumetodu(this.adi, this.haylaOgrencimi) {
    this.adi = adi;
    this.haylaOgrencimi = haylaOgrencimi;
  }

  void ogreciBilgileri() {
    print(
        "dogum yılı: ${dogumYili},adi: ${adi},hayla örencimi${haylaOgrencimi}");
  }

  void yasi() {
    if (dogumYili == null) {
      print("yas bilgisi girilmedi");
    } else {
      print("yasi${dogumYili}-2023");
    }
  }
}
