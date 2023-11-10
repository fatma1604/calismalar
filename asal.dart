import 'dart:math';

void main(List<String> args) {
  int number = 16;
  int gecicisayi = number;
  int basamakSayisi = number.toString().length;
  int toplam = 0;
  while (gecicisayi > 0) {
    int basamak = gecicisayi % 10; // Son basamağı atlayarak kontrol etmek
toplam += pow(basamak, basamakSayisi).toInt();
    /*int us = 1;
    for (int i = 0; i <= basamak; i++) {
      us = us * basamak;
    }

    toplam += us;
     // Üs değerlerini topla
     */
    gecicisayi ~/= 10;
  }
  if (toplam == gecicisayi) {
    print("girdiniz sayı kuraLARA UYGUN $number" "TOPLAMI $toplam");
  }
  print(" uygun değil");
}