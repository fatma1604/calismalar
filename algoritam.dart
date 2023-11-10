/*void main(List<String> args) {
  print(isPrime(3));
}

bool isPrime(int number)   {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}*/
import 'dart:io';

void main(List<String> args) {
  print(isPrime(userInput()));
}

userInput() {}

bool isPrime(number) {
  print("asal sayisini bulmak istediniz sayıyı giriniz");
  String? userInput = stdin.readLineSync();
  int number = int.parse(userInput!);
  if (number <= 1) {
    print(
        "girdiniz sayı asal olamaz lütfen tekrar denyiniz negatrif sayı girmeyiniz");
  }
  for (int i = 2; i * i <= number; i++) {
    print("döngüdeki sayılar $i");
    if (number % i == 0) {
      
      return false;
    }
    print("kulanicının vberdi sayi$number");
  }
  return true;
}
