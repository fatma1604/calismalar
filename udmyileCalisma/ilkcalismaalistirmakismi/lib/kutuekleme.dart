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
        body: Column(
          children: [
            // D A R T sırasıyla yukarıda
            Row(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.purpleAccent,
                  child: Center(
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black12),
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.purpleAccent,
                  child: Center(
                    child: Text(
                      "A",
                      style: TextStyle(color: Colors.black12),
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.purpleAccent,
                  child: Center(
                    child: Text(
                      "R",
                      style: TextStyle(color: Colors.black12),
                    ),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.purpleAccent,
                  child: Center(
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black12),
                    ),
                  ),
                ),
              ],
            ),

            // Boşluk ekleyebilirsiniz

            // DERSLERİ sırasıyla aşağıda
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
                Container(
                  width: 55,
                  height: 55,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "L",
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
                      "İ",
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
