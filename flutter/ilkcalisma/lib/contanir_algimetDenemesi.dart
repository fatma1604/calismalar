import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 5, 59, 66)),
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("app bar"),
        ),
        body: Container(
          //algiment kontanirin içinde
          // alignment: Alignment.bottomCenter, bu en alta ortalıyor
          //alignment: Alignment.bottomLeft, bu en alta sol
          // alignment: Alignment.bottomRight, bu sağ
          //alignment: Alignment.centerLeft,ortada sol
          //alignment: Alignment.topCenter, //tam yukardan ortalıyor

          width: 200,
          height: 300,
          color: Colors.blue,
          child: Text(
            "fatma", //* 2, //2 katı yazıyor
            //textAlign: TextAlign.center,//texti ortalıyor
            // textAlign: TextAlign.end, yukardan en sağ
            // textAlign: TextAlign.justify,yukardan en sola TAM YASLAMA
            //textAlign: TextAlign.left,// SOLA YASLIYOR,
            // textAlign: TextAlign.start,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Butona tıklandı');
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: const Color.fromARGB(255, 59, 255, 137),
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
