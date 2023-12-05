import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
// Yükleme işlemi
// Kırpma

void main() {
  runApp(ProfilSayfasi());
}



class ProfilSayfasi extends StatefulWidget {
  @override
  _ProfilSayfasiState createState() => _ProfilSayfasiState();
}

class _ProfilSayfasiState extends State<ProfilSayfasi> {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(height: 25),
            Center(
              child: CircleAvatar(
                child: _secilendosya != null ? null : Text("foto"),
                radius: 80,
                backgroundImage:
                    _secilendosya != null ? FileImage(_secilendosya) : null,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _secilenFotoGoster(context);
              },
              child: Text("Fotoğraf Yükle"),
            ),
          ],
        ),
      ],
    );
  }

  void _secilenFotoGoster(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("Galeriden fotoğraf yükle"),
              onTap: () {
                _secimYukle(ImageSource.gallery);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Kameradan fotoğraf çek"),
              onTap: () {
                _secimYukle(ImageSource.camera);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _secimYukle(ImageSource source) async {
    final picker = ImagePicker();

    final secilen = await picker.pickImage(source: source);

    if (secilen != null) {
      setState(() {
        _secilendosya = File(secilen.path);
      });
      Navigator.pop(context);
    }
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<File>('_secilendosya', _secilendosya));
  }
}
