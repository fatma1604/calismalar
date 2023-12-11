import 'package:flutter/material.dart';

class StudentListView extends StatelessWidget {
  StudentListView({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
    5000,
    (index) =>
        Ogrenci(index + 1, 'Ogrenci adı ${index + 1}', 'Ogrenci soyadı ${index + 1}'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
      ),
      body: ListView.builder(
        itemCount: tumOgrenciler.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tumOgrenciler[index].toString()),
            onTap: () {
              _alertDialogIslemleri(context, tumOgrenciler[index]);
            },
          );
        },
      ),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(secilen.toString()),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('fatma' * 100),
                Text('nur ' * 100),
                Text('kamıs' * 100),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('KAPAT'),
                ),
                TextButton(
                  onPressed: () {
                    // Handle TAMAM button press
                  },
                  child: Text('TAMAM'),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    return 'Isim : $isim Soyisim:$soyisim id:$id';
  }
}
