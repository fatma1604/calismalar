//final kalıcı bilgi=> bir kere set edilir
//bir liste olusşturdumda eklip çıkara biliriz ama yeni bir değer atamayız

// consta=> beli olan degerler için kulanıcam 
// const tarih= DateTime.now(); tanımlamaz
//bir liste olusşturdumda eklip çıkaramayız ve yeni değerde tanımlana amz
main(List<String> args) {
  /*
  var str = "emre";
  str = "altunbilek";

 
  final String str2 = "emre";
  str2 = "altunbilek";

  const String str3 = "emre";
  str3 = "altunbilek";
  */

/*
  const sayi = 5;
  final sayi2 = 10;

  final tarih = DateTime.now();
  const tarih2 = DateTime.now();*/

  /*  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];

  liste.add(4);
  liste2.add(8);

  liste = [5, 6]; */

  //canonicalized
  const liste = [1, 2];
  const liste2 = [1, 2];
  const liste3 = [1, 2];

  

  if (liste == liste2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}




