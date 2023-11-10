/*void main(List<String> args) {
  int number = 16;
  int gecicisayi = number;
  int toplam = 0;
  while (gecicisayi > 0) {
    int basamak = gecicisayi % 10; // Son basamağı atlayarak kontrol etmek

    int us = 1;
    for (int i = 0; i <= basamak; i++) {
      us = us * basamak;
    }

    toplam += us; // Üs değerlerini topla
    gecicisayi ~/= 10;
  }
  if (toplam == gecicisayi) {
    print("girdiniz sayı kuraLARA UYGUN $number" "TOPLAMI $toplam");
  }
  print("hdhhdhhhd uygun değil");
}
*/
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
    int total = 0;
  print("değer gir");

  String? number= stdin.readLineSync();

   int temporaryNumber = int.parse(number!);
   int originalNumber  = temporaryNumber;
  int digitCount= number.toString().length;

  while (temporaryNumber> 0) {
    int digit= temporaryNumber% 10;
    
   total += pow(digit, digitCount).toInt();
    temporaryNumber~/= 10;
  }
  if (total ==originalNumber ) {
    print("girdiniz sayı kuraLARA UYGUN $temporaryNumber");
  }
 else{
 print("Girdiğiniz sayı Armstrong sayısı değildir.");
 }
}
