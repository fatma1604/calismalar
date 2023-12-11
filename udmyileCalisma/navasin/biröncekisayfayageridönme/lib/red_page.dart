import 'package:flutter/material.dart';
//sayı döndürücem anasayfaya 


class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _rastgele = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("red page"),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false, //geri dön ikonu kaldırıyo
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "red page ",
              style: TextStyle(color: Colors.red),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(_rastgele);
              },
              child: Text("ANA SAYFAYA GERİ DÖN"))
        ],
      ),
    );
  }
}
