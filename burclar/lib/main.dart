import 'package:burclar/route_genetor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug bandını kaldırır
      theme: ThemeData(
        primaryColor: Colors.pink, // Temel renk olarak pembe kullanır
        appBarTheme: AppBarTheme(
          backgroundColor:
              Colors.pink, // AppBar'ın arka plan rengini pembe yapar
        ),
      ),
      onGenerateRoute:
          RouteGenerator.routeGenerator, // //rota olıuşturduk 
    );
  }
}
