import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Contenircalismasi(),
  ));
}

class Contenircalismasi extends StatelessWidget {
  Container contenir(String harf, Color color) {
    return Container(
      width: 75,
      height: 75,
      margin: EdgeInsets.only(top: 15),
      color: color,
      alignment: Alignment.center,
      child: Text(harf),
    );
  }

  Row rowolusturma() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        contenir("D", Colors.red),
        contenir("A", Colors.red.shade100),
        contenir("R", Colors.red.shade200),
        contenir("T", Colors.red.shade300),
      ],
    );
  }

  Column clomOlusturma() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(child: contenir("E", Colors.red)),
        Expanded(child: contenir("R", Colors.red.shade100)),
        Expanded(child: contenir("S", Colors.red.shade200)),
        Expanded(child: contenir("L", Colors.red.shade300)),
        Expanded(child: contenir("E", Colors.red)),
        Expanded(child: contenir("R", Colors.red.shade100)),
        Expanded(child: contenir("İ", Colors.red.shade200)),
      ],
    );
  }

  const Contenircalismasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 66, 18),
        title: Center(child: Text("Contenir oluşturma ")),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [rowolusturma(), Expanded(child: clomOlusturma())],
        ),
      ),
    );
  }
}
