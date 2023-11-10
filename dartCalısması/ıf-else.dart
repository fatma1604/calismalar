void main(List<String> args) {
  //if else koşul ifaeleridir
  int i = 5;
  if (i == 5) {
    print("**els-if kulanımı 1**");
    print("i'nin değeri 5'tir.");
  } else {
    print("i'nin değeri 5 değildir.");
  }
  //Yukarıdaki kodları inceleyelim. i’nin değerini 5 verdik. if teriminin sağında i’nin 5 'e eşitliği koşulunu sorguladık.
  //Eşitse ekrana i’nin değeri 5’tir. yazısını bastıracak. Değilse i’nin değeri 5 değildir.
  //yazısı bastıracak. i’nin değeri 5 olduğu için ekrana i’nin değeri 5’tir.
  //yazısını bastırdı. If-Else akışında else kullanmamamız else’nin kod bloğunu boş bırakmamız ile aynı anlama gelir.

  int a = 6;
  if (a == 5) {
    print("**els-if kulanımı 2**");
    print("a'nin değeri 5'tir.");
    //burda else olmadı için tek bir sonuç görücem
    // a değeri 5 eşitir diye
    //bu bir yanliş kulanımdır

  }
  int b = 3;
  if (b == 5) {
    //verdim ifade bumu
    print("**els-if kulanımı 3**");
    print("b'nin değeri 5'tir.");
  } else if (b == 3) {
    //ilki değilse bumu
    print("b'nin değeri 3'tür.");
  } else {
    //ikincisi değilse bumu
    print("b'nin değeri bilinmiyor");
  }
  int f = 1, k = 3, u = 5;

  if (f != k) {
    print("**els-if kulamı 4 bunda tek tek sonuç yazacak");

    print("f eşit değildir b");
  }
  if (f < u) {
    print("f küçüktür c");
  }
  if (f < k && f < u) {
    print("f küçüktür k ve k küçüktür u ");
  }
}
