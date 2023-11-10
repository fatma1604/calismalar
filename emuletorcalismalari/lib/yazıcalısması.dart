import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: YaziDegsikleri()));
}
class YaziDegsikleri extends StatelessWidget {
  //1-maloer görumesi için Scaffold eklicez
  //2- sitil vericez texsin içine vericez style için de istedini yapa bilirsin
  //ben  asadaki yazıyı büyütmrk istiyorum font size kulanıyorum
// ben asadaki yazıyı kalın yapmak istedim   fontWeight: FontWeight.bold kulandım
  //3- ortalıcaz
  const YaziDegsikleri({super.key});
  Widget build(BuildContext buildContext) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Fatma Nur Kamıs",
          style: TextStyle(
              fontSize: 45,
              color: Color.fromARGB(255, 233, 6, 82),
              fontWeight: FontWeight.bold),
        ),
      ),
    ); // scaffold kulanımı
  }
}
/*
yukardaki koda ilk scaffoldu ekledik sonra body ->sonra  ortaladdık ortalamayı şu şekilde yapıyoruz= //Yazıyı ortalamak için Texti mouse
 ile seçtik ve daha sonra Refactor seçip Center yaptım.ctrl+sift+r=kısa yol.
 sonra texte styla verdik bu şekilde:)
*/
