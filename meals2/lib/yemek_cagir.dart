import 'package:flutter/material.dart';
import 'package:meals2/listenin_classi.dart';

class CatagoryCart extends StatelessWidget {
  const CatagoryCart({
    Key? key,
    required this.yemek,
  }) : super(key: key);
  final Yemek yemek;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(yemek.baharat.baharatMarkasi.name),
    );
  }
}
