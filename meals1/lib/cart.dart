import 'package:flutter/material.dart';


class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KATAGORİLERİ LİSTELŞEDİM"),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Contenir1(),
          Contenir1(),
          Contenir1(),
          Contenir1(),
        ],
      ),
    );
  }
}
