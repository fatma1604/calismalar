void main(List<String> args) {
  merhaba();
  print("değer dçdüren foksiyon");
  print(sayi());
  print("paremetreli fonksiyon");
  print(topla(5, 10));
  print("ilk değer ğirilmedi takide görüntü");
  print(carp(4));
  print("iki değer girildi taktirde");
  print(carp(6, 3));
  print("Arrow (ok) => retun kulama");
  print(topla1(20, 30));
}

void merhaba() {
  // fonksiyon tanımlamadır ve değer dödürmez
  print("merhaba");
}

int sayi() {
  // değer dödürcekse ne odunu belirtmeliyiz veri tipini
// inteycırmı stringmi oldunu belirtmeliyiz
  return 10;
}

int topla(int a, int b) {
  //Parametreler değerleri işlemlere iletmek için kullanılır.
  //Yani bir fonksiyona işlemlerinde kullanması için parametreler yollayabiliriz.
  return a + b;

  /* 
  şu şekilde de yazıla bilir:
  int topla(int a, b) {
  return a + b;
} */
}
/*Fonksiyondaki parametrelere girilmemesi dahilinde otomatik değer atanabilir.;
aşadaki örnekte değer artık 2 girilmedi taktirde girilirse o değer olacak
 print(carp(4));a=4 b=2
  print(carp(6, 3)); bu ise benim atadımı silip 3 alıyor a=6 b=3

*/

int carp(int a, [int b = 2]) {
  return a * b;
  //belirli parametleri girme . konusuna dönücez
}

int topla1(int a,int  b) => a + b;//retun kulamaya gerek yok

