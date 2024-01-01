import 'package:flutter/material.dart';
import 'package:tobotoexpens/data/data.dart';
import 'package:tobotoexpens/widgets/homscrenn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Homscrenn(expenslist),
      ),
    );
  }
}
