void main(List<String> args) {
/*
*******döngüler******
****belirli döngü
for 
belirsiz döngü 
while 
do
*/

  for (var i = 0; i < 16; i++) {
    print("for sayi artirma");
    print(i);
    //i değeri 16 dan küçük oldukça i değrini 1 artıyo
  }

  //forun içine isimde yaza biliyıruz
  List isimler = ["fatma", "enes", "şimbik"];

  for (var isim in isimler) {
    //var isim diyerek isim değişkeni oluşturduk
    //in isim diyerek isimler index kulamasını sağladık
    print("isimleri yazma");
    print(isim);
  }
  //forech
  //forEach() döngüsü, bir liste veya dizi üzerinde döngü oluşturmak için kullanılır
  //forEach() fonksiyonu, her eleman için belirli bir işlemi uygulamak için kullanılır.
  List isimler1 = ["kaan", "erkay", "altan"];

  isimler1.forEach((isim1) {
    print("forech yapısı çalışıyor");
    print(isim1);
  });

  int i = 10;

  while (i != 0) {
    print("while döngüsü");
    print(i);
    i--;
    //i'nin 0'a eşit olmadığı sürece döngünün çalışmasıdır. Döngü her tekrarlandığında
    //i'nin değeri ekrana bastırılır ve i'nin değeri 1 eksiltilir.
    //Daha sonra i'nin değeri 0'a kadar düşünce döngü sonlanır.
  }
  int a = 10;

  do {
    print("do-whil");
    print(a);
    a--;
  } while (a != 0);
}
