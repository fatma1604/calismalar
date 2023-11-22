//kare,üçgen,dikdörtgen ve çember;

void main(List<String> args) {
  Seil bos = Seil(5, 5);
  bos.alaniGoster();

}

class Seil {
  int yukseklik;
  int genislik;
  Seil(this.yukseklik, this.genislik);
  double alanHesapa() {
    return yukseklik * genislik.toDouble();
  }

  void alaniGoster() {
    print("ben boşum ");
  }
}

class Kare extends Seil {
  Kare(super.yukseklik, super.genislik);


  @override
  void alaniGoster() {
    print("karenin alanı $alanHesapa()");
  }

}

