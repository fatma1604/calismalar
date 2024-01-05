import 'package:flutter/material.dart';
import 'package:miniproje/data.dart';
import 'package:miniproje/new_page.dart';

class Kategorykart extends StatelessWidget {
  const Kategorykart(
      {Key? key, required this.categori, required this.onKategoryClik})
      : super(key: key);
  final Categori categori;
  final void Function() onKategoryClik;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewPage(
                      categori: categori,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purpleAccent.withOpacity(0.5),
              Colors.pink.withOpacity(0.5),
            ],
          ),
        ),
        child: Text(categori.name),
      ),
    );
  }
}
