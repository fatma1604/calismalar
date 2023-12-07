import 'package:flutter/material.dart';

//conytanirdan dolayı şuan ekrana sıhmayan

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 5, 59, 66)),
      home: Scaffold(
          appBar: AppBar(
            title: Text("app bar"),
          ),
          body: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: flexibleContanir,
            ),
          )),
    );
  }

  List<Widget> get flexibleContanir {
    return [
      Flexible(
        //genişlin kaadar büyü gerekiyorsa küççül anlamını veriyor expandın gibi bütün alana yayılmıyo
        flex: 2,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.cyan,
        ),
      ),
      Flexible(
        flex: 3,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.blueAccent,
        ),
      ),
      Flexible(
        flex: 3,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.deepPurple,
        ),
      ),
    ];
  }
}

List<Widget> get expandedontanir {
  return [
    Expanded(
      //genişliğin ve yükseklin çok önemi yok sen bş buldun alanlara bunları hyerleştir
      flex: 2, //2 katı kadar kap
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    ),
    Expanded(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.cyan,
      ),
    ),
    Expanded(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blueAccent,
      ),
    ),
    Expanded(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    ),
    Expanded(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    ),
    Expanded(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blueAccent,
      ),
    ),
    Expanded(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    ),
  ];
}

List<Widget> get sorunlukontanir {
  return [
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.cyan,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.blueAccent,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.green,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.blueAccent,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.green,
    ),
  ];
} //memtod oluşturduktan sonra olan kod

Container ilkkodlar() {
  return Container(
    child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.cyan,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      ],
    ),
  );
}
