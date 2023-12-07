import 'package:flutter/material.dart';

class Temelbuton extends StatelessWidget {
  const Temelbuton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //texsin ,içine buton koyuyoruz
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint("Uzun basıldı");
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.amberAccent,
          ),
          child: Text("Text buton"),
        ),
        TextButton.icon(
          onPressed: () {},
          //renk değtirme
          //veya herhangi birşey
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return const Color.fromARGB(255, 92, 117, 115);
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.amber;
              }
              return null;
            }),
            //tıklandında
            // MaterialStateProperty.all(Colors.purple),
            foregroundColor: MaterialStateProperty.all(Colors.green),
            //overlayColor efek
            overlayColor: MaterialStateProperty.all(
                Colors.green.withOpacity(0.5)), //withopacity saydanmlık
          ),

          icon: Icon(Icons.add),
          label: Text("ıconlu bton teks butonu"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.lime, //araka palan verngi

              onPrimary: const Color.fromARGB(255, 10, 62, 12)
              //tıklandındaki rengi
              //efek rengi
              ),
          child: Text("Elevit buton"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Eleveytıt butonun ikomu"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("Outlined Button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            shape: StarBorder(), //sekil veriyoruz ovelik veriyoruz
            side: BorderSide(color: Colors.red, width: 2),
          ),
          label: Text("Outlined butonun ikomu"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            side: BorderSide(
                color: Colors.red,
                width: 4), //kendi kafamıza göre şekil veriyoruz
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
          ),
          label: Text("Outlined butonun ikomu"),
        ),
      ],
    );
  }
}
