import 'package:flutter/material.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card ve List tile'),
      ),
      body: Center(
        child: ListView(//ikinci kulanımı  tek elaman değil birden fazla elamn tutuyor
          reverse: true,
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text('Selam'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Buton'),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildKullan() {
    return SingleChildScrollView(//fazla listem oldunda bunu kulanıcam expandıd gibi
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(//bunu meto çevirdik
      children: [
        Card(//kart kulanımı 
          color: Colors.blue.shade100,
          shadowColor: Colors.red,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            //leading:(chil:Icon(Incons.add))//sol tarafa 
            leading: CircleAvatar(child: Icon(Icons.add)),//circleAvatar profil fotorofı için kulanılır
            title: Text('Başlık kısmı'),
            subtitle: Text('Alt Başlık kısmı'),
            trailing: Icon(Icons.real_estate_agent),//sağ tarafa
          ),
        ),
        Divider(//iki elemean arasını bölen çizgi 
          color: Colors.red,
          thickness: 1,//kalık
          height: 10,//yukardan yükseklik
          indent: 60,//sağdan boşluk 
          endIndent: 60,//soldan
        ),
      ],
    );
  }
}
