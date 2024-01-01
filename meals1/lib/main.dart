import 'package:flutter/material.dart';
import 'package:meals1/cart.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cart(),
    );
  }
}
