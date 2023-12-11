import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "RED PAGE",
          style: TextStyle(color: Colors.red),
        ),
      ),
      appBar: AppBar(
        title: Text("RED PAGE"),
      ),
    );
  }
}
