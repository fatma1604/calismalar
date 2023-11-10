//buton kulanma

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SinavEkrani()));
}

class Fatma extends StatelessWidget {
  const Fatma({super.key});
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hoş geldin",
              style: TextStyle(
                  fontSize: 45,
                  color: Color.fromARGB(255, 213, 96, 43),
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/logo.png",
              width: 540,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("oyuna Başla"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 215, 243, 33),
                  foregroundColor: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

class SinavEkrani extends StatefulWidget {
  const SinavEkrani({super.key});

  State<SinavEkrani> createState() {
    return _SinavEkrani();
  }
}

class _SinavEkrani extends State<SinavEkrani> {
  String text = "heyyyy";

  void yaziyiDegistir() {
    setState(() {
      text = "yenideğer";
    });
  }

  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 45,
                    color: Color.fromARGB(255, 213, 96, 43),
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  yaziyiDegistir();
                },
                child: const Text("oyuna Başla"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 215, 243, 33),
                    foregroundColor: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
