import 'package:flutter/material.dart';
import 'package:proje/data.dart';
import 'package:proje/harcama.dart';
import 'package:proje/harcamakaydet.dart';
import 'package:proje/kategorykart.dart';
import 'package:proje/drawerHeader.dart';
import 'package:proje/liste.dart';
import 'package:proje/new_page.dart';

class KartkSm extends StatelessWidget {
  const KartkSm({Key? key}) : super(key: key);

  void _changeScreen(Categori categori, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NewPage(
                  categori: categori,
                )));
  }

  void _handleNewCard(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Harcamakaydet()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KART"),
      ),
      drawer: AppDrawer(
        onItemTapped: (index) {},
        selectedIndex: -1,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          for (final i in categorylist)
            Kategorykart(
                categori: i, onKategoryClik: () => _changeScreen(i, context)),
          Harcama(label: "Harcama", onTap: () => _handleNewCard(context)),
        ],
      ),
    );
  }
}
