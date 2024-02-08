import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  final text;
 MyDialog({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Container(
        height: 200,
        width: 200,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 280,
                color: Colors.green,
                child: Image.asset(
                  'assets/images/heart.png',
                  // Resmi kutuya sığdırmak için BoxFit.cover kullanılır.
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text("başarılıkayıt "),
                  const Text("bla "),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      primary: Colors.blue,
                    ),
                    child: const Text("okay",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
