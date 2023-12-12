import 'package:burcyotumlariapp/burcDetay.dart';
import 'package:burcyotumlariapp/model/burclar.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listenelenBurc;
  const BurcItem({required this.listenelenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;//tek bir yerde stayla ilemei yapaya biliyoruz
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BurcDetay(secilenBurc: listenelenBurc),
                ),
              );
            },
            leading: Image.asset(
              "images/" + listenelenBurc.kucukresim,
            ),
            title: Text(
              listenelenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listenelenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
