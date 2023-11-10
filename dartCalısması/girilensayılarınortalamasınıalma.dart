import 'dart:io';

void main() {
  int count = 0;
  double total = 0;
  
  stdout.write('Kaç adet sayının ortalamasını almak istiyorsunuz: ');
  String? input = stdin.readLineSync();
  
  if (input != null) {
    try {
      count = int.parse(input);

      while (count > 0) {
        stdout.write('Sayı: ');
        String? numberInput = stdin.readLineSync();
        if (numberInput != null) {
          total += double.parse(numberInput);
          count--;
        } else {
          print('Geçersiz giriş yaptınız.');
          break;
        }
      }

      if (count == 0) {
        double average = total / int.parse(input);
        print('Girilen sayıların ortalaması: $average');
      }
    } catch (e) {
      print('Geçersiz giriş. Lütfen bir sayı girin.');
    }
  } else {
    print('Giriş yapılmadı.');
  }
}