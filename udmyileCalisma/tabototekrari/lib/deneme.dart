import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilSayfasi(),
    );
  }
}

class ProfilSayfasi extends StatefulWidget {
  @override
  _ProfilSayfasiState createState() => _ProfilSayfasiState();
}

class _ProfilSayfasiState extends State<ProfilSayfasi> {
  late File? _secilenDosya;
  _ProfilSayfasiState() {
    _secilenDosya = null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profil foto"),
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          Center(
            child: CircleAvatar(
              child: _secilenDosya != null ? null : Text("foto"),
              radius: 80,
              backgroundImage:
                  _secilenDosya != null ? FileImage(_secilenDosya!) : null,
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
        _secilenDosya = File(secilen.path);
      });
      Navigator.pop(context);
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<File>('_secilendosya', _secilenDosya));
  }
}
