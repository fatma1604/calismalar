import 'package:flutter/material.dart';
import 'package:sorunlar/listvive_layout_problemler.dart';


void main() {
  runApp(MyApp());
  
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListviewLayoutProblemleri(),
    );
  }
}
