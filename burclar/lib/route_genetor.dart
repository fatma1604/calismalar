import 'package:burclar/burc_detay.dart';
import 'package:burclar/burclistesi.dart';
import 'package:burclar/model/burc_listesi.dart';
// Burc sınıfını içeri aktarıyoruz
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => BurcListesi());
      case '/burcDetay':
        final secilen =
            settings.arguments as Burc; // 'as Burc' kullanımı doğru syntax
        return MaterialPageRoute(
            builder: (context) => BurcDetay(secilenBurc: secilen));
      default:
        // Geçersiz bir yol belirtildiğinde buraya düşer
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('Geçersiz yol: ${settings.name}'),
            ),
          ),
        );
    }
  }
}
