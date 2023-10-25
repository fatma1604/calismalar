void main(List<String> args) {
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

  // liste kulandımız gibide kulana biliriz stringli

  //dinamik ile var arasıdaki farkalara bakalım
  dynamic number = 10.5;
  number = 16;
  number = "merhaba";
  print("**var ve dinamik demesi***");
  print(number);

  var first = 15;
  var first1 = "hello";

  print(first);
  print(first1);

  //const varrr bunlarda değişmez pi sayısı gibi değtiremesin

  // listlerin ekleri
  List name = ["fatma", "uğur", "iklim", "dünya"];
  print("**list hakında denemeler***");

  print(name[1]); //index belirtik indexler 0 dan başlar uğru görcez
  print(name.length); //uzunluk
  print(name.reversed); //terse çevirme
  print(name.first); //ilk indexi verir.
  print(name.last); //son indexs
/*isEmpty ve isNotEmpty
boş olup olmadını kontrol ediyoruz 

şu şekilde kulanıla bilir 
List<int> number = [];
if (number.isEmpty) {
  print("Liste boş.");
} else {
  print("Liste boş değil.");
}

veya 
List<int> sayilar = [1, 2, 3];
if (sayilar.isNotEmpty) {
  print("Liste boş değil.");
} else {
  print("Liste boş.");
}

*/
  name.add("uzay"); //isim ekler
  print(name);
  List newName = [
    "toprak",
    "su",
    "ateş"
  ]; /*yeni bir diziolusturup eski diziye ekleye biliyoruz
  çıktı şu şekilde oluyo
  [fatma, uğur, iklim, dünya, uzay, toprak, su, ateş]
  */
  name.addAll(newName);
  print("*** yeni bir dizi oluşturup eski dizeye ekleme***");
  print(name);
  /*
Map'ler, veri düzenlemesi ve erişimi gerektiren birçok senaryoda kullanışlıdır,
 özellikle ilişkilendirilmiş verileri temsil etmek ve bu verilere hızlı erişim sağlamak için.
 ben şuan kendimce binevi indexse ulaşmak için diye bilirim map kulanımı tam olarak bilmiyorum

  */
  print("**map oluşturma***");
  print(name.asMap()); //map dönütürüyor mapın görüntüsü:
  //{0: fatma, 1: uğur, 2: iklim, 3: dünya, 4: uzay, 5: toprak, 6: su, 7: ateş}

  //name.fillRange(1, 3); //indexs 1 den 2 kadar olanları null yazıyor

  //fiilrage kulamadan önce: {0: fatma, 1: uğur, 2: iklim, 3: dünya, 4: uzay, 5: toprak, 6: su, 7: ateş}
  name.fillRange(
      5, 6, "bizim hayatımız"); //eklemede yapa bilir ekleme yaptı görüntü:
  //{0: fatma, 1: uğur, 2: iklim, 3: dünya, 4: uzay, 5: bizim hayatımız, 6: su, 7: ateş}

  // fillRange belirli bir aralıktaki değerleri belirli bir değerle doldurmak anlamına gelir.
  print("**fillRange oluşturma***");
  print(name.asMap());
  //isimler.clear();//listenin içini temizler
  print("**belirledin aralığın görüntüsünü verme***");

  print(name.getRange(1, 2)); //belirledin aralığı verir

  print("*** belirledin şeyin index verir ***");
  print(name.indexOf(
      "su")); //içine yazdın ismin veya numaranın nesne olarak geçiyoda işte onun index veriri
  /*
      indexOf:
indexOf, bir öğenin belirtilen bir dizide ilk bulunduğu konumun indeksini döndürür.
Eğer öğe birden fazla kez dizide bulunuyorsa, indexOf sadece ilk bulunan öğenin indeksini döndürür.
      */

  //dizi veya dize içinde belirli bir konuma yeni bir öğe veya eleman eklemek anlamına gelir.
  //buda yeni şeyler ekliyor ama konumlu
  List my_list = [1, 2, 3, 4, 5];
  my_list.insert(2, 10); //2. indexste on var
  print(my_list.asMap());
  //Belirlenen indexe List ekleme.

  print("***Belirtilen indexe List ekleme.**");

  List yeni = ["ebru", "şen ", "ğündeş"];
  List isimlerYeni = ["iklim", "dünya", "uzay"];
  print(yeni.asMap());
  yeni.insertAll(2, isimlerYeni); //2. indekse geldi
  //isimler.setAll(0, isimlerYeni);//ikinci yol
  print(yeni.asMap());
  //lastIndexOf, genellikle bir dizi veya liste içinde belirli bir öğenin son bulduğu konumun indeksini döndüren bir işlemdir. Bu işlev,
  //özellikle bir veri yapısında tekrarlanan öğeler varsa veya bir öğenin sonuncusunun nerede bulunduğunu bulmanız gerektiğinde kullanışlıdır
  /*
  lastIndexOf, bir öğenin belirtilen bir dizide son bulduğu konumun indeksini döndürür.
Eğer öğe birden fazla kez dizide bulunuyorsa, lastIndexOf sadece son bulan öğenin indeksini döndürür.
  */

  List isimler2 = [
    "Kaan",
    "Erkay",
    "Enes",
    "Emir",
    "Ahmet",
    "Enes",
    "Aasds",
    "Enes",
    "Enes"
  ];
  print("**ındexof çıktısı**");

  print(isimler2.indexOf("Enes")); // ilk indeksi getiyo
  print("***lastındexof çıktısı**");
  print(isimler2.lastIndexOf("Enes")); // sondakiindeksi getiyo

  //  isimler.remove("Altan");//yazılan elamnnı kaldırıyor
  //isimler.removeAt(1); // belirtilen indexteki elamanı kaldırır
  //isimler.removeLast();// son elamanı kaldırı
  //isimler.removeRange(1, 3);//belirlenen aralığı kaldırır

  yeni.replaceRange(
      1, 3, ["Ahmet", "Merhmet"]); //belirtilen aralığa isimleri değtirme
  //isimler.setRange(1, 3, ["İsmail", "Ali"]);//farklı kulanım

  print("***Belirtilen aralığı değiştirir.****0");
  print(yeni);
  yeni.shuffle(); //rasgele kartirir
  print("rasgele karıştırma");
  print(yeni);
  yeni.sort(); //veri tipine göre
  print("veri tipine göre");
  print(yeni);

  print("verilen indexten başlamqk");
  print(yeni.sublist(2));
}
