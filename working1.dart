void main(List<String> args) {
  // dönüşüm çalışması

  // intacırı stringe çevir

  int number = 42;
  String metinSayi = number.toString();
  print(metinSayi);
  //42 bir metin
  // öbürleri içinde bunu yapıcaz sadece
  /*
  to.ınt ve to.doble kulanıcam
  runtimeType veri tipini gösteriri
  */
  //MAP ÇALIŞMASI
  //Map, birden fazla boyutu olan List'tir. Örnek:
  Map name = {1: "fatma", 2: "enes", 3: "ugur", 4: "hamide"};
  print("tek boyutlu map örneği");
  print(name);
  Map name1 = {
    1: {"isim": "fatma nur", "soyIsim": "kamis", "yas": 21},
    2: {"isim": "enes", "soyIsim": "kamis", "yas": 27},
    3: {"isim": "ugur", "soyIsim": "tokan", "yas": 21},
    4: {"isim": "hamide", "soyIsim": "kamis", "yas": 65}
  };
  print("çoklu map örneği");
  print(name1);

  print("map üzerinde belirtilen indekteki kişi gösterme");
  print(name1[1]); // {isim: fatma, soyIsim: kamis, yas: 21}
  print("map üzerinde belirtilen indeks ve istedin şeyi gösterme");
  print(name1[1]["isim"]); //fatma//ben isiim istiyorum yaş vs yazıla bilir
  print(name1.isEmpty); //Map boş ise true verir.
  print(name1.isNotEmpty); //Map boş değilse true verir.
  print(name1.keys); //anahtarları listeler
  print(name.length);
  print(name.values); //tersten listeler
  //print(name.reversed); //terse çevirme listelerde kulandımızdır

  Map yeniIsimler = {
    4: {"isim": "Gökhan", "soyIsim": "Bingül", "yas": 26},
    5: {"isim": "İsmail", "soyIsim": "Tunç", "yas": 22},
    6: {"isim": "Emre", "soyIsim": "Gülşen", "yas": 23}
  };
  name.addAll(yeniIsimler);
  print("eski mapa yeni map eklemek"); //list ile aynı
  print(name);
  print("anahtar kontrolü");
  print(name[1].containsKey("isim")); // anahtar içerip içermedini kontrol eder
  print("değer kontrolü");
  print(name[1].containsValue("ugur"));

  //forEach kulanıcaz
  /*
  Map'in eleman sayısına göre döndü işlemi yapar. forEach fonksiyonu 2 parametre alır. 1. anahtar parametresi, 2. değer parametresidir.

*/
  name.forEach((anahtar, deger) {
    print("foreach kulanımı");
    print(anahtar.toString() + ". anahtarda : " + deger.toString());
  });
//naptını pek anlamamış olabilirim bakıcaz buna
  name.remove(2);
  print("belirtilen anahtarda ki değeri kaldırma");
  print(name);

  name.update(2, (value) => {"isim": "Cüneyt", "soyIsim": "Ayder", "yas": 28});
  print("belirtilen anahtardaki değerleri günceler");
  print(name);

  //updateAll = Tüm değerleri günceller.

//runtimeType = Çalışma zamanındaki veri tipini gösterir.
}
