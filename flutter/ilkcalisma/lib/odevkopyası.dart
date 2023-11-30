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
          title: Text("Fulatır Dersleri"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Row(
          children: [
            // DART sırasıyla alt alta
            Column(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "A",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "R",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),

            // Boşluk ekleyebilirsiniz

            // DERS sırasıyla yan yana
            Column(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "E",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "R",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "S",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
