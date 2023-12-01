import 'package:flutter/material.dart';

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
        body: centerMethot(),
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
      ),
    ));
  }
}
