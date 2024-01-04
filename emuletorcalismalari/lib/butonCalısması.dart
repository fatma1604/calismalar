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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              child: Text("oyuna basla "),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
          ]),
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

class _Buton2 extends State<Buton2> {
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
