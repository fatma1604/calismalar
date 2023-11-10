void main(List<String> args) {
  
   //forEach kulanıcaz
  /*
  Map'in eleman sayısına göre döndü işlemi yapar. forEach fonksiyonu 2 parametre alır. 1. anahtar parametresi, 2. değer parametresidir.

*/
  Map name = {1: "fatma", 2: "enes", 3: "ugur", 4: "hamide"};
  print("tek boyutlu map örneği");
  print(name);
  Map name1 = {
    1: {"isim": "fatma nur", "soyIsim": "kamis", "yas": 21},
    2: {"isim": "enes", "soyIsim": "kamis", "yas": 27},
    3: {"isim": "ugur", "soyIsim": "tokan", "yas": 21},
    4: {"isim": "hamide", "soyIsim": "kamis", "yas": 65}
  };
  name1.forEach((anahtar, deger) {
    print("foreach kulanımı");
    print(anahtar.toString() + ". anahtarda : " + deger.toString());
  });
}
