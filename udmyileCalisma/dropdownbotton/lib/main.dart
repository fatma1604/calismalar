import 'package:dropdownbotton/dropdow.dart';
import 'package:flutter/material.dart';

void main() {
  debugPrint('main metodu çalıştı');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build çalıştı');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buton Örnekleri'),
        ),
        body: DropDownButtonKullanimi(),
      ),
    );
  }
}
