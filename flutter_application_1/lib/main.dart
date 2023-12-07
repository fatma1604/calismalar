import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
          backgroundColor: const Color.fromARGB(255, 108, 14, 7),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Merhaba ben fatma ",
                style: TextStyle(
                    color: Color.fromARGB(255, 54, 244, 228),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset("assets/image/logo.png"),
          ],
        ),
      ),
    );
  }
}
