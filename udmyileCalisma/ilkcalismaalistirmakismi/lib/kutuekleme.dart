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
        ),
        body: Row(
          children: [
            Flexible(
              child: Container(
                width: 55,
                height: 55,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "D",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(5),
                width: 55,
                height: 55,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(5),
                width: 55,
                height: 55,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "R",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(5),
                width: 55,
                height: 55,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "T",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(5),
                    width: 55,
                    height: 55,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "D",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(5),
                    width: 55,
                    height: 55,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "E",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(5),
                    width: 55,
                    height: 55,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "S",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(5),
                    width: 55,
                    height: 55,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "L",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(5),
                    width: 55,
                    height: 55,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "E",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(5),
                    width: 55,
                    height: 55,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "R",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Butona tıklandı');
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: const Color.fromARGB(255, 59, 255, 137),
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
