import 'package:flutter/material.dart';
import 'package:proje/kart_kismi.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _kullaniciAdiController =
      TextEditingController(); // Kullanıcı kontrolü

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Card(
                  elevation: 15, // Gölgyüksekliği
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      controller: _kullaniciAdiController,
                      decoration: InputDecoration(
                          labelText: "Kullanıcı Adı",
                          icon: Icon(Icons.account_circle_rounded)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Card(
                  elevation: 15, // Gölge yüksekliği
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Şifre",
                        icon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KartkSm()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  padding: EdgeInsets.symmetric(horizontal: 65, vertical: 15),
                ),
                child: Text("Giriş Yap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
