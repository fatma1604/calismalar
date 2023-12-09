import 'package:flutter/material.dart';

class TiklandNdaGelenYazi extends StatefulWidget {
  const TiklandNdaGelenYazi({Key? key}) : super(key: key);
  State<TiklandNdaGelenYazi> createState() {
    return _TKlandNdaYazGelen();
  }
}

class _TKlandNdaYazGelen extends State<TiklandNdaGelenYazi> {
  String text = "MERHABA BU BİR BUTONDUR";

  void TiklandNdaGelenYazi() {
    setState(() {
      text = "yazıdeğişti";
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
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  TiklandNdaGelenYazi();
                },
                child: const Text("Buton geliştirme"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.purpleAccent),
              )
            ],
          ),
        ),
      ),
    );
  }
}
