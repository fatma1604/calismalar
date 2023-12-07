import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(25),
          child: FlutterLogo(
            size: 125,
          ),
          decoration: BoxDecoration(
              color: Colors.pink,
              shape: BoxShape.rectangle, //bu benden bütün köşleri bekliyor
              border: Border.all(width: 10, color: Colors.blue),
              borderRadius: BorderRadius.circular(40) //tüm kenarlar
              //only de tahmin ede bilcen gibi istedin yerden bootomlef
              //toplef gibi
              //yuvarla şekli shape: BoxShape.circle

              ),
        )),
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
