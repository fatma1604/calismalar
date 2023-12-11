import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isimlendirilmisrota/red_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: AnaSayfa(),
      routes: {
        '/redpage': (context) => RedPage(),
        '/': (context) => AnaSayfa(),
        '/': (context) => RedPage(),
//bu şekilde sayfları yaza bilirim
      }, //map yapısıı
      onUnknownRoute: ((settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("EROR"),
                ),
              ))),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (redContex) => RedPage()),
              );
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            child: Text("kırmızı sayfa Isos"),
          ),
          ElevatedButton(
            onPressed: () {
              //aralarında yazım frkı var
              // Navigator.push(context, route);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => RedPage()));
              //BU KOD BANAN HATA VERİCEK ÇÜNKÜ BELİ BİŞEYİN İÇİNDE DEĞİL TAMM ANLMADIM
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            child: Text("kırmızı sayfa android "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'redpage');
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            child: Text("kırmızı sayfa android "),
          ),
        ],
      ),
    );
  }
}
