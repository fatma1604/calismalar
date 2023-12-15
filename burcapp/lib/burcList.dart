//burc listelencek
import 'package:burcapp/burc_item.dart';
import 'package:burcapp/data/data.dart';
import 'package:burcapp/model/buc.dart';
import 'package:flutter/material.dart';

class BurcList extends StatelessWidget {
  late final List<Burc> tumBurclar;
  BurcList() {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burçlar Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listenelenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burAdi = Data.BURC_ADLARI[i];
      var burcTrarih = Data.BURC_TARIHLERI[i];
      var burcDetayi = Data.BURC_GENEL_OZELLIKLERI[i];
      //resimler kücükük harfle koc veya boga yazıldı için
      //toLowerCase kulandık resöimn adresini vermiş olduk

      var burcKucukResim = Data.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var buyukResim =
          Data.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';

      Burc eklenecekBurc =
          Burc(burAdi, burcTrarih, burcDetayi, burcKucukResim, buyukResim);
    }
    return gecici;
  }
}
