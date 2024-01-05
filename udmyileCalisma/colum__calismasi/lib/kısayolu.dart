import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  dartrowolustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: 55,
          height: 55,
          color: Colors.red,
          child: Text(
            "D",
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 55,
          height: 55,
          color: Colors.red,
          child: Text(
            "A",
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 55,
          height: 55,
          color: Colors.red,
          child: Text(
            "R",
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 55,
          height: 55,
          color: Colors.red,
          child: Text(
            "T",
            style: TextStyle(fontSize: 15),
          ),
        )
      ],
    );
  }

  dartconternir() {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 355, top: 15),
            width: 55,
            height: 55,
            color: Colors.red,
            child: Text(
              "E",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 355, top: 15),
            width: 55,
            height: 55,
            color: Colors.red,
            child: Text(
              "R",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 355, top: 15),
            width: 55,
            height: 55,
            color: Colors.red,
            child: Text(
              "S",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 355, top: 15),
            width: 55,
            height: 55,
            color: Colors.red,
            child: Text(
              "L",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 355, top: 15),
            width: 55,
            height: 55,
            color: Colors.red,
            child: Text(
              "E",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 355, top: 15),
            width: 55,
            height: 55,
            color: Colors.red,
            child: Text(
              "R",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 355, top: 15),
            width: 55,
            height: 55,
            color: Colors.red,
            child: Text(
              "İ",
              style: TextStyle(fontSize: 15),
            ),
          ),
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
          child: Column(children: [
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
