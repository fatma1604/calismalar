import 'package:dialogbox/dilog.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Show Dialog")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MyDialog(); // MyDialog'ı kullanmak
                  },
                );
              },
              child: Text("Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
