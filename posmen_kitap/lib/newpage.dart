import 'package:flutter/material.dart';
import 'package:posmen_kitap/data.dart';

class Newpage extends StatelessWidget {
  final Kitap kitap;

  const Newpage({Key? key, required this.kitap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitap Detay"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              kitap.image,
            ),
            SizedBox(height: 16),
            Text(
              "Kitap İsmi: ${kitap.kitapAdi}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Kitap YayınEvi: ${kitap.yayinEvi}",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Kitap Yazarı: ${kitap.yazar}",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Kitap Fiyatı: ${kitap.fiyat} ₺",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
