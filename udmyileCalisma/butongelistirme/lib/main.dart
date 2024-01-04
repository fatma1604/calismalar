//import 'package:butongelistirme/butonlar.dart';
import 'package:butongelistirme/t%C4%B1kland%C4%B1nda_yaz%C4%B1gelen.dart';
import 'package:flutter/material.dart';

//ben buna butona tıklandında yeni bir yazı gelmesini saglıcam

void main() {
  debugPrint('main metodu çalıştı');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build çalıştı');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
        ),
        textTheme: TextTheme(
          headline1:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buton Örnekleri'),
        ),
        body: TiklandNdaGelenYazi(),
      ),
    );
  }
}
