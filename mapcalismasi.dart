void main(List<String> args) {
  
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
  print(yeniIsimler);
  print("anahtar kontrolü");
  print(yeniIsimler[1].containsKey("isim")); // anahtar içerip içermedini kontrol eder
  print("değer kontrolü");
  print(yeniIsimler[1].containsValue("ugur"));



//naptını pek anlamamış olabilirim bakıcaz buna
  name.remove(2);
  print("belirtilen anahtarda ki değeri kaldırma");
  print(name);

  name.update(2, (value) => {"isim": "Cüneyt", "soyIsim": "Ayder", "yas": 28});
  print("belirtilen anahtardaki değerleri günceler");
  print(name);

  //updateAll = Tüm değerleri günceller.

//runtimeType = Çalışma zamanındaki veri tipini gösterir.

/*
  map için ufak bir açıklama daaha
  Harita (Map): Bir harita, anahtar-değer çiftlerini saklamak için kullanılan bir veri yapısıdır.
   Her bir anahtar bir değere eşlenir. Anahtarlar benzersiz olmalıdır, 
  yani aynı anahtara sahip birden fazla öğe içeremezsiniz. Harita veri yapısı, 
  anahtarları kullanarak hızlı bir şekilde belirli bir değeri bulmanızı veya değiştirmenizi sağlar.

Veri Yapısı: Genel olarak, veri yapısı, belirli bir veri tipi veya organizasyonun verileri depolamak
 ve işlemek için kullanılan bir yapısıdır. Veri yapıları, verileri belirli bir düzende veya yapılı bir biçimde
  saklamak ve hızlı erişim veya işlemler için optimize etmek için kullanılır.
  */
  /*List name = ["fatma", "uğur", "iklim"];
  print(name);
  */
  // liste oluşturma örneği yaptık yukardakini kulana bilcem gibi bide şöyle bir şey yapalım

  /*List<String> name = ["fatma", "uğur", "iklim"];
  print(name);*/

  //Map bakalım

  /*Map kisi = {"isim": "Kaan", "soyisim": "Kuşcu"};
  print(kisi);*/

}
