import 'dart:io';

void main() {

List<int> numbers = [16, 4, 2, 8, 5]; //listelemelerde
  //<bunun içi neyse onu yaz  yazı ise string gibi>
  int total = 0;
 double sonuc=0;
  for (var number in numbers) {
    total = total + number;
    sonuc=total/2;
     
  }
   print("listedeki elemanlarin toplami : $sonuc");
}

//listesiz yöntem
   /*nt number = 16;
  int number1 = 22;
  int number2 = 8;
  double sonuc 
 = ((number + number1 + number2) / 3)  ;

  print("sayıların ortalaması $sonuc");
  
  //biraz bu kodu geliştirelim
*/