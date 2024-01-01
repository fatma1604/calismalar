import 'package:flutter/material.dart';

class GRNM extends StatelessWidget {
  const GRNM({super.key, required this.imUrl, required this.title});
  final String imUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.network(imUrl), Text(title)],
    );
  }
}
