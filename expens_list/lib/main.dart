import 'package:expens_list/data/data.dart';
import 'package:expens_list/widgets/homescreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Homscren(expenslist),
      ),
    );
  }
}
