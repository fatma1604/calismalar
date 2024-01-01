import 'package:flutter/material.dart';

class Tasarim extends StatelessWidget {
  const Tasarim({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.deepOrange.withOpacity(1),
        Colors.deepOrange.withOpacity(1.1)
      ])),
    );
  }
}
