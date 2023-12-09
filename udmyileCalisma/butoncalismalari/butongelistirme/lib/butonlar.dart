import 'package:flutter/material.dart';

class Butons extends StatelessWidget {
  const Butons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.lime, //araka palan verngi

                onPrimary: const Color.fromARGB(255, 10, 62, 12)
                //tıklandındaki rengi
                //efek rengi
                ),
            child: Text("Elevit buton"),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.lime, //araka palan verngi

                onPrimary: const Color.fromARGB(255, 10, 62, 12)
                //tıklandındaki rengi
                //efek rengi
                ),
            child: Text("Elevit buton"),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.lime, //araka palan verngi

                onPrimary: const Color.fromARGB(255, 10, 62, 12)
                //tıklandındaki rengi
                //efek rengi
                ),
            child: Text("Elevit buton"),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.lime, //araka palan verngi

                onPrimary: const Color.fromARGB(255, 10, 62, 12)
                //tıklandındaki rengi
                //efek rengi
                ),
            child: Text("Elevit buton"),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.lime, //araka palan verngi

                onPrimary: const Color.fromARGB(255, 10, 62, 12)
                //tıklandındaki rengi
                //efek rengi
                ),
            child: Text("Elevit buton"),
          ),
        ),
      ],
    );
  }
}
