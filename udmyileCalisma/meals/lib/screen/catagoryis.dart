import 'package:flutter/material.dart';
import 'package:meals/widgets/catagory_cart.dart';

class Catagoryis extends StatelessWidget {
  const Catagoryis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KATEGORİ SEÇ"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //kutu sayısı
            crossAxisSpacing: 10, // yandaki kutunun boşluğu
            mainAxisSpacing: 10, //altaki kutuyla boşluğu
            childAspectRatio: 2),
        children: const [
          CatagoryCart(),
          CatagoryCart(),
          CatagoryCart(),
          CatagoryCart(),
        ],
      ),
    );
  }
}
