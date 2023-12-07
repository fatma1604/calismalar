import 'package:flutter/material.dart';

// mainAxisAlignment: MainAxisAlignment.center,orrttaalar
//MainAxisAlignment.startMainAxisAlignment.start saağ yaslar
//  MainAxisAlignment.spaceBetween, ortaddKİ  İKİSSİN ARRASSSINI AÇIYORR
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _image =
      'https://images.unsplash.com/photo-1554080353-a576cf803bda?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
          backgroundColor: Colors.red,
        ),

        body: Container(
          color: Colors.grey,
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.max, //içereeğim max
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //eelamaanların  aarrraasını aç
            crossAxisAlignment: CrossAxisAlignment.center, //y ye eekssenindde
            children: [
              Icon(Icons.cabin, size: (64), color: Colors.cyan),
              Icon(Icons.cached_outlined, size: (64), color: Colors.amber),
              Icon(Icons.access_alarm_sharp,
                  size: (64), color: Colors.deepOrangeAccent),
              Icon(Icons.ac_unit_sharp, size: (64), color: Colors.greenAccent)
            ],
          ),
        ), //içindeki  çooçukk kaddaaarr ddeeğer tututaar

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

  Widget centerMethot() {
    return Center(
        child: Container(
      padding: EdgeInsets.all(25),
      child: Text(
        "Fatma Nur Kamış",
        style: TextStyle(fontSize: 30),
      ),
      decoration: BoxDecoration(
          color: Colors.pink,
          shape: BoxShape.rectangle,
          border: Border.all(width: 4, color: Colors.blue),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          image: DecorationImage(
            image: NetworkImage(_image),
            fit: BoxFit.cover,
          ), //kutunun boyutu kadar kapsıyor

          boxShadow: [
            //gölgelendirme
            BoxShadow(
                color: Colors.green, offset: Offset(0, 20), blurRadius: 20),
            BoxShadow(
                color: Colors.yellow, offset: Offset(0, -90), blurRadius: 10),
          ]),
    ));
  }
}
