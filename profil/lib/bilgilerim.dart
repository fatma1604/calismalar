// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:profill/degistirmesayfasi.dart';
import 'package:profill/hakimdalist.dart';
import 'package:profill/profilcart.dart';
import 'package:profill/profilkartclsas.dart';

// Hakkımdaya tıkladığında açılan sayfa

class Bildirimler extends StatefulWidget {
  const Bildirimler({
    Key? key,
  }) : super(key: key);

  @override
  _BildirimlerState createState() => _BildirimlerState();
}

class _BildirimlerState extends State<Bildirimler> {
  void _changeScreen(Hakkimda hakkimda, BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => Degistirmesayfasi()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [Icon(Icons.settings)],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: size.height * 0.8,
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 60,
                          color: Colors.blue.withOpacity(0.29),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        for (final hakkimda in hakkimdalist)
                          Profilcart(
                            onCategoryClick: () {
                              _changeScreen(hakkimda, context);
                            },
                            hakkimda: hakkimda,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
              height:
                  16), // Büyük konteynır ile altındaki konteynır arasında bir boşluk
          // Altındaki konteynır
          Container(
            height: 100,
            width: 200,
            color: Colors.green, // Örnek renk
            child: Center(
              child: Text(
                "Altındaki Konteynır",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
