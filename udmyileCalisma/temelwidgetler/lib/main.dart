import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("MAYhomepage  METODU ÇALIŞTI");
    return Scaffold(
      appBar: AppBar(
        title: Text("my conter apbbar"),
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
              "0",
              style: TextStyle(
                  color: CupertinoColors.separator,
                  fontSize: 35,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
