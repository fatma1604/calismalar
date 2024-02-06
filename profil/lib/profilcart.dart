import 'package:flutter/material.dart';
import 'package:profill/profilkartclsas.dart';

class Profilcart extends StatefulWidget {
  const Profilcart(
      {Key? key, required this.hakkimda, required this.onCategoryClick})
      : super(key: key);
  final Hakkimda hakkimda;
  final void Function() onCategoryClick;

  @override
  _ProfilcartState createState() => _ProfilcartState();
}

class _ProfilcartState extends State<Profilcart> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onCategoryClick();
      },
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        height: 100, // Örnek bir yükseklik değeri
        width: 200, // Örnek bir genişlik değeri
        margin: EdgeInsets.symmetric(vertical: 16), // Üst ve alt boşluk ekledik
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Soldan başlasın
          children: [
            Text(widget.hakkimda.name),
            SizedBox(height: 8), // İki metin arasında bir boşluk ekledik
            Text(widget.hakkimda.detail),
          ],
        ),
      ),
    );
  }
}
