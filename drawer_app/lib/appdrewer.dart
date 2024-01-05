import 'package:drawer_app/butonsayfasi.dart';
import 'package:drawer_app/finis_sceen.dart';
import 'package:drawer_app/login.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const AppDrawer({
    Key? key,
    required this.onItemTapped,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Flutter Uygulama'),
          ),
          ListTile(
            title: Text('Sorulara Git'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Butonsayfas(
                    chooseAnswer: (String answer) {},
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Doğru Yanlış Ekranına Git'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FinishScreen(
                    userAnswers: [], // Buraya uygun veri ekleyin
                    questions: [], // Buraya uygun veri ekleyin
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Çıkış'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
