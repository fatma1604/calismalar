
import 'package:flutter/material.dart';
import 'package:itembuldir/liswiewkulanimi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set this to false to hide the debug banner
      home: Liswiewkulanimi()
    );
  }
}
