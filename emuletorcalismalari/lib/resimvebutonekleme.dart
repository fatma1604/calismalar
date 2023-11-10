
import 'package:flutter/material.dart';
//buton oluşturma ve resim ekleme 
//resim şu şekilde açılır 
//andriyotin altına ama içine değil aseets dosyası açarız-->image dosyası-->sonra kodunu yaz--> ve yml dosyasını değiştir
void main() {
  runApp(const MaterialApp(home: Fatma()));
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