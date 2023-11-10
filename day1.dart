
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: YaziGetirme()));
}
//yun yapma kısmına geldik onlar ödev2 de


//ben butona bastımda adam bana bi ekran çıkartsın veya bi yazı yasın isterim
class YaziGetirme extends StatefulWidget {
  const YaziGetirme({super.key});

  State<YaziGetirme> createState() {
    return _YaziGetirme();
  }
}

class _YaziGetirme extends State<YaziGetirme> {
  String text = "MERHABA BU BİR BUTONDUR";

  void yaziyiDegistir() {
    setState(() {
      text = "SELAMMM";
    });
  }

  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 45,
                    color: Color.fromARGB(255, 213, 96, 43),
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  yaziyiDegistir();
                },
                child: const Text("oyuna Başla"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 215, 243, 33),
                    foregroundColor: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}














//butonda bişeyleri değtirmek istiyoSam ne kulanıcam
//-->StatefulWidge

class Buton2 extends StatefulWidget {
  const Buton2({super.key});
  
  State<Buton2> createState() {
    return _Buton2();
  }
}

class _Buton2 extends State<Buton2>{ 

Widget build(BuildContext buildContext) {
  return Scaffold(
    body: Center(child: Column(
       mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Text("buton"),
         ElevatedButton(
            onPressed: () {},
            child: const Text("butonn"),
          ),
      ],
    )),
  );
}
}


//buton eklemek
//butonlarada sitil vere biliriz style: ElevatedButton.styleFrom 
class Buton extends StatelessWidget {
  const Buton({super.key});
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("buton"),
          ElevatedButton(
            onPressed: () {},
            child: const Text("butonn"),
          ),
        ],
      )),
    );
  }
}

//colum çalışması yapalım
//birden fazla şey ekleye bilirsin
class ColumnCalisimasi extends StatelessWidget {
  const ColumnCalisimasi({super.key});
  Widget build(BuildContext buildContext) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 215, 170, 36),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Fatma Nur Kamis",
                style: TextStyle(
                    fontSize: 45,
                    color: Color.fromARGB(255, 233, 6, 6),
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/fatma.jpg",
                width: 540,
              ),
              Text(
                "05.11.2023",
                style: TextStyle(
                    fontSize: 45,
                    color: Color.fromARGB(255, 233, 6, 6),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "1B TOBETO",
                style: TextStyle(
                    fontSize: 45,
                    color: Color.fromARGB(255, 233, 6, 6),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}

class YaziEkleme extends StatelessWidget {
  const YaziEkleme({super.key});
  Widget build(BuildContext buildContext) {
    return Text("fatmanur "); //siyah ekranda
  }
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
