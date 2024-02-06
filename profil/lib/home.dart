import 'package:flutter/material.dart';
import 'package:profill/profilpage.dart';
//burarısı profi sayfasının görünüm kısmı 

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.topCenter,
            colors: [
              Colors.deepPurpleAccent,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Positioned.fill(
                    bottom: 50,
                    child: Container(
                      height: 200,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.deepPurple,
                              Colors.deepPurpleAccent
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(250, 50),
                            bottomRight: Radius.elliptical(250, 50),
                          )),
                      alignment: Alignment.center,
                    ),
                  ),
                  Positioned.fill(
                    top: 50,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("isim"),
                    Text("dogumtarihi"),
                    Text("telefon numarası"),
                    Text("e posta"),
                  ],
                )),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(50)),
                ),
                child: ProfilePage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
