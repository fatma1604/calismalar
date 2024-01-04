import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Sayfabir extends StatelessWidget {
  const Sayfabir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[400],
      child: Lottie.network(
          "https://lottie.host/b21e383d-cd28-4573-a44b-1560e3cbbadd/iYoGbNiGWM.json"),
    );
  }
}
