import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container contanirolustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      width: 55,
      height: 55,
      color: renk,
      alignment: Alignment.center,
      child: Text(harf), // Align horizontally to the left
    );
  }

  Row dartrowolustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        contanirolustur("D", Colors.indigoAccent),
        contanirolustur("A", Colors.transparent),
        contanirolustur("R", Colors.red),
        contanirolustur("T", Colors.deepOrangeAccent)
      ],
    );
  }

  Column dartconternir() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: contanirolustur("E", Colors.indigoAccent, margin: 15),
        ),
        Expanded(
          child: contanirolustur("R", Colors.indigoAccent, margin: 15),
        ),
        Expanded(
          child: contanirolustur("S", Colors.indigoAccent, margin: 15),
        ),
        Expanded(
          child: contanirolustur("L", Colors.indigoAccent, margin: 15),
        ),
        Expanded(
          child: contanirolustur("E", Colors.indigoAccent, margin: 15),
        ),
        Expanded(
          child: contanirolustur("R", Colors.indigoAccent, margin: 15),
        ),
        Expanded(
          child: contanirolustur("i", Colors.indigoAccent, margin: 15),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 5, 59, 66)),
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("app bar"),
        ),
        body: Container(
          color: Colors.amber,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            dartrowolustur(),
            Expanded(child: dartconternir()),
          ]),
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
