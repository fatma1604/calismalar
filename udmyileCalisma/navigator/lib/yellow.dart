import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("yellow page"),backgroundColor: Colors.yellow,
    ),
    body: Center(child: Text("yellow page ",style: TextStyle(color:Colors.red),),),
    
    );
  }
}
