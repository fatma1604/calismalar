import 'package:flutter/material.dart';

class CatagoryCart extends StatelessWidget {
  const CatagoryCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red.withOpacity(0.5), Colors.red.withOpacity(0.9)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Text("KATEGORYİ 1"),
    );
  }
}
