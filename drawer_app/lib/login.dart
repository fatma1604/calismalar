import 'package:drawer_app/homeScreen.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/premium-vector/network-connection-background-abstract-style_23-2148875738.jpg?size=626&ext=jpg&ga=GA1.1.1546980028.1704412800&semt=ais'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Dikeyde ortalamak için
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Kullanıcı Adı",
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Şifre",
                      icon: Icon(Icons.password),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text("giriş yap"),
                    action: SnackBarAction(
                      label: "kapat",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Giriş yaptınız'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
