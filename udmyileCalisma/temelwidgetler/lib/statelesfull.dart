//ben butona tıklandında nirşeylerin değişmesini isitiyorsam bunu kulanırım

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("MAYAPP METODU ÇALIŞTI");
    return MaterialApp(
      title: 'My Conter APP',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayc = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint("MAYhomepage  METODU ÇALIŞTI");
    return Scaffold(
      appBar: AppBar(
        title: Text("my conter apbbar"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BUTONA BASILMA MİKTARI",
              style: TextStyle(color: Colors.teal, fontSize: 25),
            ),
            Text(
              _sayc.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayaciartir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciartir() {
    setState(() {
      //ilgili vicitın build metodu tekrar çalışıyor
    });
    _sayc++;
  }
}
