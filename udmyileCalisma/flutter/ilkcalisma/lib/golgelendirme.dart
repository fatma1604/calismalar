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
          child: Text(
            "Fatma Nur Kamış",
            style: TextStyle(fontSize: 30),
          ),
          decoration: BoxDecoration(
              color: Colors.pink,
              shape: BoxShape.rectangle,
              border: Border.all(width: 4, color: Colors.blue),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              boxShadow: [
                //gölgelendirme
                BoxShadow(
                    color: Colors.green, offset: Offset(0, 20), blurRadius: 20),
                BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(0, -90),
                    blurRadius: 10),
                     
              ]),
              
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
