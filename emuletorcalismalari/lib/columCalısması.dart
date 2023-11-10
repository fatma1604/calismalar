//colum çalışması yapalım
//birden fazla şey ekleye bilirsin
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: ColumnCalisimasi()));
}
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