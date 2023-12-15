import 'package:flutter/material.dart';
import 'package:sorucalismasi/quizscreen.dart';

class Butonlar extends StatelessWidget {
  const Butonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Quizscreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
                foregroundColor: Colors.white,
              ),
              child: Text("START"),
            ),
          ],
        ),
      ),
    );
  }
}
