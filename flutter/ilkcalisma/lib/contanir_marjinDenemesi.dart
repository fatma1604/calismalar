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
          //marjin dedim şey kutular için
          constraints: BoxConstraints(
              minHeight: 100, minWidth: 100, maxHeight: 220, maxWidth: 200),
          color: Colors.blue,
          // margin: EdgeInsets.all(5), içine yazdın sayı kadar boşluk veriyor 5 bir yanından mesala
          // margin: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),başlangıçtan ,tepeden,sondan ve altan verilen boşluk
          //margin: EdgeInsets.fromLTRB(left, top, right, bottom),
          // margin: EdgeInsets.only() sadece lef gibi,lef:20
          //margin: EdgeInsets.symmetric(),dikey eksende vertable yatay eksende horizal
          //padding: EdgeInsets.all(25), texle kontanir arasında ki boşluk kodlar aynı
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
