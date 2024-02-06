import 'package:flutter/material.dart';
import 'package:profill/bilgilerim.dart';

//gidice şeylerin buttonları 

class ProfilePage extends StatelessWidget {
  Container profilListem(
      BuildContext context, String bilgi, IconData icon, Widget page) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
      ),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          leading: Icon(icon),
          title: Text(bilgi),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => page)),
        ),
      ),
    );
  }

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
          children: [
          
            profilListem(
              context,
              "BİLDİRİMLER",
              Icons.notifications,
              const Bildirimler(),
            ),
            profilListem(
              context,
              "AYARLAR",
              Icons.settings,
              const Bildirimler(),
            ),
            profilListem(
              context,
              "HAKKIMDA",
              Icons.info,
              const Bildirimler(),
            ),
          
          ],
        ),
      ),
    );
  }
}

//kalem aracı
//gif ekleme
