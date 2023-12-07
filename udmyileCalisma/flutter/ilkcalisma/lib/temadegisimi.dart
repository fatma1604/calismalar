//ben bir buton ekledimde direk mavi renk çıkıyor ben onun yerine kendi belirledim renk çıksın istiyorum
// tema değişimi için  theme: ThemeData(
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //aşagıdaki yaptım sadece ap barı etkiler
      theme: ThemeData(
          primaryColor: Colors
              .cyan), //accontColor:Colors.purple),//uesşile yaptım yazılmıyor
      home: Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
          backgroundColor: Colors.red,
        ),
        body: Center(child: Text("hello worf")),
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
