import 'package:flutter/material.dart';

class Gorunum extends StatelessWidget {
  const Gorunum({Key? key, required this.id, required this.title})
      : super(key: key);
  final String title;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(title), Text(id.toString())],
    );
  }
}
