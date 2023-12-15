//giriş ekraanı
//bi uygulamayı acalım
//burclasrın bir dastasını olusturduk
//bide sınıflarını
import 'package:burcapp/burcList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: BurcList(),
    );
  }
}
