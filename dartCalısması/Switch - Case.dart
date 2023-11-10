void main(List<String> args) {
  int i = 5;
  switch (i) {
    case 0:
      print("Birinci Switch - Case yazılımı");
      print("i'nin değeri 0'dır.");
      break;
    case 5:
      print("i'nin değeri 5'tir.");
      break;
    case 10:
      print("i'nin değeri 10'dur.");
      break;
    default:
      print("i'nin değeri bilinmiyor.");
  }
  //Yukardaki  case 0 ile i'nin değerinin 0 olup olmadığını sorguluyoruz. 0 ise print ile "i'nin değeri 0'dır."
  // yazdırdık. break'in anlamı ise case doğru olduğunda diğer case'leri kontol etmemesi içindir. default ise else ile aynı mantıktadır.

  int a = 0;
  switch (a) {
    case 0:
      print("ikinçi Switch - Case");
      print("mesajım 1");
      continue durumum;
    case 5:
      print("mesajım 2");
      break;
    durumum:
    case 0:
      print("mesajım 3");
      break;

    default:
      print("mesajım 4");
  }
}
