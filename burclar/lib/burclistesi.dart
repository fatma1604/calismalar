
import 'package:burclar/burc_item.dart';
import 'package:burclar/model/burc_listesi.dart';
import 'package:burclar/strings.dart';
import 'package:flutter/material.dart';
//burclar burda listelenecek 

class BurcListesi extends StatelessWidget {
  final List<Burc> tumburclar;

  BurcListesi() : tumburclar = veriKaynaginiHazirla();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Burç Listesi"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(
              listelenenBurc: tumburclar[index],
            );
          },
          itemCount: tumburclar.length,
        ),
      ),
    );
  }

  static List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Burc eklenecek =
          Burc(burcAdi, burcTarihi, buyukResim, kucukResim, burcDetay);
      gecici.add(eklenecek); // Burc nesnesini listeye ekle
    }
    return gecici;
  }
}