import 'package:flutter/material.dart';
import 'package:meals2/category_cart.dart';
import 'package:meals2/listenin_classi.dart';
import 'package:meals2/meals.dart';

import 'package:meals2/newpage.dart';

class Catagoryis extends StatelessWidget {
  const Catagoryis({Key? key}) : super(key: key);
  void _changeScreen(Category category, BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (ctx) => Meals(category: category)));
  }

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
        children: [
          for (final kategori in categorylist)
            CatagoryCart(
                categoryy: kategori,
                onCategoryClick: () => _changeScreen(kategori, context)),
        ],
      ),
    );
  }
}

