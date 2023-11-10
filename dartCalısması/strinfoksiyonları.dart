void main(List<String> args) {
  print("carp fonksiyonuna streng dönen  sonuç");
  print("3 X 5 = ${carp(3, 5)}");
  

    String isim = "Kaan";
  print("Merhaba ${isim}!");//bu şekilde kulanımıda vardır
}

int carp(int a, int b) {
  return a * b;
}
//Yukarıda gördüğümüz gibi print fonksiyonu içerisine ${carp(3, 5)} ekleyerek
// carp fonksiyonundan dönen sonucu string'e eklemesini sağladık.