import 'package:flutter/material.dart';

class Gorunum extends StatelessWidget {
  const Gorunum({Key? key, required this.imUrl, required this.prince})
      : super(key: key);
  final String imUrl;
  final String prince;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.network(imUrl), Text(prince)],
    );
  }
}
