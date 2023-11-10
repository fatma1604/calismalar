import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Fatma()));
}

class Fatma extends StatelessWidget {
  const Fatma({super.key});
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FK",
              style: TextStyle(
                  fontSize: 40, color: Color.fromARGB(255, 101, 18, 76)),
            ),
           Text("Hoşgeldin", style: TextStyle(
                  fontSize: 45, color: Color.fromARGB(255, 114, 197, 241)),
           ),
           Image.asset("assets/images/hayatadair.jpg")
          ],
        ),
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            Image.asset("assets/images/fk.jpg"),
            Text("Enes"),
            Text("Fatma")
          ],
        ),
      ),
    );
  }
}

class YaziyaStilverme extends StatelessWidget {
  const YaziyaStilverme({super.key});

  Widget build(BuildContext buildContext) {
    //Yazıyı ortalamak için Texti mouse ile seçtik ve daha sonra Refactor seçip Center yaptım.ctrl+sift+r
    return const Scaffold(
      body: Center(
        child: Text(
          "fatma ",
          style: TextStyle(color: Color.fromARGB(255, 183, 36, 26)),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext buildContext) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "Merhaba Fatma",
            style: TextStyle(
              color: Color.fromARGB(255, 233, 229, 4),
              backgroundColor: Color.fromARGB(255, 220, 5, 5),
            ),
          ),
        ));
  }
}

class TextiOrtalamak extends StatelessWidget {
  const TextiOrtalamak({super.key});

  Widget build(BuildContext buildContext) {
    //Yazıyı ortalamak için Texti mouse ile seçtik ve daha sonra Refactor seçip Center yaptım.ctrl+sift+r
    return const Scaffold(body: Center(child: Text("fatma ")));
  }
}

/*class ScaffoldKulanimi extends StatelessWidget {
  const ScaffoldKulanimi({super.key});

  Widget build(BuildContext buildContext) {
    return const Scaffold(body:  Text("fatma "));
  }
}*/

