import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("green page"),backgroundColor: Colors.green,
    ),
    body: Center(child: Text("green page ",style: TextStyle(color:Colors.green),),),
    
    );
  }
}
