import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("red page"),backgroundColor: Colors.red,
    ),
    body: Center(child: Text("red page ",style: TextStyle(color:Colors.red),),),
    
    );
  }
}

