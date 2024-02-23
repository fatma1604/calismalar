import 'package:burclar/burc_detay.dart';
import 'package:burclar/model/burc_listesi.dart';
import 'package:flutter/material.dart';
//burcları tasarımı

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;

  const BurcItem({Key? key, required this.listelenenBurc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
            ),
          );
        },
        contentPadding: EdgeInsets.all(16),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/" + listelenenBurc.kucukresim,
            width: 72,
            height: 72,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          listelenenBurc.burcadi,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          listelenenBurc.burctarihi,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
