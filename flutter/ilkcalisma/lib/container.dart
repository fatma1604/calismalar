import 'package:flutter/material.dart';
//contionir kapsayan mufaza eden
//kutunun 4 bir yanindan boşluk veermeeai  margin:EdgeInsets.all(16
// margin:EdgeInsets.only(left=8,top=5)
// margin:EdgeInsets.symmtrric(vertical=dikeyekseende,horizontal=yatay eksende)
//margin:EdgeInsets.all(16),

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 5, 59, 66)),
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("app bar"),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          //width: 200,
          // height: 300,
          color: Colors.blue,
          child: Text(
            "fatma" * 2,
            textAlign: TextAlign.center,
          ),
          margin: EdgeInsets.fromLTRB(10, 11, 12, 10),
          constraints: BoxConstraints(
              minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
          padding: EdgeInsets.all(16),
        ),
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
}
