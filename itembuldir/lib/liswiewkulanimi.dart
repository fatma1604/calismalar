import 'package:flutter/material.dart';
import 'package:itembuldir/model/ogrenci.dart';

class Liswiewkulanimi extends StatelessWidget {
  Liswiewkulanimi({Key? key}) : super(key: key);
  List<Ogrenci> tumOgrenciler = List.generate(
      5000,
      (index) => Ogrenci(
          id: index + 1,
          isim: "ogrenci${index + 1}",
          soyisim: "ogrencisoyad${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ögrenci listesi"),
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          var onankiOgrenci = tumOgrenciler[index];
          return Card(
            color: index % 2 == 0 ? Colors.orange : Colors.purple,
            child: ListTile(
              onTap: () {
                print("tıklandı");
              },
              title: Text(onankiOgrenci.isim),
              subtitle: Text(onankiOgrenci.soyisim),
              leading: CircleAvatar(
                child: Text(onankiOgrenci.id.toString()),
              ),
            ),
          );
        }));
  }

  ListView klasiklistviev() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogrenci) => ListTile(
                title: Text(ogrenci.isim),
                subtitle: Text(ogrenci.soyisim),
                leading: CircleAvatar(
                  child: Text(ogrenci.id.toString()),
                ),
              ))
          .toList(),
    );
  }
}
